typedef unsigned char  u8;

typedef unsigned short u16;

struct MPlayTableEntry { u8 *info; void *track; int count; };

struct SongTableEntry { void *header; u16 player; u16 _pad; };

extern struct MPlayTableEntry Data_fc624[];

extern struct SongTableEntry  Data_fc684[];

extern unsigned char  ewram_2003014;

extern unsigned char  ewram_200303c;

extern unsigned short ewram_2003020[];

extern void *gMPlayInfo_02004360;

extern void m4aMPlayFadeOut(void *mplayInfo, unsigned short speed);

extern void m4aSongNumStart(unsigned short songNum);

extern void MPlayStart(void *info, void *songHeader);

void PlaySound(int req) {
    unsigned int flags = req & 0xf000;
    unsigned int id    = req & 0xfff;

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
        int slot = Data_fc684[id].player;
        if (slot == 7) {
            for (;;) {
                if (Data_fc624[slot].info[4] == 0)
                    break;
                slot--;
                if (slot <= 3) { slot = 7; break; }
            }
        }
        MPlayStart(Data_fc624[slot].info, Data_fc684[id].header);
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
        gMusicCurVolume = (flags & 0x1000) ? 0 : 0x100;
        gMusicVolume = 0x100;
        gMusicVolumeDelta = 4;
        ewram_2003014 = 0;
    }
}
