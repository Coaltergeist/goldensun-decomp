typedef unsigned char u8;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct Pair { s32 a; s32 b; } Pair;
typedef struct Vector4 { s32 x; s32 y; s32 z; s32 w; } Vector4;

extern u8 *iwram_3001f2c;
extern void _UpdateSprite(s32 sprite, Vector4 *vector, Pair *pair, s32 scale);

void Func_80ad35c(void)
{
    register u8 *base asm("r8");
    register s32 i asm("r9");
    register s32 heightOff asm("r10");
    register s32 scaleOne asm("r11");
    register s16 *posPtr asm("r6");
    register s32 *spritePtr asm("r7");
    s32 spill;
    Pair pair;
    Vector4 vector;
    register Pair *pairPtr asm("r4");
    register Vector4 *vectorPtr asm("r5");
    register s32 cmpVal asm("r2");

    {
        register u8 *tmpBase asm("r3") = iwram_3001f2c;
        asm(
            "mov r2, #128\n\t"
            "mov r8, %3\n\t"
            "mov r6, #141\n\t"
            "mov r3, #162\n\t"
            "mov r7, #137"
            : "=r"(base), "=r"(posPtr), "=r"(spritePtr)
            : "r"(tmpBase)
            : "r2", "r3"
        );
        asm volatile(
            "mov r1, #0\n\t"
            "lsl r2, r2, #9\n\t"
            "lsl r6, r6, #2\n\t"
            "lsl r3, r3, #1\n\t"
            "lsl r7, r7, #2\n\t"
            "mov r9, r1\n\t"
            "mov r11, r2\n\t"
            "add r4, sp, #4\n\t"
            "add r5, sp, #12\n\t"
            "add r6, r8\n\t"
            "mov r10, r3\n\t"
            "add r7, r8"
            : "=r"(i), "=r"(scaleOne), "=r"(heightOff),
              "=r"(pairPtr), "=r"(vectorPtr), "+r"(posPtr), "+r"(spritePtr)
            : "r"(base)
            : "r1", "r2", "r3", "memory"
        );
    }
    do {
        register s32 sprite asm("r0") = *spritePtr;
        spritePtr = spritePtr + 1;
        if (sprite != 0) {
            asm volatile(
                "mov r3, r8\n\t"
                "mov r1, r10\n\t"
                "ldrsh r1, [r1, r3]\n\t"
                "lsl r3, r1, #16\n\t"
                "mov r1, #0xf1\n\t"
                "ldrb r2, [r0, #9]\n\t"
                "lsl r1, r1, #17\n\t"
                "sub r1, r1, r3\n\t"
                "mov r3, #0xd\n\t"
                "mov ip, r2\n\t"
                "neg r3, r3\n\t"
                "mov r2, r3\n\t"
                "mov r3, ip\n\t"
                "and r3, r2\n\t"
                "mov r2, r11\n\t"
                "str r2, %0\n\t"
                "strb r3, [r0, #9]\n\t"
                "str r2, [r4, #4]\n\t"
                "mov r2, #0\n\t"
                "ldrsh r3, [r6, r2]\n\t"
                "lsl r3, r3, #16\n\t"
                "str r1, [r5, #4]\n\t"
                "str r3, [r5, #0]\n\t"
                "mov r2, #8\n\t"
                "ldrsh r3, [r6, r2]\n\t"
                "lsl r3, r3, #16\n\t"
                "add r3, r3, r1\n\t"
                "str r3, [r5, #8]\n\t"
                "mov r3, #0\n\t"
                "str r3, [r5, #0xc]\n\t"
                "mov r3, #0x80\n\t"
                "mov r2, r4\n\t"
                "mov r1, r5\n\t"
                "lsl r3, r3, #7\n\t"
                "str r4, %1\n\t"
                "bl _UpdateSprite\n\t"
                "ldr r4, %1"
                : "=m"(pair.a), "=m"(spill)
                : "r"(sprite), "r"(base), "r"(heightOff), "r"(scaleOne),
                  "r"(posPtr), "r"(pairPtr), "r"(vectorPtr)
                : "r1", "r2", "r3", "ip", "lr", "memory"
            );
        }
        {
            asm volatile(
                "mov r1, #1\n\t"
                "add r9, r1\n\t"
                "mov r3, #2\n\t"
                "mov r2, r9\n\t"
                "add r6, #2\n\t"
                "add r10, r3"
                : "+r"(i), "+r"(posPtr), "+r"(heightOff), "=r"(cmpVal)
                :
                : "r1", "r3", "memory"
            );
        }
    } while (cmpVal <= 3);
}
