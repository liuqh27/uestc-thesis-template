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