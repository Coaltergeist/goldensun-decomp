typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

void Func_80b0958(u8 *param_1)
{
    u8 *obj;
    s32 delta;
    s32 quarter;
    u16 cur;

    obj = *(u8 **)param_1;
    if (obj == 0) {
        return;
    }

    cur = *(u16 *)(obj + 6);
    delta = cur - *(s16 *)(param_1 + 8);
    quarter = delta / 4;
    if (quarter < 0) {
        quarter = -quarter;
    }
    if (delta > 0) {
        if (quarter != 0) {
            *(u16 *)(obj + 6) = cur - quarter;
        } else {
            *(u16 *)(obj + 6) = cur + 0xffff;
        }
    } else {
        if (delta >= 0) {
            goto second;
        }
        if (quarter != 0) {
            *(u16 *)(obj + 6) = cur + quarter;
        } else {
            *(u16 *)(obj + 6) = cur + 1;
        }
    }
    asm volatile(
        "ldrh r3, [%0, #6]\n\t"
        "ldr r2, =0x1ff\n\t"
        "ldrh r1, [%0, #22]\n\t"
        "and r2, r3\n\t"
        "ldr r3, =0xfffffe00\n\t"
        "and r3, r1\n\t"
        "orr r3, r2\n\t"
        "strh r3, [%0, #22]\n\t"
        :
        : "r"(obj)
        : "r1", "r2", "r3", "memory");

second:
    cur = *(u16 *)(obj + 8);
    delta = cur - *(s16 *)(param_1 + 0xa);
    quarter = delta / 4;
    if (quarter < 0) {
        quarter = -quarter;
    }
    if (delta > 0) {
        if (quarter != 0) {
            *(u16 *)(obj + 8) = cur - quarter;
        } else {
            *(u16 *)(obj + 8) = cur + 0xffff;
        }
    } else {
        if (delta >= 0) {
            return;
        }
        if (quarter != 0) {
            *(u16 *)(obj + 8) = cur + quarter;
        } else {
            *(u16 *)(obj + 8) = cur + 1;
        }
    }
    *(u8 *)(obj + 0x14) = (u8)*(volatile u16 *)(obj + 8);
}
