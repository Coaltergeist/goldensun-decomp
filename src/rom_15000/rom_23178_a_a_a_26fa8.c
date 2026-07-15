typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern u8 *iwram_3001e74;
extern u8 *iwram_3001f34;
extern u32 gKeyPress;

extern void *CreateUIBox(s32 x, s32 y, s32 width, s32 height, s32 style);
extern void Func_8016738(void);
extern void Func_801965c(u32 id, void *buffer, u32 size);
extern u32 Func_8017aa4(void *buffer, void *value, u32 x, u32 color);
extern void WaitFrames(u32 nframes);
extern void CloseUIBox(void *box, s32 noanim);

s32 Func_8026fa8(void)
{
    u8 *base;
    s32 state;
    register s32 ok asm("r8");

    base = iwram_3001e74;
    state = gState[0x22b];

    if (state == 2) {
        goto set_zero;
    }
    if (state < 3) {
        goto set_zero;
    }
    ok = 1;
    if (state <= 4) {
        goto state_checked;
    }
set_zero:
    ok = 0;
state_checked:

    if (ok == 0) {
        if (*(s8 *)(base + 0x43) != 0) {
            ok = 1;
        }
    }

    if (ok != 0) {
        struct {
            s32 pad;
            char text[0x80];
        } local;
        register void *box asm("r10");
        register void *bufPtr asm("r5");
        register void *arg1 asm("r1");
        register u32 arg2 asm("r2");
        register u32 msgId asm("r0");
        register u32 *keyPtr asm("r7");
        register u8 **f34Ptr asm("r5");
        register u32 mask asm("r6");

        asm volatile(
            "movs r3, #0x2a\n\t"
            "str r3, [sp, #0]\n\t"
            "movs r3, #4\n\t"
            "movs r1, #7\n\t"
            "movs r2, #0x1e\n\t"
            "movs r0, #0\n\t"
            "bl CreateUIBox\n\t"
            "mov r10, r0\n\t"
            : "=r"(box)
            :
            : "r0", "r1", "r2", "r3", "lr", "memory"
        );
        Func_8016738();
        bufPtr = local.text;
        asm volatile("" : "+r"(bufPtr));
        arg1 = bufPtr;
        asm volatile("" : "+r"(arg1));
        arg2 = 0x34;
        asm volatile("" : "+r"(arg2), "+r"(arg1));
        msgId = 0x845;
        asm volatile(
            "bl Func_801965c\n\t"
            :
            : "r"(msgId), "r"(arg1), "r"(arg2)
            : "r0", "r1", "r2", "r3", "lr", "memory"
        );
        Func_8017aa4(bufPtr, box, 0, 4);
        keyPtr = &gKeyPress;
        asm volatile("" : "+r"(keyPtr));
        f34Ptr = (u8 **)&iwram_3001f34;
        asm volatile("" : "+r"(f34Ptr), "+r"(keyPtr));
        mask = 3;
        asm volatile("" : "+r"(mask), "+r"(f34Ptr), "+r"(keyPtr));
        do {
            WaitFrames(1);
            if ((*keyPtr & mask) != 0) {
                break;
            }
        } while (*(s32 *)(*f34Ptr + 0x4c) != 0);
        CloseUIBox(box, 1);
    }

    return ok;
}
