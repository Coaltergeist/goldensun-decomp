/* Cluster Func_8017464..Func_8017464 extracted from goldensun/asm/rom_15000/rom_15e8c_c_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_c_a_c_a_a.o and asm/rom_15000/rom_15e8c_c_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *iwram_3001e8c;
extern int UploadSpriteGFX(int slot, unsigned int size, unsigned char *gfx);
extern void StartTask(void *task, int priority);
extern void Func_801789c(void);

void Func_8017464(int param_1)
{
    unsigned char *r5;
    unsigned short gfxRes;
    unsigned short *pA;
    unsigned short vA;
    unsigned short *pB;
    unsigned short vB;
    unsigned short *pC;
    unsigned short vC;
    unsigned short *pD;
    unsigned short vD;
    unsigned short *pE;
    int prio;

    r5 = (unsigned char *)iwram_3001e8c;
    if (param_1 != 0) {
        gfxRes = (unsigned short)UploadSpriteGFX(0x5f, 0x80 << 6, 0);
        *(unsigned short *)(r5 + 0x12b8) = gfxRes;
    }
    pA = (unsigned short *)(r5 + 0x12b0);
    vA = 9;
    *pA = vA;
    pB = (unsigned short *)(r5 + 0xea8);
    vB = 10;
    *pB = vB;
    pC = (unsigned short *)(r5 + 0xeac);
    vC = 0;
    *pC = vC;
    pD = (unsigned short *)(r5 + 0xeae);
    vD = 15;
    *pD = vD;
    pE = (unsigned short *)(r5 + 0x12b2);
    *pE = vC;
    prio = 0xc8 << 4;
    StartTask(Func_801789c, prio);
}
