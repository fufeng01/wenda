chcp 65001
cls
set "defaultDIR=%~dp0\..\memory\default"
IF EXIST %defaultDIR% (
echo 检测到已经存在知识库，openai产生的知识库无法与原知识库兼容请将原知识库文件夹default改名后再进行使用
goto end
) 
%~d0
cd %~dp0
cd ..
call envirment.bat
%PYTHON% plugins/gen_data_openai.py

:end
pause