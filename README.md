Thesis template  使用说明与环境信息
=================================

概述
----
本目录 `thesis_template/` 包含一个可复用的电子科技大学（UESTC）学位论文 LaTeX 模板示例，基于 XeLaTeX + Biber 构建。

已知的本机环境（检测于最近一次提交时）
- XeTeX / TeX Live: XeTeX 3.141592653-2.6-0.999997 (TeX Live 2025)
- Biber: 2.21
- VS Code: 1.107.1

推荐的编辑器与插件（VS Code）
- LaTeX Workshop (james-yu)
- GitLens  Git supercharged

构建步骤（Windows / PowerShell）
1. 安装 TeX Live（确保包含 `xelatex` 与 `biber`）。
2. 在本仓库根目录运行以下命令（或使用项目中的 VS Code 任务）：

```powershell
if (-not (Test-Path build)) { New-Item -ItemType Directory build | Out-Null }
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build main.tex
biber --input-directory=build main
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build main.tex
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build main.tex
```

常见问题与注意事项
- 使用 `minted` 时需启用 `-shell-escape` 并安装 `pygments`（Python 包）。
- 如果遇到 `! Unable to load picture or PDF file`，请检查图片路径与文件是否存在。
- 遇到 `Missing $ inserted.` 等错误，通常是源文件中含有 Markdown 围栏（```）或未转义的特殊字符（如 `_`）。

目录说明
- `main.tex`：主文档入口（示例封面、摘要、章节包含、参考文献）。
- `chapters/`：示例章节（写作规范、引用、图表、TikZ、拆分说明等）。
- `ref.bib`：示例参考文献条目。


如何贡献
- 如果你要提交更改，请在本地创建分支、完成编辑并发起 Pull Request 到本仓库的 `main` 分支。

联系方式
- 有问题请在 Issues 中提出，或在本仓库中直接留言.
