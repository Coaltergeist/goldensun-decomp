/* Cluster OvlFunc_946_20082a8..OvlFunc_946_20082a8 extracted from goldensun/asm/overlays/rom_7ced6c/ovl_30_a_a.s.
 *
 * Total .text for this TU = 164 bytes (= 0xa4).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ced6c/ovl_30_a_a_a.o and asm/overlays/rom_7ced6c/ovl_30_a_a_c.o in
 * goldensun/overlays/rom_7ced6c/overlay.ld.
 */
extern unsigned int L315c[] __asm__(".L315c");
extern int L319c[] __asm__(".L319c");
extern void *OvlFunc_946_200806c(int *, void *);
extern int __TestCollision(void *, int *);

int OvlFunc_946_20082a8(void *arg0)
{
    int stk[3];
    unsigned int idx;
    unsigned int t;
    void *res;
    short val;
    int *q;
    unsigned int i;

    idx = *(unsigned short *)((char *)arg0 + 6) >> 12;
    t = L315c[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    res = OvlFunc_946_200806c(stk, arg0);
    if (res != 0) {
        int *p;
        i = 0;
        p = *(int **)((char *)res + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L319c;
        do {
            if (val == *q++) goto done;
            i++;
        } while (i <= 5);
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
    t = L315c[idx];
    stk[0] = *(int *)((char *)arg0 + 8) + (t & 0xffff0000);
    stk[1] = *(int *)((char *)arg0 + 12);
    t <<= 16;
    stk[2] = *(int *)((char *)arg0 + 16) + t;
    if (__TestCollision(arg0, stk) > 0) {
        *(int *)((char *)arg0 + 0x24) = 0;
        *(int *)((char *)arg0 + 0x2c) = 0;
        *(int *)((char *)arg0 + 0x38) = 0x80 << 24;
        *(int *)((char *)arg0 + 0x40) = 0x80 << 24;
    }
done:
    return 0;
}
