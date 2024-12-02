@echo off
setlocal

rem Create folders if they don't exist
if not exist "backend" mkdir backend
if not exist "frontend" mkdir frontend
if not exist "public" mkdir public
if not exist "scripts" mkdir scripts
if not exist "shared" mkdir shared
if not exist "medusa-admin" mkdir "medusa-admin"
if not exist "my-medusa-store" mkdir "my-medusa-store"

rem Move configuration files to the root
move /Y *.md .\
move /Y package.json .\
move /Y package-lock.json .\
move /Y .env .\
move /Y .env.template .\
move /Y .gitignore .\
move /Y .prettierrc .\
move /Y .eslintrc.js .\
move /Y next.config.js .\
move /Y tailwind.config.js .\
move /Y tsconfig.json .\
move /Y postcss.config.js .\

rem Move backend-related files
move /Y check-env-variables.js backend\
move /Y *.js backend\
move /Y *.ts backend\

rem Move frontend-related files
move /Y *.jsx frontend\
move /Y *.tsx frontend\
move /Y *.css frontend\
move /Y *.scss frontend\

rem Move public assets
move /Y *.png public\
move /Y *.jpg public\
move /Y *.gif public\
move /Y *.svg public\
move /Y *.webp public\

rem Move scripts
move /Y *.bat scripts\
move /Y *.sh scripts\
move /Y *.txt scripts\

rem Move shared files
move /Y shared\* shared\

echo Files have been organized.
endlocal