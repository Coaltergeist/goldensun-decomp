/* Cluster OvlFunc_927_2008474..OvlFunc_927_2008474 extracted from goldensun/asm/overlays/rom_7b4558/ovl_30_a_a_c_c.s.
 *
 * Total .text for this TU = 404 bytes (= 0x194).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b4558/ovl_30_a_a_c_c_a.o and asm/overlays/rom_7b4558/ovl_30_a_a_c_c_c.o in
 * goldensun/overlays/rom_7b4558/overlay.ld.
 */
extern int gScript_884__0200af50[];
extern unsigned int L2ef8[] __asm__(".L2ef8");
extern void *OvlFunc_927_200834c(int *, void *, void *);

int OvlFunc_927_2008474(void *arg0)
{
    int dir;
    int cur[3];
    void *obj;
    int idx;
    int steps;
    int countY;
    int countX;
    int t2;
    int t3;
    int yy;
    int *cp;
    int i;
    int j;
    unsigned int t;
    int m1;
    int m2;
    *(int *)((char *)arg0 + 0x14) = 0;
    obj = OvlFunc_927_200834c(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = gScript_884__0200af50[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = gScript_884__0200af50[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = gScript_884__0200af50[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = gScript_884__0200af50[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L2ef8[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L2ef8[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (gScript_884__0200af50[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (gScript_884__0200af50[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L2ef8[dir] & 0xffff0000;
        cur[2] += L2ef8[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L2ef8[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}
