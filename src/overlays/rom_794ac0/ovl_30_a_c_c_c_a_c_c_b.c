// fakematch
/* Cluster OvlFunc_899_2009e80..OvlFunc_899_2009e80 extracted from goldensun/asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a_c_c.s.
 *
 * Total .text for this TU = 208 bytes (= 0xd0).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a_c_c_a.o and asm/overlays/rom_794ac0/ovl_30_a_c_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_794ac0/overlay.ld.
 */
extern int __MessageID(int);
extern void __CutsceneWait(int);
extern void __Func_80925cc(int, int);
extern void __Func_8092adc(int, int, int);
extern void __MapActor_Surprise(int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetBehavior(int, int);
extern void __MapActor_WaitScript(int);
extern int __MapActor_GetActor(int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void OvlFunc_899_200c5f4(int, int);
extern unsigned char gScript_899__0200d830[];
extern unsigned char gScript_899__0200d560[];
extern int _MSG_12a0;

void OvlFunc_899_2009e80(void) {
    int a;
    unsigned int w;
    unsigned int z;
    unsigned short v;
    int n6;
    __CutsceneWait(0x1e);
    __Func_80925cc(0x18, 1);
    __CutsceneWait(0x14);
    __MessageID((int) (&_MSG_12a0));
    OvlFunc_899_200c5f4(0x18, 0x14);
    z = 0x14;
    __asm__ volatile ("" : : "r" (z));
    __Func_8092adc(0x19, 0, z);
    w = 0x81;
    {
        register unsigned int rq __asm__("r0") = 0x19;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 1;
        __MapActor_Surprise(rq, w);
    }
    __Func_80925cc(0x19, 2);
    OvlFunc_899_200c5f4(0x19, 0x14);
    __MapActor_DoAnim(0x18, 4);
    __CutsceneWait(0x14);
    OvlFunc_899_200c5f4(0x18, 0x14);
    w = 0x80;
    z = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0x18;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 11;
        __asm__ volatile ("" : "+r"(w));
        z <<= 10;
        __MapActor_SetSpeed(rq, w, z);
    }
    w = 0xe0;
    __asm__ volatile ("" : "+r"(w));
    z = 0xe0;
    z <<= 9;
    {
        register unsigned int rq __asm__("r0") = 0x19;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 10;
        __MapActor_SetSpeed(rq, w, z);
    }
    __MapActor_SetBehavior(0x19, (int) gScript_899__0200d830);
    __MapActor_SetBehavior(0x18, (int) gScript_899__0200d560);
    __MapActor_WaitScript(0x18);
    a = __MapActor_GetActor(0x18);
    v = 1;
    a += 0x64;
    *(unsigned short *)a = v;
    a = __MapActor_GetActor(0x19);
    v = 3;
    a += 0x64;
    *(unsigned short *)a = v;
    n6 = 0x2c;
    __Func_8010704(0xe, 0x30, 4, 1, 0xe, n6);
}
