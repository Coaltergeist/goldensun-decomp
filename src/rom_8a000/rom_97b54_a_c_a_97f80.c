typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern s32 Random(void);
extern void vec3_translate(s32 distance, s32 angle, s32 *position);
extern u32 Func_809ba34(u8 *actor);
extern void Func_809bb34(u8 *actor);

void Func_97f80(u8 *actor)
{
    s8 *state = (s8 *)(actor + 0x40);
    s32 position[3];
    s8 cur;

loop:
    cur = *state;
    if (cur != 0)
        goto not_zero;
    position[0] = *(s32 *)(actor + 0x14);
    position[2] = *(s32 *)(actor + 0x18);
    asm volatile(
        "bl Random\n\t"
        "mov r1, r0\n\t"
        "lsl r1, r1, #16\n\t"
        "mov r0, #0xf0\n\t"
        "mov r2, %0\n\t"
        "lsl r0, r0, #13\n\t"
        "lsr r1, r1, #16\n\t"
        "bl vec3_translate\n\t"
        :
        : "r"(position)
        : "r0", "r1", "r2", "r3", "r4", "lr", "memory");
    *(s32 *)(actor + 0xc) = position[0];
    *(s32 *)(actor + 0x10) = position[2];
    *(s32 *)(actor + 0x24) = 0x40000;
    *(s32 *)(actor + 0x20) = 0x40000;
    *(actor + 0x42) = 0;
    goto done;

not_zero:
    if (cur != 1)
        goto not_one;
    if (Func_809ba34(actor) != 0)
        return;
    (*state)++;
    goto loop;

not_one:
    if (cur != 2)
        goto not_two;
    {
        s32 v;

        *(s32 *)(actor + 0xc) = *(s32 *)(actor + 0x14);
        *(s32 *)(actor + 0x10) = *(s32 *)(actor + 0x18);
        v = 0x80 << 3;
        *(u16 *)(actor + 0x32) = v;
    }
    *(actor + 0x42) = 1;

done:
    (*state)++;
    return;

not_two:
    if (cur != 3)
        return;
    if (Func_809ba34(actor) != 0)
        return;
    Func_809bb34(actor);
}
