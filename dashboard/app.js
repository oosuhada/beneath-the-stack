const $ = (selector) => document.querySelector(selector);

const fmt = (value, digits = 3) => Number(value).toFixed(digits);
const metric = (value, label) => `<div class="metric"><strong>${value}</strong><span>${label}</span></div>`;

function compareRows(target, values, formatter = (value) => `${fmt(value)} ms`, goodIndex = -1) {
  const max = Math.max(...values.map((item) => item.value), Number.EPSILON);
  target.innerHTML = values
    .map((item, index) => {
      const width = Math.max(1.5, (item.value / max) * 100);
      const cls = index === goodIndex ? "fill good" : "fill";
      return `<div class="compare-row">
        <label>${item.label}</label>
        <div class="track"><div class="${cls}" style="width:${width}%"></div></div>
        <output>${formatter(item.value)}</output>
      </div>`;
    })
    .join("");
}

function renderHash(lab) {
  $("#hash-metrics").innerHTML = [
    metric(lab.items.toLocaleString(), "items"),
    metric(fmt(lab.chaining.load_factor, 2), "chaining load"),
    metric(lab.chaining.max_chain, "max chain"),
    metric(lab.open_addressing.longest_cluster, "probe cluster"),
    metric(`${fmt(lab.chaining.lookup.p50_ms)} ms`, "chain lookup p50"),
    metric(`${fmt(lab.open_addressing.lookup.p50_ms)} ms`, "probe lookup p50"),
  ].join("");

  const histogram = lab.chaining.bucket_histogram;
  const max = Math.max(...histogram, 1);
  $("#hash-bars").innerHTML = histogram
    .map((count, chainLength) => `<div class="bar-column">
      <div class="bar" title="${count} buckets" style="height:${Math.max(1, (count / max) * 100)}%"></div>
      <label>${chainLength}</label>
    </div>`)
    .join("");
}

function renderHeap(lab) {
  const ratio = lab.linear_min.p50_ms / lab.heap.p50_ms;
  $("#heap-metrics").innerHTML = [
    metric(lab.tasks.toLocaleString(), "benchmark tasks"),
    metric(`${fmt(lab.heap.p50_ms)} ms`, "heap p50"),
    metric(`${fmt(lab.linear_min.p50_ms)} ms`, "linear min p50"),
    metric(`${fmt(ratio, 1)}×`, "p50 ratio"),
  ].join("");
  $("#heap-trace").innerHTML = lab.scheduler_trace
    .map((task, index) => `<div class="task"><b>${String(index + 1).padStart(2, "0")} · T${task.id}</b><span>d=${task.deadline} · run=${task.duration}</span></div>`)
    .join("");
}

function renderGraph(lab) {
  const demo = lab.demo;
  const blocked = new Set(demo.blocked);
  const path = new Set(demo.bfs_path);
  const maze = $("#maze");
  maze.style.gridTemplateColumns = `repeat(${demo.width}, 1fr)`;
  maze.innerHTML = Array.from({ length: demo.width * demo.height }, (_, id) => {
    const classes = ["cell"];
    if (blocked.has(id)) classes.push("wall");
    if (path.has(id)) classes.push("path");
    return `<div class="${classes.join(" ")}" title="node ${id}"></div>`;
  }).join("");

  $("#graph-metrics").innerHTML = [
    metric(`${fmt(lab.bfs.p50_ms)} ms`, "BFS p50"),
    metric(`${fmt(lab.dfs.p50_ms)} ms`, "DFS p50"),
    metric(lab.frontier_memory.bfs_peak_nodes, "BFS peak frontier"),
    metric(lab.frontier_memory.dfs_peak_nodes, "DFS peak frontier"),
    metric(demo.bfs_path.length - 1, "shortest path edges"),
    metric(demo.bfs_order.length, "reachable nodes"),
  ].join("");
}

function renderRace(lab) {
  const expected = lab.expected;
  $("#race-metrics").innerHTML = [
    metric(expected.toLocaleString(), "expected"),
    metric(lab.split_load_store.observed.toLocaleString(), "split observed"),
    metric(lab.mutex.observed.toLocaleString(), "mutex observed"),
    metric(lab.atomic.observed.toLocaleString(), "atomic observed"),
  ].join("");
  compareRows(
    $("#race-bars"),
    [
      { label: "split", value: lab.split_load_store.benchmark.p50_ms },
      { label: "mutex", value: lab.mutex.benchmark.p50_ms },
      { label: "atomic", value: lab.atomic.benchmark.p50_ms },
    ],
  );
}

function renderHttp(lab) {
  const ratio = lab.new_connection.p50_ms / lab.keep_alive.p50_ms;
  $("#http-metrics").innerHTML = [
    metric(lab.requests_per_run, "requests / run"),
    metric(lab.concurrent_clients, "concurrent clients"),
    metric(`${fmt(ratio, 1)}×`, "new / keep-alive p50"),
  ].join("");
  compareRows(
    $("#http-bars"),
    [
      { label: "new TCP", value: lab.new_connection.p50_ms },
      { label: "keep-alive", value: lab.keep_alive.p50_ms },
      { label: "concurrent", value: lab.concurrent_keep_alive.p50_ms },
    ],
    (value) => `${fmt(value)} ms`,
    1,
  );
}

function renderDb(lab) {
  const ratio = lab.sequential_scan.p50_ms / lab.bplus_tree.p50_ms;
  $("#db-metrics").innerHTML = [
    metric(lab.rows.toLocaleString(), "rows"),
    metric(lab.tree_height, "tree height"),
    metric(lab.leaf_count, "leaf nodes"),
    metric(`${fmt(ratio, 1)}×`, "scan / index p50"),
  ].join("");
  compareRows(
    $("#db-bars"),
    [
      { label: "index build", value: lab.index_build.p50_ms },
      { label: "seq scan", value: lab.sequential_scan.p50_ms },
      { label: "B+ lookup", value: lab.bplus_tree.p50_ms },
    ],
    (value) => `${fmt(value)} ms`,
    2,
  );
}

async function boot() {
  try {
    const response = await fetch("data/latest.json", { cache: "no-store" });
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    const payload = await response.json();
    const labs = Object.fromEntries(payload.labs.map((lab) => [lab.lab, lab]));
    renderHash(labs["hash-table"]);
    renderHeap(labs["heap-scheduler"]);
    renderRace(labs["concurrency-race"]);
    renderGraph(labs["graph-traversal"]);
    renderHttp(labs["raw-http"]);
    renderDb(labs["db-index"]);

    const environment = payload.environment;
    $("#run-meta").innerHTML = `<span class="status-dot"></span>${environment.model} · ${payload.profile} · ${new Date(payload.captured_at_utc).toLocaleString()}`;
    $("#labs").hidden = false;
  } catch (error) {
    const message = [
      "No benchmark evidence is available for the observer.",
      "",
      "Run:",
      "python3 tools/run_labs.py --profile standard --dashboard-data",
      "python3 -m http.server 8080 -d dashboard",
      "",
      `detail: ${error.message}`,
    ].join("\n");
    $("#error").textContent = message;
    $("#error").hidden = false;
    $("#run-meta").innerHTML = `<span class="status-dot"></span>no evidence`;
  }
}

boot();

