extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

extern int __Random(void);

struct OvlFunc_923_2008cc0_Data
{
    int a;
    int b;
    int c;
    int d;
};

void OvlFunc_923_2008cc0(void)
{
    unsigned char *arg0 = (unsigned char *)__MapActor_GetActor(0);
    struct OvlFunc_923_2008cc0_Data data;
    int r;
    int dx;

    data.b = 7;
    if ((iwram_3001e40 & 1) == 0) {
        data.b = 5;
    }
    data.c = 0xcccc;
    data.d = 0xcccc;
    data.a = 0;

    r = (__Random() << 3) >> 16;
    dx = r * 13107;

    OvlFunc_common0_10c(
        *(int *)(arg0 + 8) + ((8 - (iwram_3001e40 & 0xf)) << 16),
        *(int *)(arg0 + 0xc) + (0xd0 << 13),
        *(int *)(arg0 + 0x10),
        0,
        -dx,
        0,
        0xb0 << 12,
        &data);
}
