/* Cluster OvlFunc_936_2008394..OvlFunc_936_2008394 extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
extern void *__MapActor_GetActor(int);
extern void __Func_80b0278(int, int);
extern void __Func_80916b0(void);
extern void __Func_8092b94(int);
extern void __Func_8092f84(int, int);
extern void __Func_8091750(void);

void OvlFunc_936_2008394(void)
{
    unsigned char *p;
    unsigned int v;
    p = (unsigned char *)__MapActor_GetActor(0);
    v = (*(unsigned short *)(p + 6) + 0xffffe000) << 16;
    if (v > (0x80 << 24)) {
        __Func_80b0278(0x16, 0x16);
    } else {
        __Func_80916b0();
        __Func_8092b94(0x1acf);
        __Func_8092f84(0x16, 0);
        __Func_8091750();
    }
}
