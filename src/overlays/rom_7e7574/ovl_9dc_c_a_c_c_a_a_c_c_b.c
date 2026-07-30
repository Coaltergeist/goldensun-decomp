/* Cluster OvlFunc_959_2009dc4..OvlFunc_959_2009dc4 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c_a_a_c_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;
void OvlFunc_959_2009be4(int a1);
void __Func_8091eb0(int a1, int a2);

void OvlFunc_959_2009dc4(void)
{
    unsigned int *p;
    GlobalState *gs;

    __MapActor_SetAnim(0, 1);
    __PlaySound(0x71);
    __MapActor_Emote(0xf, 0x100, 0x3c);
    OvlFunc_959_2009be4(0xf);
    p = *(unsigned int **)iwram_3001ebc;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    gs = &gState;
    *(unsigned char *)((char *)gs + 0x22b) = 3;
    __Func_8091eb0(0x62, 2);
    {
        unsigned short t = 0xf;
        do { t = (unsigned short) t; } while (0);
        __MapActor_SetPos((int) t, 0, 0);
    }
    __CutsceneEnd();
    __SetFlag(0x94c);
}
