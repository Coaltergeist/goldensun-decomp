/* Cluster OvlFunc_944_2008a84..OvlFunc_944_2008a84 extracted from goldensun/asm/overlays/rom_7ca63c/ovl_30_c_c_a_c_c.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ca63c/ovl_30_c_c_a_c_c_a.o and asm/overlays/rom_7ca63c/ovl_30_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7ca63c/overlay.ld.
 */
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_944__020093a4[2];

void OvlFunc_944_2008a84(unsigned int arg0)
{
    unsigned char *r6;

    r6 = (unsigned char *)__MapActor_GetActor(arg0);
    __Func_8092b08(arg0, 1);
    r6[0x55] = 0;

    *(unsigned short *)(r6 + 0x64) = (unsigned int)__Random() >> 15;
    *(unsigned short *)(r6 + 0x66) = (unsigned int)__Random() >> 15;

    *(unsigned int *)(r6 + 0xc) = (((unsigned int)__Random() << 2) >> 16 << 16) + 0x60000;

    *(unsigned int *)(r6 + 0x4c) = (((unsigned int)__Random() * 0x6000) >> 16) - 0x3000;

    *(unsigned int *)(r6 + 0x18) = 0x14000;
    *(unsigned int *)(r6 + 0x1c) = 0x14000;

    __MapActor_SetBehavior(arg0, gScript_944__020093a4);
}
