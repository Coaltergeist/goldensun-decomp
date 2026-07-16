typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

#define REG_VCOUNT (*(volatile u16 *)0x04000006)
#define REG_DISPCNT (*(volatile u16 *)0x04000000)

typedef struct {
    u8 pad[0x104];
    u16 field104;
    u16 field106;
    u16 field108;
} ScreenState;

extern u8 iwram_3001e70[];

void Func_8090584(void)
{
    u32 vcount;
    ScreenState *s;
    u16 state;

    vcount = REG_VCOUNT;
    s = *(ScreenState **)iwram_3001e70;

loop:
    state = s->field108;
    switch (state) {
    case 3:
        if (vcount >= s->field104) {
            REG_DISPCNT = (REG_DISPCNT & 0xFFF8) | 2;
            s->field108 = 9;
        }
        break;
    case 2:
        if (vcount >= s->field106) {
            REG_DISPCNT = REG_DISPCNT & 0xFFF8;
            s->field108 = 9;
        }
        break;
    case 1:
        if (vcount >= s->field104) {
            REG_DISPCNT = (REG_DISPCNT & 0xFFF8) | 2;
            s->field108 += 1;
            goto loop;
        }
        if (vcount >= s->field106) {
            REG_DISPCNT = REG_DISPCNT & 0xFFF8;
            s->field108 = 3;
            goto loop;
        }
        break;
    case 0:
        if (vcount <= 0x9E) {
            s->field108 = 1;
            goto loop;
        }
        break;
    }
}
