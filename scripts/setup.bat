@echo off

:: 設定目錄
set BASE_DIR=%~dp0..
set BACKEND_DIR=%BASE_DIR%\backend
set FRONTEND_DIR=%BASE_DIR%\frontend

:: 整理項目結構
echo 正在整理項目結構...
mkdir %BASE_DIR%\backend
mkdir %BASE_DIR%\frontend
mkdir %BASE_DIR%\shared

:: 移動 Lucky-Canvas 文件
echo 整合 Lucky-Canvas...
move /y %BASE_DIR%\lucky-canvas\packages\server %BACKEND_DIR%\src\api\game
move /y %BASE_DIR%\lucky-canvas\packages\frontend %FRONTEND_DIR%\src\components\LuckyWheel
move /y %BASE_DIR%\lucky-canvas %BASE_DIR%\shared\lucky-canvas

:: 安裝依賴
echo 安裝後端依賴...
cd %BACKEND_DIR%
npm install

echo 安裝前端依賴...
cd %FRONTEND_DIR%
yarn install

:: 數據庫初始化
echo 初始化數據庫...
npm run migrations:run --prefix %BACKEND_DIR%

:: 提示完成
echo 整合完成！請運行 start-all.bat 啟動項目。
pause
