/* Cluster OvlFunc_947_2008d78..OvlFunc_947_2008da8 extracted from goldensun/asm/overlays/rom_7d0e88/ovl_314.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d0e88/ovl_314_a.o and asm/overlays/rom_7d0e88/ovl_314_c.o in
 * goldensun/overlays/rom_7d0e88/overlay.ld.
 * Reconciled conflicting decls of __Func_80030f8: kept `extern void __Func_80030f8(unsigned int);`, dropped `extern int __Func_80030f8(int);`.
 */
extern void __Func_80030f8(unsigned int);

void OvlFunc_947_2008d78(unsigned int arg0)
{
    int *r5;
    int r6;

    r5 = (int *)arg0;
    r6 = 0x3c;
    while (r6 != 0) {
        __Func_80030f8(1);
        if (r5[3] == r5[5])
            break;
        r6--;
    }
    r5[10] = 0;
    r5[15] = 0x80 << 24;
    r5[3] = r5[5];
}
void OvlFunc_947_2008da8(unsigned int arg0, unsigned int arg1)
{
    int *r5;
    int r7;
    int r6;

    r5 = (int *)arg0;
    r7 = (int)arg1;
    r6 = 0x3c;
    while (r6 != 0) {
        __Func_80030f8(1);
        if (r5[3] <= r5[5])
            break;
        if (r5[3] <= r7)
            break;
        r6--;
    }
    r5[10] = 0;
    r5[15] = 0x80 << 24;
}
