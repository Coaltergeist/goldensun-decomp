/* Cluster OvlFunc_902_2008338..OvlFunc_902_2008380 extracted from goldensun/asm/overlays/rom_7987ac/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 144 bytes (= 0x90).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7987ac/ovl_30_c_c_a_a.o and asm/overlays/rom_7987ac/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7987ac/overlay.ld.
 * Reconciled conflicting decls of __Func_8092b94: kept `extern void __Func_8092b94(int a);`, dropped `extern void __Func_8092b94(int);`.
 * Reconciled conflicting decls of __ActorMessage: kept `extern void __ActorMessage(int a, int b);`, dropped `extern void __ActorMessage(int, int);`.
 */
extern void __CutsceneStart(void);
extern int __Func_8078500(void);
extern void __Func_8092548(int a, int b);
extern void __CutsceneWait(int a);
extern void __Func_8092b94(int a);
extern void __ActorMessage(int a, int b);
extern void __Func_808f1c0(int a, int b);
extern void __Func_8091a58(int a, int b);
extern void __Func_8091750(void);
extern unsigned char *__MapActor_GetActor(int);
extern void __Func_80b0278(int, int);

void OvlFunc_902_2008338(void) {
    __CutsceneStart();
    if (__Func_8078500() == 0) {
        __Func_8092548(0x12, 4);
        __CutsceneWait(0x14);
        __Func_8092b94(0x1384);
        __ActorMessage(0x12, 0);
    } else {
        __Func_808f1c0(0xe7, 3);
        __Func_8091a58(0xe7, 0);
    }
    __Func_8091750();
}
void OvlFunc_902_2008380(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(4, 0x13);
    } else {
        __Func_8092b94(0x1ce2);
        __ActorMessage(0x13, 0);
    }
    __Func_8091750();
}
