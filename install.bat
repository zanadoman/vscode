@echo off
if exist "%USERPROFILE%\.vscode" rmdir /s /q "%USERPROFILE%\.vscode"
if exist "%USERPROFILE%\.vscode-shared" rmdir /s /q "%USERPROFILE%\.vscode-shared"
if exist "%APPDATA%\Code" rmdir /s /q "%APPDATA%\Code"
for /f %%i in (vscode-extension.txt) do call code --install-extension %%i
copy settings.json "%APPDATA%\Code\User"
copy keybindings.json "%APPDATA%\Code\User"
