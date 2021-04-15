@echo off
Title Create a new web project
echo [1mDate: %DATE%[0m
echo.
cd /d %~dp0
echo What's the name of your project? [4m(DO NOT USE SPACES)[0m
echo.
echo It will create a folder where the batch file is currently located: %CD%
echo.
set /p var1=
echo.
md %var1%
echo Folder "%var1%" has been created
cd /d %~dp0\%var1%
md assets

  echo ^<!DOCTYPE html^> > index.html
  echo ^<html lang="en"^> >>index.html
  echo ^<head^> >>index.html
  echo     ^<meta charset="UTF-8"^> >>index.html
  echo     ^<meta http-equiv="X-UA-Compatible" content="IE=edge"^> >>index.html
  echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >>index.html
  echo	   ^<link rel="stylesheet" type="text/css" href="styles.css"^> >>index.html
  echo     ^<title^>^</title^> >>index.html
  echo ^</head^> >>index.html
  echo ^<body^> >>index.html
  echo ^</body^> >>index.html
  echo ^</html^> >>index.html

type nul > styles.css
type nul > main.js

echo index.html has been created
echo styles.css has been created
echo main.js has been created
echo assets folder has been created
echo.
echo [92mProject successfully created![0m 
echo.
pause>nul|set/p =Press any key to open the project

%SystemRoot%\explorer.exe "%CD%"