/* Cluster OvlFunc_881_200b7d8..OvlFunc_881_200b7d8 extracted from goldensun/asm/overlays/rom_77a7c8/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77a7c8/ovl_30_c_c_a_a.o and asm/overlays/rom_77a7c8/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_77a7c8/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char iwram_3001ebc[];   /* @ 0x03001EBC */
extern GlobalState gState;   /* GlobalState @ 0x02000240 */

void OvlFunc_881_200b7d8(void)
{
    void *base;
    short *p;
    unsigned char *gs;
    int arg0;
    unsigned char *actor;
    unsigned short zero;
    unsigned short a0_flagbyte;
    unsigned long long t1;
    unsigned short a0_b;

    base = *(void **)iwram_3001ebc;
    p = (short *)((char *)base + (0xc1 << 1));
    if (*p == 0x63) {
        zero = 0;
        *p = zero;
    }
    __ClearFlag(0xbc << 2);
    __SetFlag(0x2f1);

    a0_flagbyte = 0xbe << 2;
    do { a0_flagbyte = (unsigned short) a0_flagbyte; } while (0);
    __SetFlagByte(a0_flagbyte, 0);

    t1 = 0x62;
    do { t1 = (unsigned long) t1; } while (0);
    __StartMapBattle((unsigned long) t1, 5);

    gs = (unsigned char *)&gState;
    gs[0x22b] = 3;

    a0_b = 0x62;
    do { a0_b = (unsigned short) a0_b; } while (0);
    __StartMapBattle(a0_b, 7);

    gs += (0xfa << 1);
    arg0 = *(unsigned int *)gs;
    actor = (unsigned char *)__MapActor_GetActor(arg0);
    actor[0x55] = 2;
}
