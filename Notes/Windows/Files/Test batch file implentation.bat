@echo off

goto :dirPrompt
goto :warningPrompt
goto :functionPrompt
goto :continuePrompt

:dirPrompt
SET /P progDiR=What directory is Complexity located in ?: 
SET /P projDir=What directory is your project assets in ?: 

:warningPrompt
echo ----------------------------------------------------
echo Open http://127.0.0.1:9090/ in your internet browser
echo The files will be placed in %projDir%\www
echo You will be asked to delete the foler if it already exists
echo ----------------------------------------------------
pause

:functionPrompt
explorer /select,%projDir%\www\index.html
%progDir%\complexity.exe %projDir%

:continuePrompt
echo 1) Run Complexity again (same directories)
echo 2) Run Complexity again (new directories)
echo 3) Quit
SET /P continue=>>
pause 


