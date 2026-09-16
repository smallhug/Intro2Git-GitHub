---
theme: seriph
title: Git & GitHub 入门分享 —— 从获取开源项目到规范化代码管理
info: |
  ## Git & GitHub 入门实战指南
  从获取开源项目到规范化代码管理与多人协同。
layout: cover
background: '#ffffff'
class: text-center text-gray-900
drawings:
  persist: false
transition: slide-left
mdc: true
duration: 60min
---

<div class="absolute inset-0 bg-white -z-10"></div>

<!-- 左上角品牌长条 Logo -->
<div class="abs-tl m-6 z-20">
  <PhaseTerraLogo class="h-[64px] w-auto" />
</div>

<div class="flex flex-col items-center justify-center relative z-10">

<!-- 主标题 -->
<h1 class="text-6xl font-black tracking-tight text-gray-900 mb-6 !border-none !text-gray-900">
  Git & GitHub 入门分享
</h1>

<!-- 副标题 -->
<p class="text-3xl font-light max-w-2xl text-gray-600">
  从获取开源项目到规范化代码管理
</p>

</div>

<!-- 右下角 GitHub SVG 矢量图标 -->
<div class="abs-br m-6 text-xl flex gap-3 items-center z-10">
  <a href="https://github.com" target="_blank" class="no-underline-link text-gray-400 hover:text-gray-900 transition">
    <svg class="w-6 h-6 fill-current" viewBox="0 0 24 24">
      <path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0024 12c0-6.63-5.37-12-12-12z"/>
    </svg>
  </a>
</div>


<style>
.slidev-layout.cover {
  background-color: #ffffff !important;
}
</style>

<!--
演讲者注：
欢迎大家！本次分享面向有一定编程经验，希望建立系统化 Git 心智模型与现代 GitHub 协作规范的研发伙伴。
全篇分为 6 大板块，层层递进：从开源感知，到内部模型，再到实战协作与安全底线。
-->

---
transition: fade-out
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 !text-gray-900 text-3xl font-bold">目录导航</h1>
</div>

<div class="grid grid-cols-3 gap-6 my-auto text-left">

<!-- 01 -->
<div class="p-5 bg-blue-50/70 border border-blue-200/80 rounded-2xl space-y-2 shadow-xs hover:border-blue-300 transition">
  <div class="text-xs font-mono text-blue-700 font-extrabold tracking-wider">PART 01</div>
  <div class="text-base font-bold !text-gray-900 flex items-center gap-2">
    <svg class="w-4 h-4 text-blue-600" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 2a7 7 0 0 1 7 7c0 2.38-1.19 4.47-3 5.74V17a2 2 0 0 1-2 2H10a2 2 0 0 1-2-2v-2.26C6.19 13.47 5 11.38 5 9a7 7 0 0 1 7-7z"/><path d="M9 21h6"/></svg>
    <span>概念认知与痛点反思</span>
  </div>
  <p class="text-xs !text-gray-600 leading-relaxed">
    告别代码覆盖与丢失的噩梦，理清 Git 底层工具与 GitHub 云端平台的本质差异。
  </p>
</div>

<!-- 02 -->
<div class="p-5 bg-emerald-50/70 border border-emerald-200/80 rounded-2xl space-y-2 shadow-xs hover:border-emerald-300 transition">
  <div class="text-xs font-mono text-emerald-700 font-extrabold tracking-wider">PART 02</div>
  <div class="text-base font-bold !text-gray-900 flex items-center gap-2">
    <svg class="w-4 h-4 text-emerald-600" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polygon points="16.24 7.76 14.12 14.12 7.76 16.24 9.88 9.88 16.24 7.76"/></svg>
    <span>开源项目探索与克隆</span>
  </div>
  <p class="text-xs !text-gray-600 leading-relaxed">
    四区架构初步、鉴别高分开源项目、避开 License 法律陷阱，前端与 Python 双生态跑通。
  </p>
</div>

<!-- 03 -->
<div class="p-5 bg-purple-50/70 border border-purple-200/80 rounded-2xl space-y-2 shadow-xs hover:border-purple-300 transition">
  <div class="text-xs font-mono text-purple-700 font-extrabold tracking-wider">PART 03</div>
  <div class="text-base font-bold !text-gray-900 flex items-center gap-2">
    <svg class="w-4 h-4 text-purple-600" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="4 17 10 11 4 5"/><line x1="12" y1="19" x2="20" y2="19"/></svg>
    <span>本地核心命令闭环</span>
  </div>
  <p class="text-xs !text-gray-600 leading-relaxed">
    透视 git status 状态、暂存区购物车心智模型、原子化提交与 Conventional Commits 规范。
  </p>
</div>

<!-- 04 -->
<div class="p-5 bg-amber-50/70 border border-amber-200/80 rounded-2xl space-y-2 shadow-xs hover:border-amber-300 transition">
  <div class="text-xs font-mono text-amber-700 font-extrabold tracking-wider">PART 04</div>
  <div class="text-base font-bold !text-gray-900 flex items-center gap-2">
    <svg class="w-4 h-4 text-amber-600" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="6" y1="3" x2="6" y2="15"/><circle cx="18" cy="6" r="3"/><circle cx="6" cy="18" r="3"/><path d="M18 9a9 9 0 0 1-9 9"/></svg>
    <span>分支隔离与冲突解决</span>
  </div>
  <p class="text-xs !text-gray-600 leading-relaxed">
    主分支保护心智、现代 git switch 分支指令、多人协作拓扑图解与解决冲突三步法。
  </p>
</div>

<!-- 05 -->
<div class="p-5 bg-rose-50/70 border border-rose-200/80 rounded-2xl space-y-2 shadow-xs hover:border-rose-300 transition">
  <div class="text-xs font-mono text-rose-700 font-extrabold tracking-wider">PART 05</div>
  <div class="text-base font-bold !text-gray-900 flex items-center gap-2">
    <svg class="w-4 h-4 text-rose-600" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg>
    <span>团队协同与开源贡献</span>
  </div>
  <p class="text-xs !text-gray-600 leading-relaxed">
    上游推送追踪、Pull Request (PR) 完整生命周期、高情商 Code Review 与跨库 Fork。
  </p>
</div>

<!-- 06 -->
<div class="p-5 bg-indigo-50/70 border border-indigo-200/80 rounded-2xl space-y-2 shadow-xs hover:border-indigo-300 transition">
  <div class="text-xs font-mono text-indigo-700 font-extrabold tracking-wider">PART 06</div>
  <div class="text-base font-bold !text-gray-900 flex items-center gap-2">
    <svg class="w-4 h-4 text-indigo-600" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/></svg>
    <span>工程规范与安全红线</span>
  </div>
  <p class="text-xs !text-gray-600 leading-relaxed">
    前端与 Python 双 .gitignore 模版、密钥防泄露红线、全场景命令速查与终篇闭环。
  </p>
</div>

</div>

---
src: ./pages/01-introduction.md
---

---
src: ./pages/02-open-source.md
---

---
src: ./pages/03-git-basics.md
---

---
src: ./pages/04-branch-conflict.md
---

---
src: ./pages/05-github-collaboration.md
---

---
src: ./pages/06-best-practices.md
---
