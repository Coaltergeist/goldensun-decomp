typedef signed short s16;

typedef struct {
    char _pad000[0x16c];
    s16 eventValue;
} GameState;

extern GameState *iwram_3001ebc;
extern int __MapActor_GetActor(int);
extern int __GetFlag(int);
extern void OvlFunc_959_2008f30(void);

void OvlFunc_959_20099e8(void)
{
    int *p;
    int a, b;

    p = (int *)__MapActor_GetActor(0);
    if (__GetFlag(0x35b) == 0) {
        a = p[2] / 0x100000;
        b = p[4] / 0x100000;
        if (a == 0x2b && b > 0x1c && b <= 0x1f) {
            iwram_3001ebc->eventValue = 0x29;
            OvlFunc_959_2008f30();
        }
    }
}
