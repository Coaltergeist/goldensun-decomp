/* sound.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/sound/PlaySound.s");
INCLUDE_ASM("asm/sound/UpdateMusicSettings.s");
INCLUDE_ASM("asm/sound/Debug_SoundTest.s");

extern void m4aSoundInit(void);
extern unsigned char ewram_200303c;
extern unsigned char ewram_2003000;
extern unsigned short gMusicVolume;
extern unsigned short gMusicCurVolume;
extern unsigned short gMusicVolumeDelta;
extern unsigned short gMusicSpeed;
extern unsigned short gMusicCurSpeed;
extern unsigned short gMusicSpeedDelta;
extern unsigned char ewram_2003014;
extern unsigned char ewram_2003040;
extern unsigned char ewram_2003004;
extern unsigned short ewram_2003020[];

void InitSoundEngine(void) {
    int i;

    m4aSoundInit();
    ewram_200303c = 0xff;
    ewram_2003000 = 0;
    gMusicVolume = 0x100;
    gMusicCurVolume = 0x100;
    gMusicVolumeDelta = 4;
    gMusicSpeed = 0x100;
    gMusicCurSpeed = 0x100;
    gMusicSpeedDelta = 4;
    ewram_2003014 = 0;
    ewram_2003040 = 0;
    ewram_2003004 = 0;
    for (i = 0; i < 8; i++)
        ewram_2003020[i] = 0;
}

extern void m4aMPlayTempoControl(void *mplayInfo, unsigned short tempo);
extern void *gMPlayInfo_BGM;

void SetMusicTempo(unsigned short tempo) {
    m4aMPlayTempoControl(&gMPlayInfo_BGM, tempo);
}

extern void m4aMPlayPitchControl(void *mplayInfo, unsigned short trackBits, short pitch);

void SetMusicPitch(int pitch) {
    m4aMPlayPitchControl(&gMPlayInfo_BGM, 0xff, (short)pitch);
}


void ChangeMusicSpeed(unsigned short arg0, unsigned short arg1) {
    gMusicSpeed = arg0;
    gMusicSpeedDelta = arg1;
}

extern void m4aMPlayVolumeControl(void *a0, unsigned short a1, unsigned short a2);
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


void ChangeMusicVolume(unsigned short arg0, unsigned short arg1) {
    gMusicVolume = arg0;
    gMusicVolumeDelta = arg1;
}

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


void Func_80f9570(unsigned int arg0)
{
    unsigned int hi = arg0 & 0x80;
    arg0 &= 0x7f;
    if (hi != 0)
        ewram_2003040 = ewram_2003040 ^ arg0;
    else
        ewram_2003040 = arg0;
}


unsigned int Func_80f9594(void) {
    return ewram_200303c;
}

extern void WaitFrames(int frames);

void Func_80f95a0(void) {
    int i;

    i = 0;
    while (ewram_2003000 != 0) {
        WaitFrames(1);
        if (++i > 0x12b)
            break;
    }
}

int GetSoundReverbType(int songId) {
    if (songId == 0x46 || songId == 0x4b || songId == 0x43)
        return 3;
    return 2;
}
