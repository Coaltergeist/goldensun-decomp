#include "nonmatching.h"
#include "gba/types.h"

// Subset of lib/m4a/m4a_internal.h, which is agbcc-only (needs <stdint.h>).
struct MP2KPlayerState {
    struct MP2KSongHeader *songHeader;
    u32 status;
};

struct MusicPlayer {
    struct MP2KPlayerState *info;
    struct MP2KTrack *track;
    u8 numTracks;
    u16 unk_A;
};

struct Song {
    struct MP2KSongHeader *header;
    u16 ms;
    u16 me;
};

extern const struct MusicPlayer gMPlayTable[];
extern const struct Song gSongTable[];
extern struct MP2KPlayerState gMPlayInfo_BGM;

extern void m4aSoundInit(void);
extern void m4aSoundVSync(void);
extern void m4aSongNumStart(u16 n);
extern void MPlayStart(struct MP2KPlayerState *mplayInfo, struct MP2KSongHeader *songHeader);
extern void m4aMPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
extern void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
extern void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
extern void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);

extern void WaitFrames(int frames);

extern short gMusicVolume;
extern short gMusicCurVolume;
extern unsigned short gMusicVolumeDelta;
extern short gMusicSpeed;
extern short gMusicCurSpeed;
extern unsigned short gMusicSpeedDelta;

extern struct MP2KPlayerState gMPlayInfo_02004210;
extern struct MP2KPlayerState gMPlayInfo_02004360;

extern unsigned char ewram_2003000;
extern unsigned char ewram_2003004;
extern unsigned char ewram_2003014;
extern unsigned char ewram_200303c;
extern unsigned char ewram_2003040;
extern unsigned short ewram_2003020[];

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
                if ((u8)gMPlayTable[slot].info->status == 0)
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
        gMusicCurVolume = 0;
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
            gMusicCurVolume = 0;
        else
            gMusicCurVolume = 0x100;
        gMusicVolume = 0x100;
        gMusicVolumeDelta = 4;
        ewram_2003014 = 0;
    }
}

void UpdateMusicSettings(void) {
    int diff;
    short pitch;

    if (ewram_2003000 != 0) {
        if (ewram_2003000 == 1) {
            if ((u8)gMPlayInfo_02004210.status == 0) {
                ewram_2003000 = 0;
                gMusicVolume = 0x100;
            }
        } else {
            ewram_2003000--;
        }
    }

    if (gMusicVolume != gMusicCurVolume) {
        diff = gMusicVolume - gMusicCurVolume;
        if (diff > 0)
            gMusicCurVolume += gMusicVolumeDelta;
        else
            gMusicCurVolume -= gMusicVolumeDelta;
        if (((gMusicVolume - gMusicCurVolume) ^ diff) < 0)
            gMusicCurVolume = gMusicVolume;
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xff, gMusicCurVolume);
    }

    if (gMusicSpeed != gMusicCurSpeed) {
        diff = gMusicSpeed - gMusicCurSpeed;
        if (diff > 0)
            gMusicCurSpeed += gMusicSpeedDelta;
        else
            gMusicCurSpeed -= gMusicSpeedDelta;
        if (((gMusicSpeed - gMusicCurSpeed) ^ diff) < 0)
            gMusicCurSpeed = gMusicSpeed;
        m4aMPlayTempoControl(&gMPlayInfo_BGM, gMusicCurSpeed);
        pitch = ((3 * gMusicCurSpeed << 18) + (0xf4 << 24)) >> 16;
        m4aMPlayPitchControl(&gMPlayInfo_BGM, 0xff, pitch);
    }

    m4aSoundVSync();
}

struct DebugSoundTestSlots {
    int values[3];
};

extern const struct DebugSoundTestSlots Data_fb794 __asm__(".Lfb794");
extern unsigned gRAMBuildDate[];
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
    // Fakematch: force load instruction after initial variables but
    // before fadeTimer.
    do {
        gRAMBuildDate[0] = 0;
    } while (0);
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

void SetMusicTempo(unsigned short tempo) {
    m4aMPlayTempoControl(&gMPlayInfo_BGM, tempo);
}

void SetMusicPitch(int pitch) {
    m4aMPlayPitchControl(&gMPlayInfo_BGM, 0xff, (short)pitch);
}


void ChangeMusicSpeed(unsigned short arg0, unsigned short arg1) {
    gMusicSpeed = arg0;
    gMusicSpeedDelta = arg1;
}

void SetMusicVolume(unsigned short volume) {
    unsigned short r5;
    unsigned short r2;

    r2 = volume;
    r5 = (short)r2;
    m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xff, r2);
    gMusicVolume = r5;
    gMusicCurVolume = r5;
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
