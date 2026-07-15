typedef unsigned char u8;

typedef struct SpriteObject { u8 pad0[5], flags5, pad6[11], flags11; } SpriteObject;
typedef struct BattleActorData { u8 pad0[0x50]; SpriteObject **objects; u8 kind; } BattleActorData;
extern BattleActorData **GetBattleActor(void *actor);

void Func_80c0f98(void *actor, unsigned variant)
{
    register unsigned choice asm("r5") = variant;
    BattleActorData **slot = GetBattleActor(actor);
    BattleActorData *data;
    if (slot == 0) return;
    data = *slot;
    if (data == 0) return;
    switch (data->kind & 0xf) {
    case 1: {
        register SpriteObject *object asm("r4"); register int mask asm("r2");
        register unsigned bits asm("r0"), firstFlags asm("r1"), combined asm("r3");
        asm volatile("ldr r4, [r0, #0x50]\n\tmov r2, #0xd\n\tmov r3, #3\n\tldrb r1, [r4, #5]\n\tneg r2, r2\n\tand r5, r3\n\tmov r3, r2\n\tlsl r0, r5, #2\n\tand r3, r1\n\torr r3, r0" : "=r" (object), "=r" (mask), "=r" (bits), "=r" (firstFlags), "=r" (combined) : "r" (data), "r" (choice));
        object->flags5 = combined;
        asm volatile("ldrb r3, [r4, #0x11]\n\tand r2, r3\n\torr r2, r0\n\tstrb r2, [r4, #0x11]" : "+r" (mask) : "r" (object), "r" (bits) : "r3");
        break;
    }
    case 2: {
        register int index asm("r6"), mask asm("r5"); register unsigned bits asm("r0"); register SpriteObject **objects asm("r1");
        asm volatile("mov r3, #3\n\tand r5, r3\n\tldr r1, [r0, #0x50]\n\tlsl r0, r5, #2\n\tmov r5, #0xd\n\tmov r6, #0\n\tneg r5, r5" : "=r" (index), "=r" (mask), "=r" (bits), "=r" (objects) : "r" (data), "r" (choice) : "r3");
        for (;;) {
            register SpriteObject *object asm("r4") = *objects++; register unsigned firstFlags asm("r2"), combined asm("r3");
            if (object == 0) return;
            asm volatile("ldrb r2, [r4, #5]\n\tmov r3, r5\n\tand r3, r2\n\torr r3, r0" : "=r" (firstFlags), "=r" (combined) : "r" (object), "r" (mask), "r" (bits));
            asm volatile("ldrb r2, [r4, #0x11]\n\tstrb r3, [r4, #5]\n\tmov r3, r5\n\tand r3, r2\n\torr r3, r0\n\tadd r6, #1\n\tstrb r3, [r4, #0x11]" : "+r" (index) : "r" (object), "r" (combined), "r" (mask), "r" (bits) : "r2", "r3");
            if (index > 3) break;
        }
        break;
    }
    }
}
