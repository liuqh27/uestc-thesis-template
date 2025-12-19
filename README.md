Thesis template — 使用说明与环境信息
=================================

概述
----
这是一个基于 UESTC 模板的 LaTeX 论文工程（XeLaTeX + Biber）。

已知的本机环境（在编辑此 README 时检测到）：
- XeTeX / TeX Live: XeTeX 3.141592653-2.6-0.999997 (TeX Live 2025)
- Biber: 2.21
- VS Code: 1.107.1 (已安装)

推荐的编辑器插件（VS Code）
- LaTeX Workshop (james-yu)
- GitLens — Git supercharged
- Bracket Pair Colorizer (可选)

构建步骤（在 Windows / PowerShell）
1. 确保安装 TeX Live（含 xelatex/biber）。
2. 在项目根目录运行（与 VS Code 任务相同的序列）：

```powershell
if (-not (Test-Path build)) { New-Item -ItemType Directory build | Out-Null }
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build main.tex
biber --input-directory=build main
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build main.tex
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build main.tex
```

注意事项与常见问题
- 如果使用 `minted` 宏包，请在命令中加入 `-shell-escape` 并确保已安装 `pygments`（Python 包）。
- 遇到 `! Unable to load picture or PDF file` 错误时，检查图片路径是否正确并确保图片存在。
- 遇到 `Missing $ inserted.` 等语法错误，通常是源文件中有 Markdown 围栏（```）或未转义字符（如 `_`），请检查对应章节文件。

后续扩展建议
- 添加 `chapters/chap6_code.tex`，已包含 `listings` 示例；如需 `minted`、`booktabs`、`algorithm2e` 具体示例，我可以继续添加。

如果要我现在：
- 更新 README（已完成）并提交变更；或
- 继续扩展更多示例（如 `minted` 示例、复杂 TikZ 模板、表格美化、代码提交/CI 指南）。

