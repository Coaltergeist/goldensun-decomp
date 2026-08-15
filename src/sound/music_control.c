/* sound/music_control.c -- BGM tempo/pitch/speed/volume + pause/continue. */
#include "nonmatching.h"

extern void m4aMPlayTempoControl(void *mplayInfo, unsigned short tempo);
extern void *gMPlayInfo_BGM;

void SetMusicTempo(unsigned short tempo) {
    m4aMPlayTempoControl(&gMPlayInfo_BGM, tempo);
}

extern void m4aMPlayPitchControl(void *mplayInfo, unsigned short trackBits, short pitch);

void SetMusicPitch(int pitch) {
    m4aMPlayPitchControl(&gMPlayInfo_BGM, 0xff, (short)pitch);
}

extern unsigned short gMusicSpeed;
extern unsigned short gMusicSpeedDelta;

void ChangeMusicSpeed(unsigned short arg0, unsigned short arg1) {
    gMusicSpeed = arg0;
    gMusicSpeedDelta = arg1;
}

extern void m4aMPlayVolumeControl(void *a0, unsigned short a1, unsigned short a2);
extern unsigned short gMusicVolume;
extern short gMusicCurVolume__a1 __asm__("gMusicCurVolume");

void SetMusicVolume(unsigned short volume) {
    unsigned short r5;
    unsigned short r2;

    r2 = volume;
    r5 = (short)r2;
    m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xff, r2);
    gMusicVolume = r5;
    gMusicCurVolume__a1 = r5;
}

extern unsigned short gMusicVolumeDelta;

void ChangeMusicVolume(unsigned short arg0, unsigned short arg1) {
    gMusicVolume = arg0;
    gMusicVolumeDelta = arg1;
}

extern unsigned char ewram_2003000;

unsigned int Func_80f954c(void) {
    return ewram_2003000;
}

extern void m4aMPlayAllStop(void);

void PauseSound(void) {
    m4aMPlayAllStop();
}
extern void m4aMPlayAllContinue(void);

void ContinueSound(void) {
    m4aMPlayAllContinue();
}
