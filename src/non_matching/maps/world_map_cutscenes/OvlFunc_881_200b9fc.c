#include "api.h"

struct WorldTransitionQueue {
    unsigned short count;
    unsigned int tasks[32][3];
};
extern struct WorldTransitionQueue WorldTransitionDma __asm__("gDMATaskCount");

static inline void WorldTransitionHalf(volatile unsigned short *p, unsigned int value)
{
    *p = value;
}

static inline unsigned int WorldTransitionLock(volatile unsigned short *ime)
{
    unsigned int saved = *ime;
    WorldTransitionHalf(ime, (unsigned int)ime);
    return saved;
}

void OvlFunc_881_200b9fc(int palette)
{
    extern void *__alloc_ewram(unsigned int);
    extern void __free(void *);
    extern unsigned int WorldTransitionDecompress(const void *, void *) __asm__("__DecompressLZ");
    extern void __Func_8011590(void);
    extern void __Func_8011644(void);
    extern void OvlFunc_881_200b8fc(void);
    extern void OvlFunc_881_200b95c(void);
    extern int WorldTransitionActor(int) __asm__("__MapActor_GetActor");
    extern unsigned char WorldTransitionTiles[] __asm__(".Lm881_47a6");
    extern unsigned char WorldTransitionPalettes[] __asm__(".Lm881_44ac");
    extern unsigned char WorldTransitionFrames[] __asm__("gScript_943__0200c4ec");
    extern unsigned short WorldTransitionHeight __asm__(".Lm881_67a0");
    extern unsigned char WorldTransitionState[] __asm__("gState");
    extern unsigned char WorldTransitionGlobals[] __asm__("iwram_3001ebc");
    unsigned char *graphics;
    struct WorldTransitionQueue *queue;
    unsigned char *actor;
    volatile unsigned short *ime;
    unsigned char *state;

    graphics = __alloc_ewram(0x4000);
    API_WaitFrames(1);
    API_ClearFlag(0x109);
    __Func_8011590();
    WorldTransitionDecompress(WorldTransitionTiles, graphics);
    WorldTransitionDecompress(WorldTransitionFrames, graphics + 0x1000);
    queue = &WorldTransitionDma;
    ime = (volatile unsigned short *)0x4000208;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(WorldTransitionPalettes + palette * 32);
            *task++ = 0x50001c0;
            *task = 0x80000010;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            *task++ = (unsigned int)(graphics);
            queue->count = count + 1;
            *task++ = 0x6001000;
            *task = 0x84000400;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_StartTask(OvlFunc_881_200b8fc, 0xc80);
    API_CutsceneStart();
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x3a80);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    state = WorldTransitionState;
    state += 0x1f4;
    actor = (unsigned char *)WorldTransitionActor(*(int *)state);
    actor[0x54] = 0;
    *(int *)(*(unsigned char **)WorldTransitionGlobals + 0x1c8) = 0x10;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_PlaySound(0xf6);
    WorldTransitionHeight = 0xe00;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x3480);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(2);
    WorldTransitionHeight = 0xd00;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x2e80);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(2);
    WorldTransitionHeight = 0xc00;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x2880);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(2);
    WorldTransitionHeight = 0xb00;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x2280);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(2);
    WorldTransitionHeight = 0xa00;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x1c80);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(2);
    WorldTransitionHeight = 0x900;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x1680);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(2);
    WorldTransitionHeight = 0x800;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x1080);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(140);
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x1680);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(4);
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x1c80);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(4);
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x2280);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(4);
    WorldTransitionHeight = 0x900;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x2880);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xa00;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x2e80);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xb00;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x3480);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xc00;
    {
        unsigned int savedIme;
        int count;
        unsigned int *task;
        savedIme = WorldTransitionLock(ime);
        count = queue->count;
        if (count < 32) {
            task = queue->tasks[count];
            queue->count = count + 1;
            *task++ = (unsigned int)(graphics + 0x3a80);
            *task++ = 0x6002000;
            *task = 0x84000140;
        }
        WorldTransitionHalf(ime, savedIme);
    }
    __Func_8011644();
    API_StartTask(OvlFunc_881_200b95c, 0xc80);
    API_PlaySound(0x8d);
    WorldTransitionHeight = 0xd00;
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xe00;
    API_CutsceneWait(4);
    WorldTransitionHeight = 0xf00;
    API_CutsceneWait(4);
    WorldTransitionHeight = 0x1000;
    API_CutsceneWait(45);
    API_MapTransitionOut();
    API_WaitMapTransition();
    __free(graphics);
    API_SetFlag(0x101);
}
