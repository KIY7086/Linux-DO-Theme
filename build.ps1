if (-not (Test-Path -Path "dist")) {
    New-Item -Path "dist" -ItemType Directory
}
$cssFiles = Get-ChildItem -Path "src" -Filter "*.css" -Recurse
Get-Content -Path ($cssFiles | Select-Object -ExpandProperty FullName) | 
    Out-File -FilePath "temp.css" -Encoding utf8
postcss "temp.css" --use postcss-import autoprefixer cssnano --output "dist/standard.css"
$noFontFiles = $cssFiles | Where-Object { $_.Name -ne "font.css" }
Get-Content -Path ($noFontFiles | Select-Object -ExpandProperty FullName) | 
    Out-File -FilePath "temp.css" -Encoding utf8
postcss "temp.css" --use postcss-import autoprefixer cssnano --output "dist/nofont.css"
Remove-Item -Path "temp.css"
Write-Host "CSS build completed. All files are minified and placed in the dist directory:"
Write-Host "- standard.css (all CSS files from src directory)"
Write-Host "- nofont.css (excludes font.css)"