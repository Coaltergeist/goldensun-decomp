typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;
extern void Func_80167d8(void *slot);

typedef struct UiSlot {
    u8 *owner;
    u16 timer;
    u16 phase;
    u16 values[4];
    u16 field10;
    u16 argument;
    u16 field14;
    u16 field16;
    u16 field18;
    u16 field1a;
    u16 field1c;
    u16 field1e;
    u16 field20;
    u8 pad22[6];
} UiSlot;

void *Func_8016670(u8 *owner, unsigned int argument, int force)
{
    UiSlot *selected = 0;
    UiSlot *slot = (UiSlot *)(iwram_3001e8c + 0x620);
    unsigned int i = 0;

    for (;;) {
        if (i == 3)
            break;
        if (slot->owner == 0 || *(u16 *)(slot->owner + 0x14) != 0) {
            selected = slot;
            break;
        }
        slot++;
        i++;
    }

    if (selected != 0) {
        if (selected->owner == 0) {
            selected->phase = 0xa00;
            selected->owner = owner;
            selected->timer = 0x300;
        } else if (force == 0) {
            if (selected->phase == 0) {
                selected->phase = 0xa00;
            } else if (selected->phase < 0xd00) {
                selected->phase += 0xd00;
            } else {
                Func_80167d8(selected);
            }
            selected->timer = 0x300;
        }

        selected->field1e = 0x300;
        *(u16 *)(selected->owner + 0x14) = 0;
        selected->field16 = 15;
        selected->field1a = 10;
        selected->argument = argument;
        selected->field14 = 0;
        selected->field18 = 0;
        selected->field10 = 0;
        selected->field20 = 0;
        for (i = 0; i <= 3; i++)
            selected->values[i] = 0;
    }
    return selected;
}
