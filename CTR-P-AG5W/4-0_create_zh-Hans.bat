PUSHD "%~dp0"
tools\3dstool -cvtf banner build\cxi0\exefs\banner.bnr --banner-dir build\cxi0\exefs\banner
tools\3dstool -cvtfz exefs build\cxi0\exefs.bin --header build\cxi0\exefs\exefsheader.bin --exefs-dir build\cxi0\exefs
tools\3dstool -cvtf romfs build\cxi0\romfs.bin --romfs-dir build\cxi0\romfs --romfs cci\cxi0\romfs.bin
MD build\cfa1
tools\3dstool -cvtf romfs build\cfa1\romfs.bin --romfs-dir cci\cfa1\romfs --romfs cci\cfa1\romfs.bin
MD build\cfa7
tools\3dstool -cvtf romfs build\cfa7\romfs.bin --romfs-dir cci\cfa7\romfs --romfs cci\cfa7\romfs.bin
tools\3dstool -cvtf cxi build\0.cxi --header cci\cxi0\ncchheader.bin --exh cci\cxi0\exh.bin --logo cci\cxi0\logo.darc.lz --plain cci\cxi0\plain.bin --exefs build\cxi0\exefs.bin --romfs build\cxi0\romfs.bin
tools\3dstool -cvtf cfa build\1.cfa --header cci\cfa1\ncchheader.bin --romfs build\cfa1\romfs.bin
tools\3dstool -cvtf cfa build\7.cfa --header cci\cfa7\ncchheader.bin --romfs build\cfa7\romfs.bin
tools\3dstool -cvt017f cci build\0.cxi build\1.cfa build\7.cfa "Paper Mario - Sticker Star (TWN) (zh-Hans).3ds" --header cci\ncsdheader.bin
IF NOT "%~1"=="" (
tools\3dstool --diff -vt cci --old "%~1" --new "Paper Mario - Sticker Star (TWN) (zh-Hans).3ds" --patch-file patch.3ps
tools\icn2ico cci\cxi0\exefs\icon.icn zh\icon.ico
CALL make_3ps_exe.bat zh\icon.ico patch.3ps zh-Hans_AG5WTOOLS || CALL ..\exepatch\make_3ps_exe.bat zh\icon.ico patch.3ps zh-Hans_AG5WTOOLS
DEL zh\icon.ico
)
POPD
