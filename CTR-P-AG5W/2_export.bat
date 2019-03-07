PUSHD "%~dp0"
FOR /R cci\cxi0\exefs\banner %%I IN (*.bcmdl) DO (tools\txobtool -evfd "%%~I" "%%~dpnI" || PAUSE)
POPD
