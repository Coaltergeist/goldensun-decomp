typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor_id);
extern u32 iwram_3001e40;

void OvlFunc_888_200a67c(u8 *output)
{
    register u8 *actor asm("r0");
    register int value asm("r3");

    actor = __MapActor_GetActor(8);
    asm volatile("" : "+r"(actor));

    value = *(int *)(actor + 8);
    *(int *)(output + 8) = value;
    *(int *)(output + 0x38) = value;
    value = *(int *)(actor + 0x0c);
    *(int *)(output + 0x0c) = value;
    *(int *)(output + 0x3c) = value;
    value = *(int *)(actor + 0x10) - 0x20000;
    *(int *)(output + 0x10) = value;
    *(int *)(output + 0x40) = value;

    switch (iwram_3001e40 & 3) {
    case 0:
        value = *(int *)(actor + 8) - 0x38000;
        *(int *)(output + 8) = value;
        *(int *)(output + 0x38) = value;
        break;
    case 1:
        value = *(int *)(actor + 8) + 0x30000;
        *(int *)(output + 8) = value;
        *(int *)(output + 0x38) = value;
        break;
    case 2:
        value = *(int *)(actor + 0x0c) + 0x20000;
        *(int *)(output + 0x0c) = value;
        *(int *)(output + 0x3c) = value;
        break;
    case 3:
        value = *(int *)(actor + 0x10);
        *(int *)(output + 0x10) = value;
        *(int *)(output + 0x40) = value;
        break;
    }
}
