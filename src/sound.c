/* sound.c -- consolidated TU. */
#include "nonmatching.h"

INCLUDE_ASM("asm/sound/rom_f9080_a_a_a.s");

/* Phase 5 (SAPPY_IMPORT_PLAN); Camelot prefix: reset the music-driver state.
 * Func_80fa2a0 = m4aSoundInit. Stores follow ROM order; the 0x100/4/0
 * constants are CSE'd into the literal pool by gcc-2.96.
 */
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

/* Phase 5 (SAPPY_IMPORT_PLAN); Camelot prefix wrapper.
 * BGM tempo control: m4aMPlayTempoControl = m4aMPlayTempoControl(MP2KPlayerState*, u16).
 */
extern void m4aMPlayTempoControl(void *mplayInfo, unsigned short tempo);
extern void *gMPlayInfo_BGM;

void SetMusicTempo(unsigned short tempo) {
    m4aMPlayTempoControl(&gMPlayInfo_BGM, tempo);
}

/* Phase 5 (SAPPY_IMPORT_PLAN); Camelot prefix wrapper.
 * BGM pitch control: m4aMPlayPitchControl = m4aMPlayPitchControl(MP2KPlayerState*, u16 trackBits, s16 pitch).
 * trackBits = 0xff (all tracks). Param is int + (short) cast at the call site
 * (matches the ROM's lsl/ldr/asr scheduling; a plain short param does not).
 */
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

/* Phase 5 (SAPPY_IMPORT_PLAN); Camelot prefix helper.
 * Spin up to 0x12c frames (WaitFrames = WaitFrames/sleep) while the
 * driver-busy flag ewram_2003000 is still set.
 */
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

/* Phase 5 (SAPPY_IMPORT_PLAN); Camelot prefix helper.
 * Maps song ids 0x46/0x4b/0x43 -> sfx mode 3, everything else -> 2.
 * (Identical logic to the inline block at PlaySound+0xe4.)
 */

int GetSoundReverbType(int songId) {
    if (songId == 0x46 || songId == 0x4b || songId == 0x43)
        return 3;
    return 2;
}
