<template>
  <div class="w-full flex justify-center py-1">
    <svg viewBox="0 0 920 170" class="w-full h-auto select-none git-team-graph" xmlns="http://www.w3.org/2000/svg">
      <defs>
        <filter id="badge-shadow" x="-10%" y="-10%" width="120%" height="120%">
          <feDropShadow dx="0" dy="1" stdDeviation="1" flood-opacity="0.08" />
        </filter>
      </defs>

      <!-- 1. 背景浅灰虚线参考轨道 -->
      <line x1="105" y1="45" x2="895" y2="45" stroke="#e2e8f0" stroke-width="2" stroke-dasharray="4 4" />
      <line x1="105" y1="95" x2="895" y2="95" stroke="#e2e8f0" stroke-width="2" stroke-dasharray="4 4" />
      <line x1="105" y1="145" x2="895" y2="145" stroke="#e2e8f0" stroke-width="2" stroke-dasharray="4 4" />

      <!-- 2. 分支名徽章 -->
      <!-- main 分支 -->
      <g filter="url(#badge-shadow)">
        <rect x="12" y="33" width="78" height="24" rx="6" fill="#2563eb" />
        <text x="51" y="49" fill="#ffffff" class="badge-text" text-anchor="middle">main</text>
      </g>

      <!-- feature-login 分支 -->
      <g filter="url(#badge-shadow)">
        <rect x="12" y="83" width="84" height="24" rx="6" fill="#d97706" />
        <text x="54" y="99" fill="#ffffff" class="badge-text" text-anchor="middle">feature-login</text>
      </g>

      <!-- hotfix-crash 分支 -->
      <g filter="url(#badge-shadow)">
        <rect x="12" y="133" width="84" height="24" rx="6" fill="#16a34a" />
        <text x="54" y="149" fill="#ffffff" class="badge-text" text-anchor="middle">hotfix-crash</text>
      </g>

      <!-- 3. 分支线路绘制 (Lines & Bezier Curves) -->
      <!-- main 主干线 (从起点延伸到终点) -->
      <path d="M 105 45 L 880 45" fill="none" stroke="#2563eb" stroke-width="3.5" stroke-linecap="round" />

      <!-- feature-login 分叉 (from node 1 to node 2) -->
      <path d="M 130 45 C 160 45, 185 95, 215 95 L 755 95" fill="none" stroke="#d97706" stroke-width="3.5" stroke-linecap="round" />

      <!-- hotfix-crash 分叉 (from main to node 4) -->
      <path d="M 335 45 C 370 45, 395 145, 430 145 L 455 145" fill="none" stroke="#16a34a" stroke-width="3.5" stroke-linecap="round" />

      <!-- hotfix-crash 合并回 main (from node 4 to node 5) -->
      <path d="M 455 145 C 490 145, 515 45, 545 45" fill="none" stroke="#16a34a" stroke-width="3.5" stroke-linecap="round" />

      <!-- main 同步至 feature-login (from node 5 to node 6) -->
      <path d="M 545 45 C 575 45, 605 95, 640 95" fill="none" stroke="#2563eb" stroke-width="3" stroke-linecap="round" stroke-dasharray="5 3" />

      <!-- feature-login 合并回 main (from node 7 to node 8) -->
      <path d="M 755 95 C 790 95, 815 45, 850 45" fill="none" stroke="#d97706" stroke-width="3.5" stroke-linecap="round" />

      <!-- 4. 节点圆点与水平备注绘制 -->

      <!-- Node 1: v1.0-release (main) -->
      <circle cx="130" cy="45" r="5" fill="#2563eb" stroke="#ffffff" stroke-width="2.5" />
      <text x="130" y="27" class="commit-label" text-anchor="middle">v1.0-release</text>

      <!-- Node 2: feat: login UI (feature) -->
      <circle cx="230" cy="95" r="5" fill="#d97706" stroke="#ffffff" stroke-width="2.5" />
      <text x="230" y="117" class="commit-label" text-anchor="middle">feat: login UI</text>

      <!-- Node 3: feat: login api (feature) -->
      <circle cx="335" cy="95" r="5" fill="#d97706" stroke="#ffffff" stroke-width="2.5" />
      <text x="335" y="117" class="commit-label" text-anchor="middle">feat: login api</text>

      <!-- Node 4: fix: null pointer (hotfix) -->
      <circle cx="440" cy="145" r="5" fill="#16a34a" stroke="#ffffff" stroke-width="2.5" />
      <text x="440" y="165" class="commit-label" text-anchor="middle">fix: null pointer</text>

      <!-- Node 5: Merge hotfix (main) -->
      <circle cx="545" cy="45" r="5" fill="#2563eb" stroke="#ffffff" stroke-width="2.5" />
      <text x="545" y="67" class="commit-label" text-anchor="middle">Merge hotfix</text>
      <!-- Tag: v1.0.1 -->
      <g filter="url(#badge-shadow)">
        <rect x="522" y="12" width="46" height="17" rx="4" fill="#eff6ff" stroke="#93c5fd" stroke-width="1" />
        <text x="545" y="24" class="tag-text" fill="#1d4ed8" text-anchor="middle">• v1.0.1</text>
      </g>

      <!-- Node 6: sync main (feature) -->
      <circle cx="645" cy="95" r="5" fill="#d97706" stroke="#ffffff" stroke-width="2.5" />
      <text x="645" y="117" class="commit-label" text-anchor="middle">sync main</text>

      <!-- Node 7: test: auth e2e (feature) -->
      <circle cx="745" cy="95" r="5" fill="#d97706" stroke="#ffffff" stroke-width="2.5" />
      <text x="745" y="117" class="commit-label" text-anchor="middle">test: auth e2e</text>

      <!-- Node 8: Merge feature (main) -->
      <circle cx="850" cy="45" r="5" fill="#2563eb" stroke="#ffffff" stroke-width="2.5" />
      <text x="850" y="67" class="commit-label" text-anchor="middle">Merge feature</text>
      <!-- Tag: v1.1.0 -->
      <g filter="url(#badge-shadow)">
        <rect x="827" y="12" width="46" height="17" rx="4" fill="#eff6ff" stroke="#93c5fd" stroke-width="1" />
        <text x="850" y="24" class="tag-text" fill="#1d4ed8" text-anchor="middle">• v1.1.0</text>
      </g>
    </svg>
  </div>
</template>

<style scoped>
.git-team-graph text {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif !important;
  user-select: none;
}
.git-team-graph .badge-text {
  font-size: 11px !important;
  font-weight: 700 !important;
  fill: #ffffff !important;
  dominant-baseline: central;
}
.git-team-graph .tag-text {
  font-size: 9.5px !important;
  font-weight: 700 !important;
  fill: #1d4ed8 !important;
  dominant-baseline: central;
}
.git-team-graph .commit-label {
  font-size: 10.5px !important;
  font-weight: 600 !important;
  fill: #334155 !important;
  dominant-baseline: central;
}
</style>
