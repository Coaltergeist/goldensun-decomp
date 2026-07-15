typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct SoundQueueNode {
    u32 reserved0;
    struct SoundQueueNode *next;
    u16 reserved8;
    u16 active;
    u16 soundId;
} SoundQueueNode;

extern u8 *iwram_3001e98;
extern void Func_801a97c(void);
extern void CloseUIBox(void *box, int mode);
extern void WaitFrames(int frames);
extern void Func_8003f3c(unsigned int soundId);
extern void Func_801c21c(void);
extern void gfree(int slot);

void Func_801b148(void)
{
    u8 *base = iwram_3001e98;
    SoundQueueNode *node;

    Func_801a97c();
    CloseUIBox(*(void **)(base + 0x350), 2);
    WaitFrames(1);

    for (node = *(SoundQueueNode **)(base + 0x348); node != 0; node = node->next) {
        if (node->active != 0) {
            Func_8003f3c(node->soundId);
            node->active = 0;
        }
    }

    for (node = *(SoundQueueNode **)(base + 0x34c); node != 0; node = node->next) {
        if (node->active != 0) {
            Func_8003f3c(node->soundId);
            node->active = 0;
        }
    }

    Func_801c21c();
    if (*(s16 *)(base + 0x12) != 0) {
        Func_8003f3c(*(u16 *)(base + 0xc));
        if (*(s16 *)(base + 0x12) != 0) {
            Func_8003f3c(*(u16 *)(base + 0x40));
        }
    }
    Func_8003f3c(*(u16 *)(base + 0x2e4));
    gfree(0x12);
}
