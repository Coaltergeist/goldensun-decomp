typedef unsigned short u16;

extern inline void label_reservation_1(int value)
{
    if (value)
        value++;
}

extern inline void label_reservation_2(int value)
{
    if (value)
        value++;
}

#define RESERVE_LABELS(n) \
extern inline void label_reservation_##n(int value) \
{ \
    if (value) \
        value++; \
}

RESERVE_LABELS(3)
RESERVE_LABELS(4)
RESERVE_LABELS(5)
RESERVE_LABELS(6)
RESERVE_LABELS(7)
RESERVE_LABELS(8)
RESERVE_LABELS(9)
RESERVE_LABELS(10)
RESERVE_LABELS(11)
RESERVE_LABELS(12)
RESERVE_LABELS(13)
RESERVE_LABELS(14)
RESERVE_LABELS(15)
RESERVE_LABELS(16)
RESERVE_LABELS(17)
RESERVE_LABELS(18)
RESERVE_LABELS(19)
RESERVE_LABELS(20)
RESERVE_LABELS(21)
RESERVE_LABELS(22)

extern u16 L33 asm(".L33");
extern u16 L22 asm(".L22");
extern u16 L36 asm(".L36");
extern void *L37 asm(".L37");
extern u16 L46 asm(".L46");
extern u16 L24 asm(".L24");
extern int L25 asm(".L25");
extern const char L11[] asm(".L11");
extern const char L2[] asm(".L2");
extern const char L12[] asm(".L12");
extern const char L3[] asm(".L3");
extern const char L13[] asm(".L13");

extern void OvlFunc_common1_920(void);
extern void __StartTask(void (*function)(void), int priority);

void OvlFunc_common1_e10(int type, int direction)
{
    const char *data;

    L33 = type;
    L22 = direction << 4;
    __StartTask(OvlFunc_common1_920, 0xc80);

    data = L11;
    if (type == 2)
        data = L2;
    if (type == 4)
        data = L12;
    if (type == 3) {
        if (direction != 0)
            data = L3;
        else
            data = L13;
    }

    L36 = 0;
    L37 = (void *)data;
    L46 = 0;
    L24 = 0;
    L25 = 0;
}
