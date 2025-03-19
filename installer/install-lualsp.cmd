@echo off

setlocal
set VERSION=0.2.29
REM 这个luahelper插件是直接从官方市场下载的,但是CURL直接下载的文件不太对，这里找个地方托管，更换一下下载链接
curl -L -o "lualsp.vsix" "https://raw.githubusercontent.com/xidiandaily/vim/refs/heads/v9.0/ExtTool/luahelper/yinfei.luahelper-%VERSION%.vsix"

call "%~dp0\run_unzip.cmd" lualsp.vsix
del lualsp.vsix

echo @echo off ^

%%~dp0\extension\server\lualsp.exe %%* ^

> lualsp.cmd
