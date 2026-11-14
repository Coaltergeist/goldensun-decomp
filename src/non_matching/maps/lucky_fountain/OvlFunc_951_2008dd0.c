/* Remaining diff: target loads 0 from a trailing literal pool word (.word 0) at +0x26
 * for p[0x55] = 0 / base[0x26] = 0 instead of `movs r2, #0`. */
extern unsigned char *__MapActor_GetActor(int);
extern void __Actor_SetAnimSpeed(void *, int);

void OvlFunc_951_2008dd0(int actor, unsigned int *data, int val2, int idByte, int animSpeed)
{
    unsigned char *p;
    unsigned char *base;
    unsigned char *base2;
    unsigned int entry;
    unsigned char flags;
    int mask;
    int byteval;
    int cnt;

    p = __MapActor_GetActor(actor);
    if (p != 0) {
        *(unsigned int *)(p + 8) = *data++;
        *(unsigned int *)(p + 0xc) = *data++;
        *(unsigned int *)(p + 0x10) = *data;
        *(unsigned short *)(p + 6) = val2;
        p[0x55] = 0;
        base = *(unsigned char **)(p + 0x50);
        base[0x26] = 0;
        __Actor_SetAnimSpeed(p, animSpeed);
    }
    base2 = *(unsigned char **)(p + 0x50);
    byteval = base2[0x27];
    if (byteval != 0) {
        mask = 0xff;
        base2 += 0x28;
        cnt = byteval;
        do {
            entry = *(unsigned int *)base2;
            base2 += 4;
            if (*(unsigned char *)(entry + 5) != idByte) {
                *(unsigned char *)(entry + 5) = idByte;
                flags = *(unsigned char *)(entry + 0x16);
                flags |= mask;
                *(unsigned char *)(entry + 0x16) = flags;
            }
            cnt--;
        } while (cnt != 0);
    }
}
