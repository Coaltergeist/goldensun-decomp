/* Cluster OvlFunc_956_2008b30..OvlFunc_956_2008b30 extracted from goldensun/asm/overlays/rom_7e0928/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e0928/ovl_30_c_c_a_c_a.o and asm/overlays/rom_7e0928/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_7e0928/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

void OvlFunc_956_2008b30(void)
{
    unsigned char *base;
    unsigned char *actor;
    unsigned int z;

    base = (unsigned char *)&gState;
    actor = (unsigned char *)__MapActor_GetActor(*(unsigned int *)(base + (0xfa * 2)));
    if (*(int *)(actor + 8) > 0x2980000) {
        *(int *)(actor + 8) = 0x2980000;
    }
    *(int *)(actor + 0x34) = 0x10000;
    *(int *)(actor + 0x30) = 0x20000;
    __Actor_SetAnim((int)actor, 5);
    z = *(unsigned int *)(actor + 0x10) & 0xfff00000;
    __Actor_TravelTo((int)actor,
                    *(int *)(actor + 8),
                    *(int *)(actor + 0xc),
                    z + 0xc0000);
    __Actor_WaitMovement((int)actor);
    __MapActor_Surprise(*(unsigned int *)(base + (0xfa * 2)), 0x102);
    __Func_8092708(*(unsigned int *)(base + (0xfa * 2)), 6, 0);
}
