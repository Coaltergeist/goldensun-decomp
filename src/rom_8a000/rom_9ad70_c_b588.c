extern unsigned char gState[];
extern unsigned char *GetFieldActor(int actorId);
extern unsigned int iwram_3001e40;

void Func_809b588(void)
{
    unsigned char *r3;
    unsigned int r2;
    unsigned char *object;
    unsigned char *data;
    unsigned int mod;
    register unsigned char v asm("r3");
    register unsigned char *p asm("r2");

    r3 = gState;
    r2 = 0xfa;
    r2 <<= 1;
    r3 += r2;
    object = *(unsigned char **)(GetFieldActor(*(int *)r3) + 0x50);
    data = *(unsigned char **)(object + 0x28);
    mod = iwram_3001e40 % 5;
    if (mod == 0) {
        p = object + 0x25;
        v = 1;
        *p = v;
        p++;
        v = 3;
    } else if (mod == 2) {
        v = 0;
        p = object + 0x25;
        data[5] = v;
        v = 1;
        *p = v;
        p++;
    } else {
        return;
    }
    *p = v;
}
