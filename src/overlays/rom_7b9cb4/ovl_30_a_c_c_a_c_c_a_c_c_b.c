/* Cluster OvlFunc_932_200ad08..OvlFunc_932_200ad08 extracted from goldensun/asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c_a.o and asm/overlays/rom_7b9cb4/ovl_30_a_c_c_a_c_c_a_c_c_c.o in
 * goldensun/overlays/rom_7b9cb4/overlay.ld.
 */
void OvlFunc_932_200ad08(void)
{
    unsigned long long u;
    unsigned long v;
    unsigned short t;

    u = 0x18;
    do { u = (unsigned long) u; } while (0);
    v = u;
    __Func_8096fb0(v, 1);

    t = 10;
    do { t = (unsigned short) t; } while (0);
    __Func_80970f8(t, 9);

    __Func_809728c();

    __Func_8092950(10, 2);

    __FieldMove(1);

    t = 10;
    do { t = (unsigned short) t; } while (0);
    __Func_8092950(t, 2);

    __Func_8097174();

    __Func_8092950(10, 2);

    __Func_8097194();

    __PlaySound(0x120);

    t = 10;
    do { t = (unsigned short) t; } while (0);
    __Func_8092950(t, 2);
}
