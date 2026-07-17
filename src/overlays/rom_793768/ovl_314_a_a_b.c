/* Cluster OvlFunc_898_20083ac..OvlFunc_898_20083ac extracted from goldensun/asm/overlays/rom_793768/ovl_314_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_793768/ovl_314_a_a_a.o and asm/overlays/rom_793768/ovl_314_a_a_c.o in
 * goldensun/overlays/rom_793768/overlay.ld.
 */
extern unsigned int iwram_3001e8c;
extern void OvlFunc_898_2009674(unsigned char *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);

unsigned int OvlFunc_898_20083ac(unsigned char *arg0)
{
    unsigned char *p0;
    unsigned char *p1;
    unsigned int actor;
    int iVar3;
    int iVar4;

    p0 = (unsigned char *)iwram_3001e8c;
    p1 = *(unsigned char **)((char *)&iwram_3001e8c + 0x30);
    iVar4 = 0;
    iVar3 = 0x12;
    if (*(int *)(arg0 + 0x38) == (0x80 << 24)) {
        return 0;
    }
    actor = __MapActor_GetActor(0);
    if ((*(short *)(p1 + 0x178) != 0) || (*(unsigned char *)(p0 + 0xea4) != 0)) {
        iVar3 = 0x1a;
        iVar4 = 1;
    }
    OvlFunc_898_2009674(arg0, actor, iVar3, iVar4);
    return 0;
}
