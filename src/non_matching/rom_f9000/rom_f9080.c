/* PlaySound(req) PlaySound dispatch [rom_f9000]
 * Source asm: goldensun/asm/rom_f9000/rom_f9080_a_a.s  (Camelot music-driver prefix)
 *
 * The Camelot sound front-end. The request word packs flags in bits 12-15
 * (req & 0xf000) and a sound id in bits 0-11 (req & 0xfff), then dispatches:
 *   id == 0x11           -> fade BGM out (unless already fading), mark 0x13
 *   id == 0x121          -> fade the 0x2004360 player out
 *   id  > 0x63           -> SFX: pick a free m4a player from gMPlayTable
 *                           (search slots 7..4 for a free one) and MPlayStart
 *   0x4f < id <= 0x63    -> silence BGM, start song id, set state 0xa
 *   id <= 0x4f           -> BGM: start song id, seed the volume slide
 * Bit 0x1000 of the flags starts the slide from volume 0 instead of 0x100.
 *
 * non_matching: faithful logic, NOT byte-matched yet. The gMPlayTable /
 * song-table struct layouts are inferred (12-byte and 8-byte strides), the
 * 0x46/0x4b/0x43 -> sfx-mode classifier is inlined (cf. Func_80f95c8), and
 * the pooled-constant scheduling is unverified.
 *
 * Func_ -> friendly name:
 *   m4aMPlayFadeOut m4aMPlayFadeOut    m4aMPlayVolumeControl m4aMPlayVolumeControl
 *   m4aSongNumStart m4aSongNumStart    SetSoundFXMode SetSoundFXMode
 *   MPlayStart MPlayStart         Data_fc624 gMPlayTable
 *   gMPlayInfo_BGM gMPlayInfo_BGM    gMPlayInfo_02004360 gMPlayInfo_02004360
 */
typedef unsigned char  u8;
typedef unsigned short u16;

/* gMPlayTable entry: {info*, track*, count}  (12 bytes); player status @ info+4 */
struct MPlayTableEntry { u8 *info; void *track; int count; };
/* song table entry: {header*, preferredPlayer}  (8 bytes) */
struct SongTableEntry { void *header; u16 player; u16 _pad; };

extern struct MPlayTableEntry Data_fc624[];
extern struct SongTableEntry  Data_fc684[];

extern unsigned char  ewram_2003000;
extern unsigned char  ewram_2003014;
extern unsigned char  ewram_200303c;
extern short          gMusicCurVolume;
extern short          gMusicVolume;
extern unsigned short gMusicVolumeDelta;
extern unsigned short ewram_2003020[];
extern void *gMPlayInfo_BGM;
extern void *gMPlayInfo_02004360;

extern void m4aMPlayFadeOut(void *mplayInfo, unsigned short speed);
extern void m4aMPlayVolumeControl(void *mplayInfo, unsigned short trackBits, unsigned short volume);
extern void m4aSongNumStart(unsigned short songNum);
extern void SetSoundFXMode(int mode);
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
