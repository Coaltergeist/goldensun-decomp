/* Cluster OvlFunc_961_200822c..OvlFunc_961_200822c extracted from goldensun/asm/overlays/rom_7ebdfc/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ebdfc/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7ebdfc/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7ebdfc/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
typedef struct { unsigned char _pad0[0x1c0]; int transition; unsigned char _pad1[4]; int transitionSpeed; } MapState;
extern MapState *iwram_3001ebc;
extern int OvlFunc_961_20080f8(void);

int OvlFunc_961_200822c(void)
{
    unsigned int r3;
    unsigned int r2;
    MapState *p;
    int iVar;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 0x5a) {
        __SetFlag(0x96f);
    }
    p = iwram_3001ebc;
    p->transition = 0x100;
    p->transitionSpeed = 0x18;
    iVar = __GetFlag(0x201);
    if (iVar != 0) {
        OvlFunc_961_20080f8();
        __MapActor_SetAnim(0x10, 4);
    }
    return 0;
}
