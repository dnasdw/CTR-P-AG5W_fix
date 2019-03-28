PUSHD "%~dp0"
RD /S /Q cci
MD cci
tools\3dstool -xvt017f cci cci\0.cxi cci\1.cfa cci\7.cfa "%~1" --header cci\ncsdheader.bin
MD cci\cxi0
tools\3dstool -xvtf cxi cci\0.cxi --header cci\cxi0\ncchheader.bin --exh cci\cxi0\exh.bin --logo cci\cxi0\logo.darc.lz --plain cci\cxi0\plain.bin --exefs cci\cxi0\exefs.bin --romfs cci\cxi0\romfs.bin
DEL cci\0.cxi
REM MD cci\cfa1
REM tools\3dstool -xvtf cfa cci\1.cfa --header cci\cfa1\ncchheader.bin --romfs cci\cfa1\romfs.bin
REM DEL cci\1.cfa
REM MD cci\cfa7
REM tools\3dstool -xvtf cfa cci\7.cfa --header cci\cfa7\ncchheader.bin --romfs cci\cfa7\romfs.bin
REM DEL cci\7.cfa
tools\3dstool -xvtfu exefs cci\cxi0\exefs.bin --header cci\cxi0\exefs\exefsheader.bin --exefs-dir cci\cxi0\exefs
DEL cci\cxi0\exefs.bin
REM tools\3dstool -xvtf romfs cci\cxi0\romfs.bin --romfs-dir cci\cxi0\romfs
REM tools\3dstool -xvtf romfs cci\cfa1\romfs.bin --romfs-dir cci\cfa1\romfs
REM tools\3dstool -xvtf romfs cci\cfa7\romfs.bin --romfs-dir cci\cfa7\romfs
tools\3dstool -xvtf banner cci\cxi0\exefs\banner.bnr --banner-dir cci\cxi0\exefs\banner
DEL cci\cxi0\exefs\banner.bnr
POPD
