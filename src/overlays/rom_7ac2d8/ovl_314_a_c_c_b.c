/* Cluster OvlFunc_924_2008758..OvlFunc_924_2008758 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_314_a_c_c.s.
 *
 * Total .text for this TU = 404 bytes (= 0x194).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_314_a_c_c_a.o and asm/overlays/rom_7ac2d8/ovl_314_a_c_c_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */
extern int L5da8[] __asm__(".L5da8");
extern unsigned int L5d50[] __asm__(".L5d50");
extern void *OvlFunc_924_2008630(int *, void *, void *);

int OvlFunc_924_2008758(void *arg0)
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
    obj = OvlFunc_924_2008630(&dir, (char *)arg0 + 4, arg0);
    if (obj == 0) {
        return 0;
    }
    *((unsigned char *)obj + 0x22) = 2;
    idx = *(int *)arg0;
    steps = 0;
    t2 = L5da8[idx * 4 + 1];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L5da8[idx * 4 + 3];
    if (t3 < 0) {
        t3 = -t3;
    }
    countY = (t2 + t3) >> 4;
    t2 = L5da8[idx * 4];
    if (t2 < 0) {
        t2 = -t2;
    }
    t3 = L5da8[idx * 4 + 2];
    if (t3 < 0) {
        t3 = -t3;
    }
    countX = (t2 + t3) >> 4;
    cp = cur;
    cp[0] = *(int *)((char *)obj + 8) + (L5d50[dir] & 0xffff0000);
    yy = *(int *)((char *)obj + 0xc);
    cp[1] = yy;
    cp[2] = *(int *)((char *)obj + 0x10) + (L5d50[dir] << 16);
    *(int *)((char *)arg0 + 0xc) = yy;
    for (;;) {
        *(int *)((char *)arg0 + 0x10) = cp[2] + (L5da8[*(int *)arg0 * 4 + 1] << 16);
        for (j = 0; j < countY; j++) {
            *(int *)((char *)arg0 + 8) = cp[0] + (L5da8[*(int *)arg0 * 4] << 16);
            for (i = 0; i < countX; i++) {
                if (__TestCollision(obj, (int *)((char *)arg0 + 8)) == 2) {
                    goto hit;
                }
                *(int *)((char *)arg0 + 8) += 0x80 << 13;
            }
            *(int *)((char *)arg0 + 0x10) += 0x80 << 13;
        }
        steps++;
        cur[0] += L5d50[dir] & 0xffff0000;
        cur[2] += L5d50[dir] << 16;
    }
hit:
    *((unsigned char *)obj + 0x22) = 0;
    if (steps == 0) {
        return 0;
    }
    t = L5d50[dir];
    m1 = (t & 0xffff0000) * steps;
    m2 = (t << 16) * steps;
    *(int *)((char *)arg0 + 8) = *(int *)((char *)obj + 8) + m1;
    *(int *)((char *)arg0 + 0xc) = *(int *)((char *)obj + 0xc);
    *(int *)((char *)arg0 + 0x10) = *(int *)((char *)obj + 0x10) + m2;
    return 1;
}
