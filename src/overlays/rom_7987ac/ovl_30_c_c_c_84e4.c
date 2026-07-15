typedef unsigned char u8;
typedef short s16;

typedef struct MapActor {
    u8 pad0[0x0c];
    int value0c;
    u8 pad10[4];
    int value14;
    u8 pad18[0x3d];
    u8 value55;
} MapActor;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void CopyPreparedTiles(int, int, int, int) asm("__CopyMapTiles");
extern MapActor *__MapActor_GetActor(int actorId);
extern void OvlFunc_902_2008570(int, int, int, int);
extern void OvlFunc_902_2008030(void);
extern void __StartTask(void (*task)(void), int priority);

int OvlFunc_902_20084e4(void)
{
    register int state asm("r3");
    register int result asm("r0");

    *(int *)(iwram_3001ebc + 0x1c0) = 0x209;
    asm volatile(
        "sub r2,#0x47\nadd r3,r2\nmov r2,#0\nldrsh r3,[r3,r2]"
        : "=r" (state) : "0" (gState) : "r2");
    asm volatile("sub sp,#8" ::: "memory");
    if (state == 5) {
        asm volatile("mov r3,#4\nmov r2,#3\nstr r3,[sp]\nstr r2,[sp,#4]" ::: "r2", "r3", "memory");
        CopyPreparedTiles(0, 0x78, 8, 0x43);
        __MapActor_GetActor(8)->value55 = 0;
        __MapActor_GetActor(8)->value0c = 0;
        __MapActor_GetActor(8)->value14 = 0;
    } else if (state == 7 || state == 11) {
        OvlFunc_902_2008570(0xe7, 0x2380000, 0x100000, 0x2a00000);
        __StartTask(OvlFunc_902_2008030, 0xc80);
    }
    result = 0;
    asm volatile("add sp,#8" : "+r" (result) : : "memory");
    return result;
}
