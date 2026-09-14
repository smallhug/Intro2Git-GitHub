---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">25｜`git push`：将本地成果同步到云端</h1>
</div>

<div class="grid grid-cols-2 gap-8 my-auto">

<div class="space-y-4 flex flex-col justify-center">

<h3 class="text-base font-bold text-blue-400">执行推送与建立上游追踪（Upstream）</h3>

```bash
# 首次推送新分支：建立远程与本地的绑定追踪关联
git push -u origin feature/login

# 建立追踪后，日常推送只需极简命令
git push

# 随时查看当前本地分支与远程关联地址
git remote -v
```

<div class="p-3.5 bg-white/5 border border-white/10 rounded-xl text-xs text-gray-300 leading-relaxed">
  <code>-u</code>（即 <code>--set-upstream</code>）只需在分支第一次推送时加上，后续 <code>push</code> 和 <code>pull</code> 就会自动绑定目标分支。
</div>

</div>

<div class="p-6 bg-gray-500/10 border border-gray-500/20 rounded-2xl flex flex-col justify-between space-y-4">

<h3 class="text-base font-bold text-red-400 flex items-center gap-2">
  <svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><line x1="12" y1="8" x2="12" y2="12"/><line x1="12" y1="16" x2="12.01" y2="16"/></svg>
  <span>推送失败的典型场景与应对</span>
</h3>

<div class="p-3.5 bg-red-500/10 border border-red-500/25 text-xs rounded-xl space-y-1.5">
  <div class="text-red-400 font-bold">❌ [rejected - non-fast-forward]</div>
  <div class="text-gray-300 leading-relaxed">
    <strong>根本原因</strong>：团队其他成员先于你提交了新代码，你的本地历史已经落后！<br/>
    <strong>正确解法</strong>：先 <code>git pull</code> 拉取云端变动并在本地测试验证后，再执行推送。
  </div>
</div>

<div class="p-3.5 bg-yellow-500/10 border border-yellow-500/30 text-xs rounded-xl text-yellow-200">
  ⚠️ <strong>绝对禁区</strong>：切勿在公共团队分支上滥用 <code>git push --force</code>，这会强行抹去同事已提交的历史！
</div>

</div>

</div>

---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">26｜Pull Request (PR) 是什么？</h1>
  <p class="text-xs text-gray-400 mt-1">现代分布式软件工程中保障代码质量与协同演进的核心纽带</p>
</div>

<div class="grid grid-cols-2 gap-8 my-auto">

<div class="space-y-4 flex flex-col justify-center">

<div class="p-5 bg-white/5 border border-white/10 rounded-2xl space-y-3">
  <h3 class="text-base font-bold text-emerald-400">PR 的本质与工程价值</h3>
  <ul class="space-y-2 text-xs text-gray-300 leading-relaxed">
    <li>• <strong>字面含义</strong>：“我写好了一段代码，请（Pull）拉取并合入你的主干吧！”</li>
    <li>• <strong>缓冲审查空间</strong>：避免任何人随心所欲直接向主分支注水，提供了一个集中展示代码 Diff 与讨论的控制台。</li>
    <li>• <strong>自动化流水线门禁</strong>：只有自动化测试全绿、Lint 检查合规，才允许进入人工审查环节。</li>
  </ul>
</div>

</div>

<div class="p-6 bg-gray-500/10 border border-gray-500/20 rounded-2xl flex flex-col justify-between space-y-3">

<h3 class="text-base font-bold text-blue-400 flex items-center gap-2">
  <svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/></svg>
  <span>PR 标准生命周期演进流</span>
</h3>

<div class="space-y-2 text-xs">
  <div class="p-2.5 bg-white/5 border border-white/10 rounded-xl flex items-center gap-3">
    <span class="w-6 h-6 rounded-lg bg-blue-500/20 text-blue-400 font-bold flex items-center justify-center shrink-0">1</span>
    <div><strong>推送特性分支</strong>：在独立功能分支开发完毕并推送到个人云端远程</div>
  </div>
  <div class="p-2.5 bg-white/5 border border-white/10 rounded-xl flex items-center gap-3">
    <span class="w-6 h-6 rounded-lg bg-purple-500/20 text-purple-400 font-bold flex items-center justify-center shrink-0">2</span>
    <div><strong>发起 Pull Request</strong>：向目标主分支提交合并申请，填写修改意图</div>
  </div>
  <div class="p-2.5 bg-white/5 border border-white/10 rounded-xl flex items-center gap-3">
    <span class="w-6 h-6 rounded-lg bg-amber-500/20 text-amber-400 font-bold flex items-center justify-center shrink-0">3</span>
    <div><strong>CI 自动化门禁</strong>：自动化流水线执行单测、Lint 与类型检测（必须全绿）</div>
  </div>
  <div class="p-2.5 bg-white/5 border border-white/10 rounded-xl flex items-center gap-3">
    <span class="w-6 h-6 rounded-lg bg-indigo-500/20 text-indigo-400 font-bold flex items-center justify-center shrink-0">4</span>
    <div><strong>人工 Code Review</strong>：团队同行逐行审查，提出建议后可继续追加 Commit</div>
  </div>
  <div class="p-2.5 bg-white/5 border border-white/10 rounded-xl flex items-center gap-3">
    <span class="w-6 h-6 rounded-lg bg-emerald-500/20 text-emerald-400 font-bold flex items-center justify-center shrink-0">5</span>
    <div><strong>Merge 合入主干</strong>：Maintainer 确认合规，一键合入发布基线</div>
  </div>
</div>

</div>

</div>

---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">27｜Code Review 为什么至关重要？</h1>
</div>

<div class="grid grid-cols-2 gap-8 my-auto">

<div class="space-y-4 flex flex-col justify-center">

<h3 class="text-base font-bold text-blue-400">代码审查不是“找茬”，而是工程把关</h3>

<div class="space-y-3 text-xs">
  <div class="p-3.5 bg-blue-500/10 border border-blue-500/20 rounded-xl">
    <strong class="text-blue-300">防范隐蔽故障</strong>：旁观者清，第二双眼睛能提前拦截 60% 以上的边界死锁、空指针与性能缺陷。
  </div>
  <div class="p-3.5 bg-green-500/10 border border-green-500/20 rounded-xl">
    <strong class="text-green-300">团队知识资产传承</strong>：资深开发者向新人传递业务设计规范，新人也能引入前沿语言特性。
  </div>
  <div class="p-3.5 bg-purple-500/10 border border-purple-500/20 rounded-xl">
    <strong class="text-purple-300">统一工程代码风格</strong>：确保整个系统的源码读起来像出自同一个人之手。
  </div>
</div>

</div>

<div class="p-6 bg-gray-500/10 border border-gray-500/20 rounded-2xl flex flex-col justify-between space-y-4">

<h3 class="text-base font-bold text-yellow-400">良好 Reviewer 的高效沟通礼仪</h3>

<div class="space-y-3 text-xs text-gray-300">
  <div class="p-3 bg-white/5 border border-white/10 rounded-xl space-y-1">
    <strong>善用语义标签，减轻心理压力</strong>：<br/>
    • <code>[Nit]</code>：不强求的细节微调（如命名语法建议）<br/>
    • <code>[Question]</code>：单纯好奇或咨询设计考量<br/>
    • <code>[Blocker]</code>：必须修复的严重逻辑缺陷
  </div>
  <div class="p-3 bg-white/5 border border-white/10 rounded-xl space-y-1">
    <strong>对事不对人原则</strong>：<br/>
    说“这段循环在大数据量下可能有 O(N²) 耗时隐患”，而不是“你这里的代码性能太糟糕”。
  </div>
</div>

</div>

</div>

---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">28｜Fork 与协同：开源项目的双远程协同机制</h1>
  <p class="text-xs text-gray-400 mt-1">无主仓库直接推送写权限时，如何安全规范地参与开源生态？</p>
</div>

<div class="grid grid-cols-2 gap-8 my-auto">

<div class="space-y-4 flex flex-col justify-center">

<h3 class="text-base font-bold text-blue-400">建立 Upstream 远程与本地同步</h3>

```bash
# 1. 克隆自己账号下的 Fork 仓库到本地（origin）
git clone git@github.com:yourname/awesome-project.git

# 2. 建立与官方原始主仓库（upstream）的关联
git remote add upstream git@github.com:official/awesome-project.git

# 3. 协同开发前，随时拉取官方上游最新代码保持同步
git fetch upstream
git merge upstream/main
```

<div class="p-3 bg-white/5 border border-white/10 rounded-xl text-xs text-gray-300">
  💡 <strong>最佳实践</strong>：保持个人本地的 <code>main</code> 分支干净，仅用于与 upstream 对齐，一切功能改动在独立分支进行。
</div>

</div>

<div class="p-6 bg-gray-500/10 border border-gray-500/20 rounded-2xl flex flex-col justify-between space-y-3">

<h3 class="text-base font-bold text-emerald-400">双远程模型（Origin vs Upstream）</h3>

<div class="space-y-2.5 text-xs">
  <div class="p-3 bg-blue-500/10 border border-blue-500/20 rounded-xl flex items-start gap-2.5">
    <svg class="w-4 h-4 text-blue-400 mt-0.5 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M18 20V10M12 20V4M6 20v-6"/></svg>
    <div>
      <div class="font-bold text-blue-300">1. Fork 派生个人云端仓库</div>
      <div class="text-gray-300 mt-0.5">在 GitHub 上将目标项目派生一份到自己名下，获得完全可控的云端推送权限。</div>
    </div>
  </div>

  <div class="p-3 bg-emerald-500/10 border border-emerald-500/20 rounded-xl flex items-start gap-2.5">
    <svg class="w-4 h-4 text-emerald-400 mt-0.5 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>
    <div>
      <div class="font-bold text-emerald-300">2. 本地开发与推送（Push to Origin）</div>
      <div class="text-gray-300 mt-0.5">基于最新 upstream 创建 feature 分支，改动提交后推送到自己的 origin 仓库。</div>
    </div>
  </div>

  <div class="p-3 bg-purple-500/10 border border-purple-500/20 rounded-xl flex items-start gap-2.5">
    <svg class="w-4 h-4 text-purple-400 mt-0.5 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="18" cy="18" r="3"/><circle cx="6" cy="6" r="3"/><path d="M13 6h3a2 2 0 0 1 2 2v7"/><line x1="6" y1="9" x2="6" y2="21"/></svg>
    <div>
      <div class="font-bold text-purple-300">3. 跨仓库发起 PR（PR to Upstream）</div>
      <div class="text-gray-300 mt-0.5">在 GitHub 页面点击“Contribute / Open PR”，将 origin 的改动请求合入 upstream。</div>
    </div>
  </div>
</div>

</div>

</div>

---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">29｜Issue 与 Discussion：开源社区的三驾马车</h1>
  <p class="text-xs text-gray-400 mt-1">明确职责边界，合理分流缺陷报告、方案交流与代码提案</p>
</div>

<div class="grid grid-cols-3 gap-5 my-auto">

<div class="p-5 bg-red-500/10 border border-red-500/20 rounded-2xl flex flex-col justify-between space-y-3">
  <div>
    <div class="flex items-center gap-2 text-red-400 font-bold text-base mb-2">
      <svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><line x1="12" y1="8" x2="12" y2="12"/><line x1="12" y1="16" x2="12.01" y2="16"/></svg>
      <span>Issue (缺陷与工单)</span>
    </div>
    <ul class="text-xs text-gray-300 space-y-2 leading-relaxed">
      <li>• <strong>定位</strong>：明确的 Bug 故障、可落地的功能特性提案。</li>
      <li>• <strong>原则</strong>：遵循仓库模板，提供<strong>最小复现环境 (Repro)</strong> 与完整报错堆栈。</li>
      <li>• <strong>闭环</strong>：与 PR 联动，在提交信息中写入 <code>Closes #123</code> 自动关闭。</li>
    </ul>
  </div>
  <div class="text-[11px] text-red-300/80 bg-red-500/10 p-2 rounded-lg">
    ❌ 勿将用法答疑、泛泛的咨询发在 Issue。
  </div>
</div>

<div class="p-5 bg-purple-500/10 border border-purple-500/20 rounded-2xl flex flex-col justify-between space-y-3">
  <div>
    <div class="flex items-center gap-2 text-purple-400 font-bold text-base mb-2">
      <svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/></svg>
      <span>Discussion (讨论区)</span>
    </div>
    <ul class="text-xs text-gray-300 space-y-2 leading-relaxed">
      <li>• <strong>定位</strong>：架构 RFC 征集、日常答疑 (Q&A)、设计想法探讨。</li>
      <li>• <strong>优势</strong>：支持标记“最佳解答 (Accepted Answer)”，形成社区沉淀。</li>
      <li>• <strong>流转</strong>：在讨论形成明确实施共识后，再转为正式 Issue。</li>
    </ul>
  </div>
  <div class="text-[11px] text-purple-300/80 bg-purple-500/10 p-2 rounded-lg">
    💡 提问前善用搜索，通常你的困惑已被解答。
  </div>
</div>

<div class="p-5 bg-emerald-500/10 border border-emerald-500/20 rounded-2xl flex flex-col justify-between space-y-3">
  <div>
    <div class="flex items-center gap-2 text-emerald-400 font-bold text-base mb-2">
      <svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="18" cy="18" r="3"/><circle cx="6" cy="6" r="3"/><path d="M13 6h3a2 2 0 0 1 2 2v7"/><line x1="6" y1="9" x2="6" y2="21"/></svg>
      <span>Pull Request (PR)</span>
    </div>
    <ul class="text-xs text-gray-300 space-y-2 leading-relaxed">
      <li>• <strong>定位</strong>：已经完成且经过验证的具象化代码或文档补丁。</li>
      <li>• <strong>原则</strong>：一个 PR 专注一件具体的事（避免上千行大杂烩）。</li>
      <li>• <strong>门禁</strong>：跑通所有 CI 单测，等待 Maintainer 评审合入。</li>
    </ul>
  </div>
  <div class="text-[11px] text-emerald-300/80 bg-emerald-500/10 p-2 rounded-lg">
    ✨ 开源协同的最终落脚点与价值兑现。
  </div>
</div>

</div>

<div class="p-2.5 bg-white/5 border border-white/10 rounded-xl text-xs text-gray-400 text-center">
  💡 协作黄金三部曲：<strong>在 Discussion 达成共识 → 在 Issue 明确范围 → 提交 PR 实现合入</strong>
</div>

---
layout: default
class: flex flex-col h-full
---

<div class="pt-2 mb-2">
  <h1 class="!border-none !mb-0 text-3xl font-bold">30｜实战演练：开源贡献的黄金生命周期</h1>
  <p class="text-xs text-gray-400 mt-1">从发现问题到代码被世界级开源项目采纳合并的全流程</p>
</div>

<div class="grid grid-cols-2 gap-8 my-auto">

<div class="p-5 bg-white/5 border border-white/10 rounded-2xl flex flex-col justify-between space-y-3">

<h3 class="text-base font-bold text-blue-400 flex items-center gap-2">
  <svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/></svg>
  <span>开源协同 6 步演进路径</span>
</h3>

<div class="space-y-1.5 text-xs">
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-blue-500/20 text-blue-400 font-bold flex items-center justify-center shrink-0 text-[11px]">1</span>
    <div><strong>Fork & Clone</strong>：派生个人云端库并克隆至本地</div>
  </div>
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-emerald-500/20 text-emerald-400 font-bold flex items-center justify-center shrink-0 text-[11px]">2</span>
    <div><strong>绑定 Upstream</strong>：添加官方仓库源，随时拉取同步</div>
  </div>
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-purple-500/20 text-purple-400 font-bold flex items-center justify-center shrink-0 text-[11px]">3</span>
    <div><strong>检出特性分支</strong>：严禁在 main 直接编码，开辟独立分支</div>
  </div>
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-amber-500/20 text-amber-400 font-bold flex items-center justify-center shrink-0 text-[11px]">4</span>
    <div><strong>测试与原子提交</strong>：确保本地单测通过，符合规范提交</div>
  </div>
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-rose-500/20 text-rose-400 font-bold flex items-center justify-center shrink-0 text-[11px]">5</span>
    <div><strong>推送并提交 PR</strong>：推至 origin，向 upstream 提 PR</div>
  </div>
  <div class="p-2 bg-white/5 border border-white/10 rounded-lg flex items-center gap-2.5">
    <span class="w-5 h-5 rounded bg-cyan-500/20 text-cyan-400 font-bold flex items-center justify-center shrink-0 text-[11px]">6</span>
    <div><strong>响应 Review 合入</strong>：积极与 Maintainer 沟通，最终 Merge</div>
  </div>
</div>

</div>

<div class="p-6 bg-gray-500/10 border border-gray-500/20 rounded-2xl flex flex-col justify-between space-y-4">

<h3 class="text-base font-bold text-emerald-400 flex items-center gap-2">
  <svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="20 6 9 17 4 12"/></svg>
  <span>贡献者出征前的检查清单 (Checklist)</span>
</h3>

<div class="space-y-3 text-xs text-gray-300">
  <div class="p-3 bg-white/5 border border-white/10 rounded-xl space-y-1">
    <strong class="text-white">✅ 阅读 CONTRIBUTING.md</strong>：<br/>
    每个成熟开源项目都有自己特定的代码格式化脚本与分支命名指南。
  </div>
  <div class="p-3 bg-white/5 border border-white/10 rounded-xl space-y-1">
    <strong class="text-white">✅ 双生态本地测试全绿</strong>：<br/>
    前端运行 <code>pnpm test</code> / <code>npm run lint</code>；Python 运行 <code>pytest</code> / <code>ruff check</code>。
  </div>
  <div class="p-3 bg-white/5 border border-white/10 rounded-xl space-y-1">
    <strong class="text-white">✅ 保持谦逊与沟通耐心</strong>：<br/>
    Maintainer 都是志愿维护者，遇到修改意见及时迭代，不气馁，共同让项目更棒！
  </div>
</div>

</div>

</div>

