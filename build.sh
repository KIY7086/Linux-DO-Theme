#!/bin/bash

# 设置脚本在任何命令失败时立即退出
set -e

# 1. 确保 dist 目录存在
# PowerShell: if (-not (Test-Path -Path "dist")) { New-Item -Path "dist" -ItemType Directory }
echo "Ensuring 'dist' directory exists..."
mkdir -p dist

# 2. 查找所有 .css 文件并将它们的内容合并到一个临时文件中
# PowerShell: $cssFiles = Get-ChildItem ...; Get-Content ... | Out-File ...
echo "Concatenating CSS files..."
find src -name "*.css" -exec cat {} + > temp.css

# 3. 运行 postcss 命令来处理、压缩和添加前缀
# PowerShell: postcss "temp.css" --use ...
echo "Running PostCSS..."
postcss temp.css --use postcss-import autoprefixer cssnano --no-map --output dist/standard.css

# 4. 清理临时文件
echo "Cleaning up temporary files..."
rm temp.css

# 5. 打印完成信息
# PowerShell: Write-Host "..."
echo "CSS build completed. All files are minified and placed in the dist directory"