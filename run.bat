@Rem update README.md
E:\pycharm\UpFile\dist\downemail.exe

@Rem update to github
w:
cd E:\Arxiv_Github
git add .

@Rem get messages
@echo update message
@choice /c:dn /M daily,new
@if errorlevel 2 goto get
@if errorlevel 1 goto default

:get
@set /p msg=commit_message:
@goto update

:default
@set msg=daily update
@goto update

:update
git commit -m "%msg%"
git push
pause