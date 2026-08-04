/* Cluster OvlFunc_901_2008e90..OvlFunc_901_2008e90 extracted from goldensun/asm/overlays/rom_797990/ovl_314_c_c_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_797990/ovl_314_c_c_a_c_a_a.o and asm/overlays/rom_797990/ovl_314_c_c_a_c_a_c.o in
 * goldensun/overlays/rom_797990/overlay.ld.
 */
extern unsigned char *iwram_3001ebc;

extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern void __CutsceneWait(int);
extern void __ActorMessage(int, int);
extern int __CheckPartyItem(int);
extern int __GetFlag(int);
extern void __CutsceneEnd(void);

void OvlFunc_901_2008e90(void) {
    int r0;
    unsigned char *b;
    unsigned short *addr;
    unsigned short v;

    __CutsceneStart();
    __MessageID(0x1342);
    __MapActor_SetAnim(0x12, 0);
    __MapActor_TurnToFaceActor(0x12, 0, 0);
    __CutsceneWait(2);
    __ActorMessage(0x12, 0);
    __MapActor_SetAnim(0x12, 1);
    r0 = __CheckPartyItem(0xe7);
    if (r0 != -1) {
        r0 = __GetFlag(0x858);
        if (r0 == 0) {
            b = iwram_3001ebc;
            addr = (unsigned short *)(b + (0xb9 << 1));
            v = 1;
            *addr = v;
        }
    }
    __CutsceneEnd();
}
