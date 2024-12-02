@echo off

set BASE_DIR=%~dp0..
set BACKEND_DIR=%BASE_DIR%\backend
set FRONTEND_DIR=%BASE_DIR%\frontend

echo 啟動後端服務...
start cmd /k "cd %BACKEND_DIR% && npm run start"

echo 啟動前端服務...
start cmd /k "cd %FRONTEND_DIR% && yarn dev"

echo 項目啟動成功！
echo 前端: http://localhost:3000
echo 後端: http://localhost:9000
pause
