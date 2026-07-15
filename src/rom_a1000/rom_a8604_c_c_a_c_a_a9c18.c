typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern void Func_80a9cbc(void);
extern void Func_80a17c4(u8 *actor);
extern u8 *_GetItemInfo(u32 itemId);
extern u8 iwram_3001f2c[];

void Func_80a9c18(u16 *param_1)
{
    register u8 *savedParam __asm__("r5");
    register u8 *deref __asm__("r6");
    register u8 **arr __asm__("r7");
    register s32 idx __asm__("r8");
    register u16 field6 __asm__("r1");
    register u16 *ptr __asm__("r6");
    register u8 **base __asm__("r3");

    base = (u8 **)iwram_3001f2c;
    __asm__ volatile ("" : "+r"(base));

    __asm__ volatile (
        "ldr %0, [%3]\n\t"
        "mov %1, %4\n\t"
        "mov %2, %0\n\t"
        "sub sp, #4\n\t"
        : "=r"(deref), "=r"(savedParam), "=r"(arr)
        : "r"(base), "r"(param_1)
    );

    Func_80a9cbc();

    {
    register s32 idxTmp __asm__("r3");
    __asm__ volatile (
        "mov %0, #0xe\n\t"
        "movs %1, #0xd8\n\t"
        "add %2, %2, #0x48\n\t"
        "mov %3, %5\n\t"
        "mov %4, %0\n\t"
        : "=r"(idxTmp), "=r"(field6), "+r"(arr), "=r"(ptr), "=r"(idx)
        : "r"(savedParam)
    );
    }

    do {
        register u16 val __asm__("r2");
        register s32 nz __asm__("r3");
        u8 *entry;

        val = *ptr;
        nz = val;
        __asm__ volatile ("" : "+r"(val), "+r"(nz));
        ptr++;
        __asm__ volatile ("" : "+r"(ptr));
        if (nz != 0 && (val & 0x200) != 0 && (entry = *arr) != 0) {
            u8 *info;
            u8 type;
            u16 y;

            u32 itemid = val & 0x1ff;
            __asm__ volatile ("str %0, [sp]" :: "r"(field6));
            info = _GetItemInfo(itemid);
            type = info[2];
            __asm__ volatile ("ldr %0, [sp]" : "=r"(field6));
            switch (type) {
            case 1:
                y = 0x20;
                break;
            case 2:
                y = 0x50;
                break;
            case 3:
                y = 0x40;
                break;
            case 4:
                y = 0x30;
                break;
            default:
                goto skip;
            }
            *(u16 *)(entry + 6) = field6;
            *(u16 *)(entry + 8) = y;
        skip:
            {
            register u8 *callArg __asm__("r0");
            callArg = entry;
            __asm__ volatile ("" : "+r"(callArg));
            __asm__ volatile ("str %0, [sp]" :: "r"(field6));
            Func_80a17c4(callArg);
            __asm__ volatile ("ldr %0, [sp]" : "=r"(field6));
            }
        }
        {
        register s32 cond __asm__("r3");
        __asm__ volatile (
            "mov %0, #1\n\t"
            "neg %0, %0\n\t"
            "add %1, %1, %0\n\t"
            "mov %0, %1\n\t"
            : "=r"(cond), "+r"(idx)
        );
        arr++;
        __asm__ volatile ("" : "+r"(arr));
        if (cond < 0) break;
        }
    } while (1);

    __asm__ volatile ("add sp, #4");
}
