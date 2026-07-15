typedef unsigned char u8;
typedef unsigned int u32;
typedef signed short s16;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern void OvlFunc_932_200a0d0(void);
extern void OvlFunc_932_200a310(void);
extern void OvlFunc_932_200a428(void);
extern void OvlFunc_932_200a490(void);
extern void OvlFunc_932_200a5c0(void);
extern void OvlFunc_932_200a6c0(void);
extern void OvlFunc_932_200a804(void);
extern void OvlFunc_932_200a934(void);
extern void OvlFunc_932_200a9dc(void);

int OvlFunc_932_200a020(void)
{
    register int offset asm("r2");
    register int expected asm("r3");
    register u8 *state asm("r3");
    int map;

    offset = 0xe0;
    offset <<= 1;
    *(u32 *)(iwram_3001ebc + offset) = 0x204;
    state = gState;
    asm volatile("" : "+r"(state), "+r"(offset));
    map = *(s16 *)(state + offset);

    asm volatile("ldr %0, =0x4d" : "=r"(expected));
    if (map == expected)
        OvlFunc_932_200a0d0();
    else {
        asm volatile("ldr %0, =0x4f" : "=r"(expected));
        if (map == expected)
            OvlFunc_932_200a310();
        else {
            asm volatile("ldr %0, =0x50" : "=r"(expected));
            if (map == expected)
                OvlFunc_932_200a428();
            else {
                asm volatile("ldr %0, =0x51" : "=r"(expected));
                if (map == expected)
                    OvlFunc_932_200a490();
                else {
                    asm volatile("ldr %0, =0x52" : "=r"(expected));
                    if (map == expected)
                        OvlFunc_932_200a5c0();
                    else {
                        asm volatile("ldr %0, =0x53" : "=r"(expected));
                        if (map == expected)
                            OvlFunc_932_200a6c0();
                        else {
                            asm volatile("ldr %0, =0x55" : "=r"(expected));
                            if (map == expected)
                                OvlFunc_932_200a804();
                            else {
                                asm volatile("ldr %0, =0x56" : "=r"(expected));
                                if (map == expected)
                                    OvlFunc_932_200a934();
                                else {
                                    asm volatile("ldr %0, =0x57" : "=r"(expected));
                                    if (map == expected)
                                        OvlFunc_932_200a9dc();
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return 0;
}
