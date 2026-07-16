typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;

typedef struct GameState {
    u8 pad[0x1f4];
    int actorId;
} GameState;

extern GameState gState;
extern u8 *iwram_3001ebc;
extern u8 *GetFieldActor(int actor);
extern s32 Func_8000888(s32 value, s32 scale);

void Func_80982dc(void) {
    u8 *state = iwram_3001ebc;
    u8 *actor = GetFieldActor(gState.actorId);
    s32 diffX;
    s32 mulResult;
    s32 diffZ;

    if (*(s16 *)(state + 0xcc0) != 0 && *(s16 *)(state + 0xcba) != 0) {
        *(s16 *)(state + 0xcba) = *(s16 *)(state + 0xcba) - 1;
    }

    {
        register s32 cbcVal asm("r2");
        register s32 cbcOff asm("r1") = 0xcbc;
        s32 valX;
        asm volatile(
            "add r3, %1, %2\n\t"
            "mov r0, #0\n\t"
            "ldrsh r2, [r3, r0]"
            : "=r"(cbcVal)
            : "r"(state), "r"(cbcOff)
            : "r0", "r3");
        valX = *(s32 *)(actor + 8);
        if (valX < 0) {
            valX += 0xffff;
        }
        {
            register s32 (*fn)(s32, s32) asm("r3") = Func_8000888;
            register s32 arg0 asm("r0") = cbcVal - (valX >> 16);
            register s32 arg1 asm("r1") = 0xd105;
            diffX = arg0;
            asm volatile(".align 2, 0\n\tmov ip, pc\n\tbx r3"
                         : "+r"(arg0)
                         : "r"(arg1), "r"(fn)
                         : "ip", "lr", "cc", "memory");
            mulResult = arg0;
        }
    }

    {
        s16 rawCbe = *(s16 *)(state + 0xcbe);
        s32 valZ = *(s32 *)(actor + 0x10) - *(s32 *)(actor + 0xc);
        if (valZ < 0) {
            valZ += 0xffff;
        }
        diffZ = rawCbe - (valZ >> 16);
    }

    if ((mulResult * mulResult + diffZ * diffZ) >= 0xe10 || *(s16 *)(state + 0xcba) == 0) {
        asm volatile(
            "mov r1, #0xbf\n\t"
            "lsl r1, r1, #1\n\t"
            "ldr r3, =0x2090\n\t"
            "add r2, %0, r1\n\t"
            "strh r3, [r2]"
            :
            : "r"(state)
            : "r1", "r2", "r3", "memory");
    }
}
