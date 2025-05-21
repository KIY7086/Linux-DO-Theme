if (-not (Test-Path -Path "dist")) {
    New-Item -Path "dist" -ItemType Directory
}
$cssFiles = Get-ChildItem -Path "src" -Filter "*.css" -Recurse
Get-Content -Path ($cssFiles | Select-Object -ExpandProperty FullName) | 
    Out-File -FilePath "temp.css" -Encoding utf8
postcss "temp.css" --use postcss-import autoprefixer cssnano --no-map --output "dist/standard.css"

Write-Host "CSS build completed. All files are minified and placed in the dist directory"
