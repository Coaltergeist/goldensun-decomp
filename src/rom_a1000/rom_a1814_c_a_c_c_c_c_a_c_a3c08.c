#include "gba/types.h"
extern u8 *iwram_3001f2c;
extern u32 iwram_3001e40;
extern int _CanEquipItem(int item, int character);
extern void _Sprite_SetAnim(void *sprite, int animation);

void Func_80a3c08(void)
{
    register u8 *state asm("r6");
    register u32 flags asm("r3");
    register int count asm("r3");
    asm volatile ("ldr r3, =iwram_3001f2c\n\tldr r6, [r3]" : "=r" (state) : : "r3", "memory");
    asm volatile ("ldr r3, =iwram_3001e40\n\tldr r3, [r3]" : "=r" (flags) : : "memory");
    asm volatile ("mov r2, #0x1f\n\tand r3, r2" : "+r" (flags) : : "r2");
    if (flags == 0) {
        asm volatile ("ldr r1, =0x219\n\tadd r3, r6, r1\n\tldrb r3, [r3]" : "=r" (count) : "r" (state) : "r1", "memory");
    if (count != 0) {
        register int counter asm("r7") = 0;
        for (;;) {
            register int index asm("r5");
            register int item asm("r0");
            register int character asm("r1");
            register void *sprite asm("r0");
            int canEquip;
            asm volatile (".Lloop_808:");
            asm volatile ("asr %0, %1, #24" : "=r" (index) : "r" (counter));
            asm volatile (
                "mov r2, #0x82\n\t"
                "lsl r3, %2, #1\n\t"
                "lsl r2, #2\n\t"
                "mov r1, #0xbc\n\t"
                "add r3, r2\n\t"
                "lsl r1, #1\n\t"
                "ldrh r0, [%3, r3]\n\t"
                "add r3, %3, r1\n\t"
                "ldrh r3, [r3]\n\t"
                "ldr r1, .Lmask_808\n\t"
                "and r1, r3"
                : "=r" (item), "=r" (character)
                : "r" (index), "r" (state)
                : "r2", "r3", "memory");
            canEquip = _CanEquipItem(item, character);
            asm volatile ("cmp r0, #0\n\tbeq .Lno_equip_808");
            asm volatile (
                "mov r2, #0x8a\n\t"
                "lsl r3, %1, #2\n\t"
                "lsl r2, #1\n\t"
                "add r3, r2\n\t"
                "ldr r0, [%2, r3]"
                : "=r" (sprite) : "r" (index), "r" (state) : "r2", "r3", "memory");
            _Sprite_SetAnim(sprite, 3);
            asm volatile ("b .Lnext_808\n\t.align 2, 0\n.Lmask_808:\n\t.word 0x1ff\n\t.ltorg\n.Lno_equip_808:");
            asm volatile (
                "mov r1, #0x8a\n\t"
                "lsl r1, #1\n\t"
                "lsl r3, %1, #2\n\t"
                "add r3, r1\n\t"
                "ldr r0, [%2, r3]"
                : "=r" (sprite) : "r" (index), "r" (state) : "r1", "r3", "memory");
            _Sprite_SetAnim(sprite, 1);
            asm volatile (".Lnext_808:");
            asm volatile (
                "mov r2, #0x80\n\t"
                "lsl r2, #17\n\t"
                "ldr r1, =0x219\n\t"
                "add r3, r7, r2\n\t"
                "mov r7, r3\n\t"
                "add r3, r6, r1\n\t"
                "ldrb r3, [r3]\n\t"
                "asr r2, r7, #24\n\t"
                "cmp r2, r3\n\t"
                "blt .Lloop_808"
                : "+r" (counter) : "r" (state) : "r1", "r2", "r3", "memory");
            break;
        }
    }
    }
}
