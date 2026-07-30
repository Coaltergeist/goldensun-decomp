/* Cluster OvlFunc_959_2009e2c..OvlFunc_959_2009e2c extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c_c.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;
extern void OvlFunc_959_2009be4(int);
extern void __Func_8091eb0(int, int);

void OvlFunc_959_2009e2c(void)
{
    unsigned int *p;
    unsigned char *b;

    __MapActor_SetAnim(0, 1);
    __PlaySound(0x71);
    __MapActor_Emote(0xb, 0x100, 0x3c);
    OvlFunc_959_2009be4(0xb);
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    b = (unsigned char *)&gState;
    b += 0x22b;
    *b = 3;
    __Func_8091eb0(0x62, 2);
    {
        unsigned short t2 = 0xb;
        do { t2 = (unsigned short) t2; } while (0);
        __MapActor_SetPos(t2, 0, 0);
    }
    __CutsceneEnd();
    __SetFlag(0x949);
}
