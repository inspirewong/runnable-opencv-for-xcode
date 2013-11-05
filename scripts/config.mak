#autogen config.mak file.
ALL_SUB_DIRS=core imgproc objdetect flann ml contrib features2d calib3d  video legacy
#rm -fr ../include/opencv2/core
#cp core/include/opencv2/core ../include/opencv2/
include core/Makefile.inc
#rm -fr ../include/opencv2/imgproc
#cp imgproc/include/opencv2/imgproc ../include/opencv2/
include imgproc/Makefile.inc
#rm -fr ../include/opencv2/objdetect
#cp objdetect/include/opencv2/objdetect ../include/opencv2/
include objdetect/Makefile.inc
#rm -fr ../include/opencv2/flann
#cp flann/include/opencv2/flann ../include/opencv2/
include flann/Makefile.inc
#rm -fr ../include/opencv2/ml
#cp ml/include/opencv2/ml ../include/opencv2/
include ml/Makefile.inc
#rm -fr ../include/opencv2/contrib
#cp contrib/include/opencv2/contrib ../include/opencv2/
include contrib/Makefile.inc
#rm -fr ../include/opencv2/features2d
#cp features2d/include/opencv2/features2d ../include/opencv2/
include features2d/Makefile.inc
#rm -fr ../include/opencv2/calib3d
#cp calib3d/include/opencv2/calib3d ../include/opencv2/
include calib3d/Makefile.inc
#rm -fr ../include/opencv2/video
#cp video/include/opencv2/video ../include/opencv2/
include video/Makefile.inc
#rm -fr ../include/opencv2/legacy
#cp legacy/include/opencv2/legacy ../include/opencv2/
include legacy/Makefile.inc

#compiler var setup
LIPO=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/lipo
ARCH=i386
CC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc
CPP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc
AR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/ar
AS=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc
LD=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc
CPPFLAGS= -x c++ --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk -DDEBUG=1 -pipe -fmessage-length=0 -fpascal-strings -O0 -gdwarf-2 -fvisibility-inlines-hidden -Wno-trigraphs -Wreturn-type -Wunused-variable -fexceptions -fasm-blocks -mmacosx-version-min=10.6 -D__IPHONE_OS_VERSION_MIN_REQUIRED=40300 -arch i386 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk
CFLAGS= -x c -DDEBUG=1 -pipe -fmessage-length=0 -fpascal-strings -O0 -gdwarf-2 -fvisibility-inlines-hidden -Wno-trigraphs -Wreturn-type -Wunused-variable -fexceptions -fasm-blocks -mmacosx-version-min=10.6 -D__IPHONE_OS_VERSION_MIN_REQUIRED=40300 -arch i386 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk
ASFLAGS= -arch i386
LDFLAGS= -arch i386 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk --systemroot=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk -Wl,-dynamic,-search_paths_first

AS_O=-o $@
CC_O=-o $@
CPP_O=-o $@

CPP_DEPFLAGS=-MMD -MF $(@:.o=.d) -MT $@
CC_DEPFLAGS=-MMD -MF $(@:.o=.d) -MT $@
AS_DEPFLAGS=-MMD -MF $(@:.o=.d) -MT $@

ARCH_ARM=yes
HAVE_ARMV5TE=yes
HAVE_ARMV6=yes
HAVE_ARMV6T2=yes
HAVE_ARMVFP=yes
HAVE_NEON=yes
!ARCH_X86=yes
!HAVE_MMX=yes

