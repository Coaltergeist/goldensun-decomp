typedef unsigned int u32;

extern u32 __Random(void);
extern void OvlFunc_common0_10c(int x, int y, int z, int arg3,
                               int arg4, int arg5, int arg6, u32 *config);

void OvlFunc_924_200bbd4(int x, int y, int z)
{
    register int saved_y asm("r10") = y;
    register int saved_z asm("r8") = z;
    register int varied_x asm("r6");
    register u32 *config asm("r5");
    u32 config_storage[10];
    u32 random;

    config = config_storage;
    config[1] = 7;
    config[0] = 1;
    config[2] = 0xb333;
    config[3] = 0xb333;
    varied_x = x;

    asm volatile("" : "+r"(saved_y), "+r"(saved_z), "+r"(varied_x),
                           "+r"(config));
    random = __Random();
    random <<= 4;
    random >>= 16;
    random <<= 16;
    varied_x += random;
    varied_x -= 0x80000;

    random = __Random();
    random <<= 3;
    random >>= 16;
    random <<= 16;
    saved_z += random;
    saved_z -= 0x40000;

    OvlFunc_common0_10c(varied_x, saved_y, saved_z, 0,
                        0, 0, 0xb0000, config);
}
