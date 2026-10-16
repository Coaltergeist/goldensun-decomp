/* sound.c -- consolidated TU. */
#include "nonmatching.h"
#include "gba/types.h"

// see m4a_internal.h for original struct definitions.

struct m4aMusicPlayer {
    struct MP2KPlayerState *info;
    struct MP2KTrack *track;
    u8 numTracks;
    u16 unk_A;
};

struct m4aSong {
    void *header;
    u16 ms;
    u16 me;
};

extern const struct m4aMusicPlayer gMPlayTable[];
extern const struct m4aSong gSongTable[];

// end m4a_internal.h references

extern void m4aSoundInit(void);

extern unsigned short gMusicVolume;
extern unsigned short gMusicCurVolume;
extern unsigned short gMusicVolumeDelta;
extern unsigned short gMusicSpeed;
extern unsigned short gMusicCurSpeed;
extern unsigned short gMusicSpeedDelta;

extern void *gMPlayInfo_BGM;
extern void *gMPlayInfo_02004360;

extern unsigned char ewram_2003000;
extern unsigned char ewram_2003000;
extern unsigned char ewram_2003004;
extern unsigned char ewram_2003014;
extern unsigned char ewram_2003014;
extern unsigned char ewram_200303c;
extern unsigned char ewram_200303c;
extern unsigned char ewram_2003040;
extern unsigned short ewram_2003020[];
extern unsigned short ewram_2003020[];

extern short gMusicCurVolume__a1 __asm__("gMusicCurVolume");
extern void m4aMPlayFadeOut(void *mplayInfo, unsigned short speed);
extern void m4aMPlayVolumeControl(void *mplayInfo, unsigned short trackBits, unsigned short volume);
extern void m4aSongNumStart(unsigned short songNum);
extern void MPlayStart(void *info, void *songHeader);
extern void SetSoundFXMode(int mode);

void PlaySound(int req) {
    int flags = 0xf000;
    int id = req;
    flags &= id;
    id &= 0xfff;

    if (id == 0x11) {
        if (ewram_2003014 == 0) {
            m4aMPlayFadeOut(&gMPlayInfo_BGM, 7);
            ewram_2003014++;
            ewram_200303c = 0x13;
        }
    } else if (id == 0x121) {
        ewram_2003020[3] = 0;
        m4aMPlayFadeOut(&gMPlayInfo_02004360, 3);
    } else if (id > 0x63) {
        int slot = gSongTable[id].ms;
        if (slot == 7) {
            for (;;) {
                if (((unsigned char *)gMPlayTable[slot].info)[4] == 0)
                    break;
                slot--;
                if (slot <= 3) {
                    slot = 7;
                    break;
                }
            }
        }
        MPlayStart(gMPlayTable[slot].info, gSongTable[id].header);
        ewram_2003020[slot] = id;
    } else if (id > 0x4f) {
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xff, 0);
        gMusicVolume = 0;
        gMusicCurVolume__a1 = 0;
        m4aSongNumStart(id);
        ewram_2003000 = 0xa;
    } else if (id != 0x12 && id != ewram_200303c) {
        int mode;
        ewram_200303c = id;
        if (id == 0x46 || id == 0x4b || id == 0x43)
            mode = 3;
        else
            mode = 2;
        SetSoundFXMode(mode);
        m4aSongNumStart(id);
        if (flags & 0x1000)
            gMusicCurVolume__a1 = 0;
        else
            gMusicCurVolume__a1 = 0x100;
        gMusicVolume = 0x100;
        gMusicVolumeDelta = 4;
        ewram_2003014 = 0;
    }
}

extern unsigned char gMPlayInfo_02004210[];
extern void m4aMPlayTempoControl(void *mplayInfo, unsigned short tempo);
extern void m4aMPlayPitchControl(void *mplayInfo, unsigned short trackBits, short pitch);
extern void m4aSoundVSync(void);

void UpdateMusicSettings(void) {
    int diff;
    short pitch;

    if (ewram_2003000 != 0) {
        if (ewram_2003000 == 1) {
            if (gMPlayInfo_02004210[4] == 0) {
                ewram_2003000 = 0;
                gMusicVolume = 0x100;
            }
        } else {
            ewram_2003000--;
        }
    }

    if ((short)gMusicVolume != (short)gMusicCurVolume) {
        diff = (short)gMusicVolume - (short)gMusicCurVolume;
        if (diff > 0)
            gMusicCurVolume = (unsigned short)(short)gMusicCurVolume + gMusicVolumeDelta;
        else
            gMusicCurVolume = (unsigned short)(short)gMusicCurVolume - gMusicVolumeDelta;
        if ((((short)gMusicVolume - (short)gMusicCurVolume) ^ diff) < 0)
            gMusicCurVolume = (short)gMusicVolume;
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xff, (unsigned short)(short)gMusicCurVolume);
    }

    if ((short)gMusicSpeed != (short)gMusicCurSpeed) {
        diff = (short)gMusicSpeed - (short)gMusicCurSpeed;
        if (diff > 0)
            gMusicCurSpeed = (unsigned short)(short)gMusicCurSpeed + gMusicSpeedDelta;
        else
            gMusicCurSpeed = (unsigned short)(short)gMusicCurSpeed - gMusicSpeedDelta;
        if ((((short)gMusicSpeed - (short)gMusicCurSpeed) ^ diff) < 0)
            gMusicCurSpeed = (short)gMusicSpeed;
        m4aMPlayTempoControl(&gMPlayInfo_BGM, gMusicCurSpeed);
        pitch = (((3 * (short)gMusicCurSpeed) << 18) + (0xf4 << 24)) >> 16;
        m4aMPlayPitchControl(&gMPlayInfo_BGM, 0xff, pitch);
    }

    m4aSoundVSync();
}

struct DebugSoundTestSlots {
    int values[3];
};

extern const struct DebugSoundTestSlots Data_fb794 __asm__(".Lfb794");
extern volatile int gRAMBuildDate;
extern volatile unsigned int gKeyRepeat;
extern int Label_12cc;

void Debug_SoundTest(void) {
    struct DebugSoundTestSlots slots;
    int cur;
    int fadeTimer;
    int channel;

    slots = Data_fb794;
    cur = 0;
    channel = 2;
    __asm__ volatile ("");
    gRAMBuildDate = 0;
    __asm__ volatile ("");
    fadeTimer = 0x14;

    for (;;) {
        if (fadeTimer != 0)
            fadeTimer--;
        if (Label_12cc != 0) {
            Label_12cc = 0;
            fadeTimer = 0x14;
        }

        if (gKeyRepeat & 4) {
            channel = (channel + 1) % 5;
            SetSoundFXMode(channel);
        }
        if (gKeyRepeat & 0x100) slots.values[cur] += 0xa;
        if (gKeyRepeat & 0x200) slots.values[cur] -= 0xa;
        if (gKeyRepeat & 0x10)  slots.values[cur] += 1;
        if (gKeyRepeat & 0x20)  slots.values[cur] -= 1;
        if ((gKeyRepeat & 0x40) && cur > 0)
            cur--;

        if ((gKeyRepeat & 0x80) && cur <= 1)
            cur++;
        if (gKeyRepeat & 1) PlaySound(slots.values[cur]);
        if (gKeyRepeat & 2) PlaySound(0x13);
        if (gKeyRepeat & 8) PlaySound(0x11);
        if (gKeyRepeat & 4) PlaySound(0x121);

        WaitFrames(1);
    }
}

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
