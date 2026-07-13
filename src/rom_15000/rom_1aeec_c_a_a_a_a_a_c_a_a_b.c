typedef unsigned char u8;
typedef unsigned short u16;

typedef struct PendingSound {
    u8 reserved0[10];
    u16 active;
    u16 soundId;
} PendingSound;

extern u8 *iwram_3001e98;
extern void Func_8003f3c(unsigned int soundId);

void Func_801c21c(void)
{
    PendingSound *sound = (PendingSound *)(iwram_3001e98 + 0x30c);

    if (sound->active != 0) {
        Func_8003f3c(sound->soundId);
        sound->active = 0;
    }
}
