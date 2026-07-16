typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;

typedef struct UiSlot {
    u32 field00;
    u32 field04;
    u16 field08;
    u16 field0a;
    u16 field0c;
    u16 field0e;
    u16 field10;
    u16 field12;
    u16 field14;
    u16 field16;
    s16 timer;
    s16 duration;
    s16 x;
    s16 y;
    s16 width;
    s16 height;
} UiSlot;

extern u8 *iwram_3001e8c;
extern void Func_8017004(UiSlot *, int);
extern void Func_8016230(UiSlot *);
extern void ClearUIRegion(int, int, int, int);

void Func_8016f2c(void)
{
    register u8 *state asm("r7") = iwram_3001e8c;
    register UiSlot *slot asm("r5") = (UiSlot *)(state + 0x500);
    register int i asm("r8") = 0;
    register u32 active asm("r6");

    do {
        active = slot->field16;
        asm volatile("" : "+r"(state), "+r"(active));
        if (active != 0) {
            if (slot->timer != 0) {
                Func_8017004(slot, 0);
                slot->timer--;
            } else if (slot->duration != 0) {
                Func_8016230(slot);
            }
        } else if (slot->duration != 0) {
            if (slot->timer != slot->duration) {
                ClearUIRegion(slot->x, slot->y, slot->width, slot->height);
                {
                    register int save asm("r1") = 1;
                    register UiSlot *arg asm("r0") = slot;
                    asm volatile("" : "+r"(save), "+r"(arg));
                    Func_8017004(arg, save);
                }
                slot->timer++;
                {
                    register u32 one asm("r2") = 1;
                    register u8 *flag asm("r3") = state + 0xea3;
                    asm volatile("" : "+r"(one), "+r"(flag));
                    *flag = one;
                }
            } else {
                ClearUIRegion(slot->x, slot->y, slot->width, slot->height);
                slot->field00 = active;
                slot->field04 = active;
                slot->field08 = active;
                slot->field0a = active;
                slot->field0c = active;
                slot->field0e = active;
                slot->field10 = active;
                slot->field12 = active;
                slot->field14 = active;
                slot->field16 = active;
                slot->timer = active;
                slot->duration = active;
                slot->x = active;
                slot->y = active;
                slot->width = active;
                slot->height = active;
                state[0xea3] = 1;
            }
        }
        i++;
        slot++;
    } while (i != 8);
}
