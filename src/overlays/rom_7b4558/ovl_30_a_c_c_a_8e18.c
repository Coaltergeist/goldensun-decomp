typedef unsigned char u8;
typedef unsigned int u32;

typedef struct MapActor {
    u8 pad0[8];
    int x;
    u8 pad0c[4];
    int y;
} MapActor;

typedef struct Vec3 {
    volatile int x;
    volatile int y;
    volatile int z;
} Vec3;

typedef struct Workspace {
    int enabled;
    int unused[9];
    Vec3 offset;
} Workspace;

extern MapActor *__MapActor_GetActor(int actorId);
extern void __PlaySound(int soundId);
extern int __cos(int angle);
extern int __sin(int angle);
extern int _divsi3_RAM(int value, int divisor);
extern void OvlFunc_927_2008ae8(int, int, int, int, int, int, int, int *);

void OvlFunc_927_2008e18(int actorId)
{
    register MapActor *actor asm("r10") = __MapActor_GetActor(actorId);
    Workspace workspace;
    register int *enabledPtr asm("r9");
    register u32 i asm("r8");
    register Vec3 *offsetPtr asm("r7");

    __PlaySound(0xbc);
    asm volatile(
        "add r1, sp, #0x10\n\t"
        "mov r3, #1\n\t"
        "mov r2, #0\n\t"
        "str r3, [r1]\n\t"
        "mov r9, r1\n\t"
        "mov r8, r2"
        : "=r"(enabledPtr), "=r"(i)
        :
        : "r1", "r2", "r3", "memory");
    offsetPtr = &workspace.offset;
    do {
        register int cosine asm("r5");
        register int sine asm("r6");
        register u32 angleStep asm("r3") = i;
        int angle;
        int cosineResult;
        asm volatile("" : "+r"(angleStep));
        angle = angleStep << 12;
        cosineResult = __cos(angle);
        offsetPtr->y = 0;
        offsetPtr->x = cosineResult;
        sine = __sin(angle);
        cosine = offsetPtr->x;
        {
            register int divisor asm("r1") = 3;
            register int dividend asm("r0") = cosine;
            asm volatile("" : "+r"(divisor), "+r"(dividend));
            offsetPtr->z = sine;
            cosine += _divsi3_RAM(dividend, divisor);
        }
        offsetPtr->x = cosine;
        {
            register MapActor *base asm("r1") = actor;
            register int actorY asm("r2") = base->y;
            register int actorX asm("r0") = base->x;
            register int effectY asm("r3") = offsetPtr->y;
            OvlFunc_927_2008ae8(actorX, 0x100000, actorY,
                                cosine, effectY + 0x1999, sine,
                                0x20000, enabledPtr);
        }
        i++;
        {
            register u32 loopValue asm("r2") = i;
            asm volatile("" : "+r"(loopValue));
            if (loopValue > 0x10)
                break;
        }
    } while (1);
}
