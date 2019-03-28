PUSHD "%~dp0"
RD /S /Q build
MD build\cxi0\exefs
XCOPY cci\cxi0\exefs build\cxi0\exefs /S /Y
REM MD build\cxi0\romfs
REM XCOPY cci\cxi0\romfs build\cxi0\romfs /S /Y
tools\3dstool --lock -vf build\cxi0\exefs\code.bin --region TWN --language TW || PAUSE
REM FOR /R build\cxi0\exefs\banner %%I IN (*.bcmdl) DO (tools\txobtool -ivfd "%%~I" "%%~dpnI" || PAUSE)
FOR /L %%I IN (1,1,16) DO (COPY build\cxi0\exefs\banner\banner16.bcmdl build\cxi0\exefs\banner\banner%%I.bcmdl)
POPD
