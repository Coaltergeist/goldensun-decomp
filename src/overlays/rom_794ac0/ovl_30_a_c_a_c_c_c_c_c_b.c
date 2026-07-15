/* Cluster OvlFunc_899_200882c..OvlFunc_899_200882c extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_a_c_c_c_c_c.s.
 *
 * Total .text for this TU = 240 bytes (= 0xf0).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_a_c_c_c_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_a_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern int bytes(int);

extern int __GetFlag(int);
extern void __SetFlag(int);
extern int __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __Func_8092adc(int, int, int);
extern void __Func_80925cc(int, int);
extern void __Func_8092c40(int, int);
extern int __Func_8091c7c(int, int);
extern int __Func_8078500(void);
extern void __Func_8091a58(int, int);
extern void OvlFunc_899_200c5f4(int, int);
extern void OvlFunc_899_200c63c(int, int, int);
extern void OvlFunc_899_200c624(int, int, int);
extern unsigned char *iwram_3001ebc;
extern int _MSG_1360;

void OvlFunc_899_200882c(void) {
    unsigned char *m;
    unsigned char *b;
    int x;

    __CutsceneStart();
    if (!({ x = 0x857; __asm__("" : "+r"(x)); __GetFlag(x); })) {
        m = (unsigned char *)&_MSG_1360;
        __MessageID((int)m);
        OvlFunc_899_200c5f4(0x10, 0x14);
        OvlFunc_899_200c63c(0x10, 3, 0x14);
        OvlFunc_899_200c5f4(0x10, 0x1e);
        __Func_8092adc(0x10, 0, 0);
        __CutsceneWait(0x1e);
        __Func_80925cc(0x10, 2);
        __CutsceneWait(0x1e);
        OvlFunc_899_200c624(0, 0x10, 0x14);
        {
            unsigned int p2 = 0x14;
            OvlFunc_899_200c63c(0x10, 3, p2);
        }
        b = iwram_3001ebc;
        b += 0xec << 1;
        *(unsigned short *)b = *(unsigned short *)b + 1;
        if (__Func_8078500() == 0) {
            __MessageID((int)(m + 3));
            OvlFunc_899_200c5f4(0x10, 0x14);
            __CutsceneEnd();
            return;
        }
        __SetFlag(0x857);
        __Func_8091a58(0xbd, 0);
    }
    __MessageID(0x1364);
    __Func_8092c40(0x10, 0);
    __CutsceneWait(0x14);
    if (__Func_8091c7c(0, 0) != 0) {
        b = iwram_3001ebc;
        b += 0xec << 1;
        *(unsigned short *)b = *(unsigned short *)b + 1;
    }
    __ActorMessage(0x10, 0);
    __CutsceneEnd();
}
