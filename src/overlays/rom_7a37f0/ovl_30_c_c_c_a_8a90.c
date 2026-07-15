typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct SpawnEntry {
    s16 actorType;
    s16 x;
    s16 y;
    s16 alternate;
    u8 *actor;
} SpawnEntry;

extern u8 *__CreateActor(int, int, int, int);
extern void __Actor_SetAnim(u8 *, int);
extern void __Actor_SetSpriteFlags(u8 *, int);
extern int __Func_8011f54(int, int, int);
extern int __Func_8011f54_abi(void) asm("__Func_8011f54");

void OvlFunc_916_2008a90(SpawnEntry *entry)
{
    while (entry->actorType != -1) {
        int x;
        int y;
        u8 *actor;

        if (entry->alternate == 0) {
            x = entry->x * 0x100000 + 0x200000;
            y = entry->y * 0x100000 + 0x80000;
        } else {
            x = entry->x * 0x100000 + 0x80000;
            y = entry->y * 0x100000 + 0x200000;
        }
        actor = __CreateActor(entry->actorType, x, 0, y);
        if (actor == 0)
            break;

        entry->actor = actor;
        __Actor_SetAnim(actor, 1);
        __Actor_SetSpriteFlags(actor, 0);
        actor[0x59] = 0;
        asm volatile("mov r3, #0x20\n\tstrh r3, [r5, #0x20]"
                     : : : "r3", "memory");
        {
            int offset;
            asm volatile("mov r0, #0\n\tmov r3, #0xa\n\t"
                         "ldrsh r1, [r5, r3]\n\tmov r3, #0x12\n\t"
                         "ldrsh r2, [r5, r3]"
                         : : : "r0", "r1", "r2", "r3");
            offset = __Func_8011f54_abi() << 16;
            *(int *)(actor + 0xc) += offset;
            *(int *)(actor + 0x14) = offset;
        }
        entry++;
    }
}
