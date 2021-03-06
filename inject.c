#include <stdio.h>
#import "CoreGraphics/CoreGraphics.h"
#import "CoreVideo/CoreVideo.h"


__attribute__((constructor))
static void customConstructor(int argc, const char **argv)
{

	printf("Trying to trigger screen capture permission request from dylib!\n");
	CGDisplayStreamRef stream = CGDisplayStreamCreate(CGMainDisplayID(), 1, 1, kCVPixelFormatType_32BGRA, nil, ^(CGDisplayStreamFrameStatus status, uint64_t displayTime, IOSurfaceRef frameSurface, CGDisplayStreamUpdateRef updateRef) {
	});
	if (stream) {
		CFRelease(stream);
	}
}
