/* Cluster OvlFunc_959_200a0cc..OvlFunc_959_200a0cc extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c_c_c.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c_c_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern int iwram_3001ebc;
extern GlobalState gState;
void OvlFunc_959_2009be4(int a);

void OvlFunc_959_200a0cc(void)
{
    unsigned int r3;
    unsigned int r2;
    unsigned short t;

    __MapActor_SetAnim(0, 1);
    __PlaySound(0x71);
    __MapActor_Emote(0x10, 0x100, 0x3c);
    OvlFunc_959_2009be4(0x10);

    r3 = (unsigned int)iwram_3001ebc;
    r2 = 0xe0;
    r2 <<= 1;
    r3 += r2;
    r2 += 0x40;
    *(unsigned int *)r3 = r2;

    r3 = (unsigned int)&gState;
    r2 += 0x2b;
    r3 += r2;
    r2 = 3;
    *(unsigned char *)r3 = r2;

    t = 0x62;
    do { t = (unsigned short)t; } while (0);
    __StartMapBattle(t, 2);

    t = 0x10;
    do { t = (unsigned short)t; } while (0);
    __MapActor_SetPos(t, 0, 0);
    __CutsceneEnd();
    __SetFlag(0x94b);
}
