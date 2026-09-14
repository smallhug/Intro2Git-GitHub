---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">01｜为什么要学习 Git & GitHub</h1>
</div>

<div class="grid grid-cols-2 gap-8 my-auto">

<div class="space-y-5">

<h3 class="flex items-center gap-2 text-xl font-bold">
  <svg class="w-5 h-5 text-blue-400 inline shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><line x1="12" y1="16" x2="12" y2="12"/><line x1="12" y1="8" x2="12.01" y2="8"/></svg>
  <span>现代开发者的必备内功</span>
</h3>

<ul class="space-y-4 text-sm leading-relaxed">
  <li class="flex items-start gap-3">
    <div class="p-1.5 rounded-lg bg-blue-500/15 text-blue-400 mt-0.5 shrink-0">
      <svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><line x1="2" y1="12" x2="22" y2="12"/><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/></svg>
    </div>
    <span><strong>开源浪潮主阵地</strong>：全球绝大多数顶级开源库（Vue、React、FastAPI、PyTorch）均托管在 GitHub。</span>
  </li>
  <li class="flex items-start gap-3">
    <div class="p-1.5 rounded-lg bg-green-500/15 text-green-400 mt-0.5 shrink-0">
      <svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg>
    </div>
    <span><strong>团队协同生命线</strong>：告别传统传文件与打压缩包，多人并行开发而不互相践踏破坏代码。</span>
  </li>
  <li class="flex items-start gap-3">
    <div class="p-1.5 rounded-lg bg-purple-500/15 text-purple-400 mt-0.5 shrink-0">
      <svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
    </div>
    <span><strong>生产安全避风港</strong>：细粒度记录每次修改、随时追溯作者、秒级回滚致命故障。</span>
  </li>
</ul>

</div>

<div class="p-6 bg-blue-500/10 border border-blue-500/20 rounded-2xl flex flex-col justify-between shadow-xs">

<div>
  <h3 class="flex items-center gap-2 text-xl font-bold mb-4">
    <svg class="w-5 h-5 text-blue-400 inline shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><circle cx="12" cy="12" r="6"/><circle cx="12" cy="12" r="2"/></svg>
    <span>本次分享核心目标</span>
  </h3>

  <div class="space-y-3.5 text-sm">
    <div class="p-3 bg-white/5 rounded-xl border border-white/10">
      <strong>1. 会用（Use）</strong>：熟练掌握开源项目的拉取、本地配置运行与追更。
    </div>
    <div class="p-3 bg-white/5 rounded-xl border border-white/10">
      <strong>2. 会管（Manage）</strong>：建立严谨的分支流与清晰规范的提交历史。
    </div>
    <div class="p-3 bg-white/5 rounded-xl border border-white/10">
      <strong>3. 会协（Collaborate）</strong>：通过 PR 与 Code Review 参与团队与开源协作。
    </div>
  </div>
</div>

<div class="mt-5 text-xs opacity-75 flex items-center gap-2 pt-3 border-t border-blue-500/20">
  <svg class="w-4 h-4 text-blue-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="9 18 15 12 9 6"/></svg>
  <span>哪怕只有一人写代码，版本控制也是最值得投资的工程职业习惯。</span>
</div>

</div>

</div>

---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">02｜没有版本控制会发生什么？</h1>
</div>

<div class="grid grid-cols-2 gap-8 my-auto">

<div class="space-y-4">

<h3 class="text-lg font-bold !text-gray-900">典型痛点：失控的文件地狱</h3>

<ul class="space-y-2 text-xs">
  <li class="flex items-center gap-2.5 p-2 bg-yellow-500/10 border border-yellow-500/20 rounded-lg">
    <svg class="w-4 h-4 text-yellow-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"/></svg>
    <span class="font-mono text-gray-800 font-medium">project_v1.0.zip</span>
  </li>
  <li class="flex items-center gap-2.5 p-2 bg-yellow-500/10 border border-yellow-500/20 rounded-lg">
    <svg class="w-4 h-4 text-yellow-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"/></svg>
    <span class="font-mono text-gray-800 font-medium">project_v1.1_final.zip</span>
  </li>
  <li class="flex items-center gap-2.5 p-2 bg-yellow-500/10 border border-yellow-500/20 rounded-lg">
    <svg class="w-4 h-4 text-yellow-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"/></svg>
    <span class="font-mono text-gray-800 font-medium">project_v1.1_final_改完睡觉.zip</span>
  </li>
  <li class="flex items-center gap-2.5 p-2 bg-yellow-500/10 border border-yellow-500/20 rounded-lg">
    <svg class="w-4 h-4 text-yellow-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"/></svg>
    <span class="font-mono text-gray-800 font-medium">project_v1.1_final_打死不改_真的.zip</span>
  </li>
</ul>

<div class="space-y-2 text-xs pt-2">
  <div class="flex items-center gap-2 text-gray-700">
    <svg class="w-3.5 h-3.5 text-red-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
    <span><strong>盲人摸象</strong>：完全不知道上周改了哪几行，修改动机无法追溯。</span>
  </div>
  <div class="flex items-center gap-2 text-gray-700">
    <svg class="w-3.5 h-3.5 text-red-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
    <span><strong>互相伤害</strong>：两个人同时修改同一模块，文件直接相互覆盖。</span>
  </div>
  <div class="flex items-center gap-2 text-gray-700">
    <svg class="w-3.5 h-3.5 text-red-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/></svg>
    <span><strong>进退两难</strong>：想试验激进想法，不敢动手改动现有稳定可用的代码。</span>
  </div>
</div>

</div>

<div class="space-y-4 flex flex-col justify-between">

<div class="p-6 bg-red-500/10 border border-red-500/25 rounded-2xl space-y-3 font-mono text-xs">
  <div class="text-red-500 font-bold flex items-center gap-2 text-sm">
    <svg class="w-5 h-5 text-red-500" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
    <span>重大生产事故还原报告：</span>
  </div>
  <div class="space-y-2 leading-relaxed text-gray-800 py-1">
    <div>• 14:00 同事 A 发布了崭新的登录鉴权接口。</div>
    <div>• 14:30 同事 B 上传本地代码，无意覆盖了接口定义。</div>
    <div>• 14:35 线上服务全线崩溃，白屏无法访问。</div>
    <div class="text-red-600 font-bold pt-1">• 故障排查耗时 4 小时，而实际恢复只需还原 3 行代码。</div>
  </div>
</div>

<div class="p-4 bg-gray-500/10 border border-gray-500/20 rounded-xl text-xs text-gray-300 leading-relaxed">
  <strong>核心问题剖析</strong>：纯文件备份缺乏<strong>微观原子版本快照</strong>与<strong>多人并发冲突协商机制</strong>，无法应对真实工程规模。
</div>

</div>

</div>

---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">03｜Git 到底是什么？</h1>
  <p class="text-xs text-gray-400 mt-1">目前世界上最先进且被最广泛采用的分布式版本控制系统（DVCS）</p>
</div>

<div class="grid grid-cols-3 gap-6 my-auto">

<div class="p-6 bg-blue-500/10 border border-blue-500/25 rounded-2xl flex flex-col justify-between space-y-4">
  <div>
    <div class="w-10 h-10 rounded-xl bg-blue-500/20 text-blue-400 flex items-center justify-center mb-4">
      <svg class="w-6 h-6" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg>
    </div>
    <div class="text-lg font-bold text-blue-400 mb-2">分布式完整架构</div>
    <p class="text-xs leading-relaxed text-gray-300 opacity-90">
      每台开发机都是一个完整的版本库。无需联网即可在本地随时提交、查看完整历史、自由切换分支，高铁或断网下依然高效无阻。
    </p>
  </div>
  <div class="text-xs font-mono text-blue-300 bg-blue-500/10 p-2 rounded-lg text-center">
    脱离中心服务器仍可正常工作
  </div>
</div>

<div class="p-6 bg-emerald-500/10 border border-emerald-500/25 rounded-2xl flex flex-col justify-between space-y-4">
  <div>
    <div class="w-10 h-10 rounded-xl bg-emerald-500/20 text-emerald-400 flex items-center justify-center mb-4">
      <svg class="w-6 h-6" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
    </div>
    <div class="text-lg font-bold text-emerald-400 mb-2">全量快照流机制</div>
    <p class="text-xs leading-relaxed text-gray-300 opacity-90">
      传统版本工具（如 SVN）只记录文件的差异集补丁；而 Git 将每次提交都视为工程在特定时刻的<strong>完整快照（Snapshot）</strong>，切换与回滚速度极快。
    </p>
  </div>
  <div class="text-xs font-mono text-emerald-700 bg-emerald-500/10 p-2 rounded-lg text-center">
    秒级时光倒流与历史比对
  </div>
</div>

<div class="p-6 bg-purple-500/10 border border-purple-500/25 rounded-2xl flex flex-col justify-between space-y-4">
  <div>
    <div class="w-10 h-10 rounded-xl bg-purple-500/20 text-purple-400 flex items-center justify-center mb-4">
      <svg class="w-6 h-6" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/></svg>
    </div>
    <div class="text-lg font-bold text-purple-400 mb-2">密码级数据完整性</div>
    <p class="text-xs leading-relaxed text-gray-300 opacity-90">
      所有文件对象和版本节点均通过 <strong>SHA-1 哈希算法</strong> 生成 40 位唯一指纹，任何文件的非预期损坏或恶意历史篡改都能被系统瞬间侦测。
    </p>
  </div>
  <div class="text-xs font-mono text-purple-300 bg-purple-500/10 p-2 rounded-lg text-center">
    内容寻址数据库保证不可篡改
  </div>
</div>

</div>

---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">04｜GitHub 又是什么？</h1>
  <p class="text-xs text-gray-400 mt-1">基于 Git 的全球最大开源代码托管与开发者社交协作平台</p>
</div>

<div class="grid grid-cols-2 gap-8 my-auto">

<div class="space-y-4">

<h3 class="flex items-center gap-2 text-lg font-bold">
  <svg class="w-5 h-5 text-blue-400" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"/></svg>
  <span class="!text-gray-900">核心功能与研发支撑</span>
</h3>

<div class="space-y-2.5 text-xs">
  <div class="p-3 bg-white/5 border border-white/10 rounded-xl">
    <strong class="text-blue-400">云端中心存储</strong>：提供稳定安全的远程 Git 仓库（Repositories）托管与灾备。
  </div>
  <div class="p-3 bg-white/5 border border-white/10 rounded-xl space-y-1">
    <strong class="text-green-400">现代团队协同闭环</strong>：
    <div class="text-gray-300 pl-2 space-y-0.5 mt-1">
      <div>• <strong>Issue</strong>：任务排期、需求梳理、缺陷 Bug 报送。</div>
      <div>• <strong>Pull Request (PR)</strong>：代码审查、分支合入与差异对比。</div>
      <div>• <strong>Code Review</strong>：面向代码行级的评审交流与打分通过。</div>
    </div>
  </div>
  <div class="p-3 bg-white/5 border border-white/10 rounded-xl">
    <strong class="text-purple-400">自动化流水线 (Actions)</strong>：提交代码自动触发编译、单测、Lint 检查与上云部署。
  </div>
</div>

</div>

<div class="p-6 bg-gray-500/10 border border-gray-500/20 rounded-2xl flex flex-col justify-between space-y-3">

<h3 class="flex items-center gap-2 text-base font-bold">
  <svg class="w-4 h-4 text-emerald-400" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><line x1="2" y1="12" x2="22" y2="12"/><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/></svg>
  <span class="!text-gray-900">开源世界的交互枢纽</span>
</h3>

<div class="space-y-2 text-xs">
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-blue-500/20 text-blue-500 font-bold flex items-center justify-center shrink-0 text-[11px]">1</span>
    <div><strong>开源作者发布</strong>：将核心代码与协议规范托管至云端</div>
  </div>
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-amber-500/20 text-amber-500 font-bold flex items-center justify-center shrink-0 text-[11px]">2</span>
    <div><strong>全球开发者检索</strong>：发现高价值项目，阅读文档并点亮 Star</div>
  </div>
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-purple-500/20 text-purple-500 font-bold flex items-center justify-center shrink-0 text-[11px]">3</span>
    <div><strong>协同贡献反馈</strong>：通过 Issue 报送缺陷，通过 PR 提交补丁</div>
  </div>
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-emerald-500/20 text-emerald-500 font-bold flex items-center justify-center shrink-0 text-[11px]">4</span>
    <div><strong>审查合入闭环</strong>：同行审查 (Review) 并合入主干，共建生态</div>
  </div>
</div>

<div class="p-3 bg-blue-500/10 border border-blue-500/20 text-xs text-blue-400 rounded-xl leading-relaxed">
  在这里不仅能托管私有业务系统，更能直接站在全球上亿顶级开源项目的肩膀上前行。
</div>

</div>

</div>

---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">05｜Git ≠ GitHub：本质辨析</h1>
</div>

<div class="grid grid-cols-2 gap-8 my-auto">

<div class="space-y-3 flex flex-col justify-center">

<h3 class="flex items-center gap-2 text-base font-bold text-purple-400 mb-1">
  <svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M18 20V10"/><path d="M12 20V4"/><path d="M6 20v-6"/></svg>
  <span>核心维度对照表</span>
</h3>

<table class="w-full text-xs border-collapse">
  <thead>
    <tr class="border-b border-gray-200 text-gray-500 font-semibold">
      <th class="py-2.5 text-left">维度</th>
      <th class="py-2.5 text-left text-blue-500">Git</th>
      <th class="py-2.5 text-left text-green-600">GitHub</th>
    </tr>
  </thead>
  <tbody class="divide-y divide-gray-200 text-gray-700">
    <tr>
      <td class="py-2.5 font-bold text-gray-900">本质属性</td>
      <td class="py-2.5">底层命令行软件 / 工具</td>
      <td class="py-2.5">云端协作网站平台 / 服务</td>
    </tr>
    <tr>
      <td class="py-2.5 font-bold text-gray-900">运行位置</td>
      <td class="py-2.5">个人电脑本地（可离线）</td>
      <td class="py-2.5">远程云端服务器（须联网）</td>
    </tr>
    <tr>
      <td class="py-2.5 font-bold text-gray-900">同类替代</td>
      <td class="py-2.5">SVN, Mercurial</td>
      <td class="py-2.5">GitLab, Gitee, Bitbucket</td>
    </tr>
    <tr>
      <td class="py-2.5 font-bold text-gray-900">核心价值</td>
      <td class="py-2.5">版本记录、分支、合并</td>
      <td class="py-2.5">团队协作、代码审查、备份</td>
    </tr>
  </tbody>
</table>

</div>

<div class="p-6 bg-gray-500/10 border border-gray-500/20 rounded-2xl flex flex-col justify-between space-y-4">

<h3 class="flex items-center gap-2 text-base font-bold">
  <svg class="w-4 h-4 text-blue-400" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
  <span class="!text-gray-900">生动的系统类比</span>
</h3>

<div class="space-y-2.5 text-xs">
  <div class="p-3 bg-blue-500/10 border border-blue-500/20 rounded-xl space-y-1">
    <div class="font-bold text-blue-600 flex items-center gap-1.5">
      <span>本地引擎：Git</span>
    </div>
    <div class="text-gray-700 leading-relaxed">相当于汽车的<strong>“核心发动机与底盘”</strong>。离线单机即可全速运转，掌管底层所有原子版本快照与分支切换。</div>
  </div>

  <div class="p-3 bg-purple-500/10 border border-purple-500/20 rounded-xl space-y-1">
    <div class="font-bold text-purple-600 flex items-center gap-1.5">
      <span>远程网络：GitHub / GitLab / Gitee</span>
    </div>
    <div class="text-gray-700 leading-relaxed">相当于<strong>“全国高速公路网与大型车库”</strong>。提供团队云端托管、跨部门协同合流、Code Review 审查与持续集成。</div>
  </div>
</div>

<div class="p-3.5 bg-yellow-500/10 border border-yellow-500/30 text-xs rounded-xl text-yellow-800 leading-relaxed">
  <strong>认知铁律</strong>：你可以<strong>只用 Git 而完全不用 GitHub</strong>（例如在涉密离线内网）；但 GitHub 的所有代码管理必须依赖底层的 Git。
</div>

</div>

</div>
