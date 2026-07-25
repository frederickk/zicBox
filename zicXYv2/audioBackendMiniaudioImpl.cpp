// Compiled as its own translation unit, separate from zic.cpp: miniaudio's
// implementation pulls in Apple's CoreAudio/AudioToolbox headers, which
// define legacy Carbon types (Point, Rect, Size) that collide with this
// project's own types of the same name in draw/baseInterface.h. Keeping
// them in separate TUs means they never have to coexist in one namespace.
#define MINIAUDIO_IMPLEMENTATION
#include "libs/miniaudio/miniaudio.h"
