typedef signed short s16;
typedef unsigned short u16;

typedef struct MapActor {
    unsigned char pad0[8];
    int x;
    unsigned char padC[4];
    int y;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern unsigned char *iwram_3001ebc;
extern unsigned char gState[];

void OvlFunc_948_200941c(void)
{
    MapActor *actor = __MapActor_GetActor(0);
    register int x asm("r7") = actor->x / 0x100000;
    register int y asm("r5") = actor->y / 0x100000;
    register unsigned char *state asm("r6");
    register unsigned char *globalState asm("r2");
    register int setFlag asm("r0");
    register int storeValue asm("r3");
    register u16 *destination asm("r2");

    state = iwram_3001ebc;
    if (!__GetFlag(0x220)) {
        globalState = gState;
        asm volatile("" : "+r" (globalState));
        if (*(s16 *)(globalState + 0x24c) == 0) {
            register int otherState asm("r3");
            asm volatile(
                "ldr r1, =0x24a\n"
                "add r3, r2, r1\n"
                "mov r2, #0\n"
                "ldrsh r3, [r3, r2]"
                : "=r" (otherState) : "r" (globalState)
                : "r1", "r2");
            if (otherState != 9 && x == 10 &&
                (unsigned int)(y - 0x10) < 3) {
                asm volatile("" : : "r" (y));
                asm volatile("mov r0, #0x88\nlsl r0, #2" : "=r" (setFlag));
                __SetFlag(setFlag);
                asm volatile(
                    "mov r3, #0xc1\n"
                    "lsl r3, #1\n"
                    "add r2, r6, r3"
                    : "=r" (destination) : "r" (state) : "r3");
                storeValue = 0x5c;
                *destination = storeValue;
            }
        }
    }
}
