/* sound/sound_reverb.c -- reverb type for a given song id. */
#include "nonmatching.h"

int GetSoundReverbType(int songId) {
    if (songId == 0x46 || songId == 0x4b || songId == 0x43)
        return 3;
    return 2;
}
