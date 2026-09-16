# Git & GitHub 入门分享 —— 从获取开源项目到规范化代码管理

<p align="center">
  <img src="https://img.shields.io/badge/Presentation-Slidev-10b981?style=flat-square&logo=slidev" alt="Slidev" />
  <img src="https://img.shields.io/badge/Framework-Vue%203-4fc08d?style=flat-square&logo=vue.js" alt="Vue 3" />
  <img src="https://img.shields.io/badge/Style-Tailwind%20%2B%20CSS-38bdf8?style=flat-square&logo=tailwindcss" alt="CSS" />
  <img src="https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square" alt="License" />
</p>

一套现代化、交互式、高颜值的 **Git & GitHub 全流程实战分享课件**，基于 [Slidev](https://sli.dev/) 构建。

从真实工程痛点出发，帮助开发者建立坚实的 Git 心智模型，掌握开源生态探索、常用命令实战、分支策略与冲突处理、GitHub 团队协同工作流以及企业级安全规范。

---

## 📖 目录概览

本课件按模块化设计，共划分为 **6 大核心板块**：

| 模块 | 主题 | 核心内容 |
| :--- | :--- | :--- |
| **Part 01** | **概念认知与痛点反思** | 版本控制痛点、Git 分布式本质、Git 与 GitHub 的关系、心智模型初探 |
| **Part 02** | **开源项目探索与克隆** | 识别优质开源库、开源许可证（License）避坑、Git Clone 与前端/Python 环境跑通 |
| **Part 03** | **本地核心命令闭环** | 四区架构透视（工作区/暂存区/版本库/远程库）、`git status/add/commit/log/diff`、Conventional Commits 规范 |
| **Part 04** | **分支隔离与冲突解决** | 主分支保护原则、现代化 `git switch/branch` 指令、冲突成因图解与三步化解法 |
| **Part 05** | **团队协同与开源贡献** | 远程跟踪分支、Pull Request (PR) 完整生命周期、高情商 Code Review、Fork 协同模型 |
| **Part 06** | **工程规范与安全红线** | 双生态 `.gitignore` 模板、敏感凭证与 API Key 防泄露红线、全场景高频命令速查表 |

---

## 🚀 快速开始

### 1. 环境准备

确保已安装 [Node.js](https://nodejs.org/) (建议版本 `>= 18.0.0`)。推荐使用 `pnpm`、`npm` 或 `bun` 作为包管理器。

### 2. 安装依赖

```bash
# 使用 pnpm（推荐）
pnpm install

# 或使用 npm
npm install

# 或使用 bun
bun install
```

### 3. 启动本地开发服务

```bash
pnpm dev
# 或
npm run dev
```

运行成功后，浏览器将自动打开幻灯片预览页面：[http://localhost:3000](http://localhost:3000)。

### 4. 导出课件

可以将幻灯片导出为 PDF 或单页图片集：

```bash
# 需全局或本地安装 Playwright
pnpm export
# 或
npx slidev export
```

### 5. 本地轻量静态服务器（可选）

项目内置了 PowerShell 静态服务脚本 `sever.ps1`，用于本地演示或预览已编译的 `dist` 目录：

```powershell
powershell -ExecutionPolicy Bypass -File .\sever.ps1
```

---

## 🎯 演讲者模式与常用快捷键

在 Slidev 幻灯片页面中，支持以下快捷键提升演讲效率：

| 快捷键 | 功能说明 |
| :--- | :--- |
| <kbd>→</kbd> / <kbd>Space</kbd> | 下一步 / 下一页 |
| <kbd>←</kbd> | 上一步 / 上一页 |
| <kbd>P</kbd> | 进入 **演讲者模式 (Presenter Mode)**，查看双屏备注、计时器与下一页预览 |
| <kbd>O</kbd> | 打开 **总览视窗 (Overview)**，快速跳页 |
| <kbd>F</kbd> | 切换全屏模式 |
| <kbd>D</kbd> | 切换深色 / 浅色模式 (Dark/Light mode) |
| <kbd>C</kbd> | 打开画笔 / 涂鸦工具栏 (Blackboard) |

---

## 📁 目录结构

```text
.
├── slides.md               # 课件主入口与封面配置
├── pages/                  # 分章节幻灯片模块
│   ├── 01-introduction.md        # Part 01: 概念认知与痛点反思
│   ├── 02-open-source.md          # Part 02: 开源项目探索与克隆
│   ├── 03-git-basics.md           # Part 03: 本地核心命令闭环
│   ├── 04-branch-conflict.md      # Part 04: 分支隔离与冲突解决
│   ├── 05-github-collaboration.md # Part 05: 团队协同与开源贡献
│   └── 06-best-practices.md       # Part 06: 工程规范与安全红线
├── components/             # Vue 交互式组件
│   ├── GitTeamGraph.vue          # 可视化 Git 分支演进与协作拓扑图
│   ├── PhaseTerraLogo.vue        # 品牌 Logo 矢量组件
│   └── Counter.vue               # 示例交互计数器组件
├── public/                 # 静态资源与图片素材
├── snippets/               # 代码片段
├── style.css               # 全局样式与自定义排版优化
├── sever.ps1               # 本地 PowerShell HTTP 静态测试服务器
├── vercel.json             # Vercel 一键部署路由配置
├── netlify.toml            # Netlify 部署配置
└── package.json            # 依赖与脚本配置
```

---

## 🛠️ 构建与部署

### 构建静态资源

```bash
pnpm build
# 或
npm run build
```

构建产物将输出在 `dist/` 目录下，为纯静态 HTML/JS/CSS，可直接部署在任意 Web 服务器或对象存储上。

### 一键部署

- **Vercel**：已配置 [vercel.json](./vercel.json)，关联 GitHub 仓库后可实现提交自动触发构建部署。
- **Netlify**：已配置 [netlify.toml](./netlify.toml)，构建命令为 `npm run build`，发布目录为 `dist`。
- **GitHub Pages**：可通过 GitHub Actions 配置自动构建并将 `dist` 目录推送到 `gh-pages` 分支。

---

## 💡 特色亮点

1. **模块化与心智模型优先**：避开传统孤立讲解参数的枯燥方式，先建立四区、购物车暂存、分支指针等图形化心智模型。
2. **前后端双生态覆盖**：针对 Node.js / 前端及 Python 项目均给出具体的项目初始化、依赖安装、`.gitignore` 配置实操指南。
3. **安全红线与工程落地**：重点强调敏感文件、API Key、`.env` 泄露防范及 Conventional Commits 语义化规范。
4. **交互式组件赋能**：内置 `<GitTeamGraph />` 等 Vue 组件，动态直观展示分支与多人合并拓扑。

---

## 📄 License

本项目采用 [MIT License](https://opensource.org/licenses/MIT) 开源协议。
