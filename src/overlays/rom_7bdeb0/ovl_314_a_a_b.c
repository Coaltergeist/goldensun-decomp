/* Cluster OvlFunc_934_200858c..OvlFunc_934_200858c extracted from goldensun/asm/overlays/rom_7bdeb0/ovl_314_a_a.s.
 *
 * Total .text for this TU = 164 bytes (= 0xa4).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bdeb0/ovl_314_a_a_a.o and asm/overlays/rom_7bdeb0/ovl_314_a_a_c.o in
 * goldensun/overlays/rom_7bdeb0/overlay.ld.
 */
// fakematch
extern unsigned int L1e48[] __asm__(".L1e48");
extern int ActorCmd_ARRAY_933__02009e88[];
extern void *OvlFunc_934_2008350(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_934_200858c(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L1e48[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    {
        register unsigned int lo __asm__("r1") = t << 16;
        stk[2] = *(int *)((char *)arg0 + 16) + lo;
    }
    res = OvlFunc_934_2008350(stk, arg0);
    if (res != 0) {
        int *p = *(int **)((char *)res + 0x50);
        register int *q __asm__("r2");
        register unsigned int i __asm__("r1");
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = ActorCmd_ARRAY_933__02009e88;
        i = 0;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L1e48[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    {
        register unsigned int lo __asm__("r1") = t << 16;
        stk[2] = *(int *)((char *)arg0 + 16) + lo;
    }
    if (__TestCollision(arg0, stk) > 0) {
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
done:
    return 0;
}
