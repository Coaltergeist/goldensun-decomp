extern int _divsi3_RAM(int, int);
struct Struct_968_200c520 {
    u8 pad0[8];
    int unk8;
    int unkC;
    u8 pad10[0x12];
    u16 unk22;
};

extern u32 __Random(void);
extern void OvlFunc_968_2008118(int, int, int, int, int, int, int, void *);

void OvlFunc_968_200c520(int arg0, int arg1)
{
    extern unsigned char iwram_3001e40[];
    struct Struct_968_200c520 sp10;

    sp10.unk8 = 0xb333;
    sp10.unkC = 0xb333;
    sp10.unk22 = (((__Random() * 4096) >> 16) + 0xf800);

    if ((*(u32 *)iwram_3001e40 & 3) == 0) {
        if (((__Random() * 2) >> 16) != 0) {
            u32 rnd = __Random();
            OvlFunc_968_2008118(
                (arg0 + (((rnd * 2) >> 16) << 4)) << 16,
                0,
                arg1 << 19,
                0,
                0,
                _divsi3_RAM((int)((((__Random() * 5) >> 16) << 16) + 0x70000), 10),
                0x88 << 16,
                &sp10
            );
        } else {
            OvlFunc_968_2008118(
                (arg0 + ((__Random() * 17) >> 16)) << 16,
                0,
                (arg0 << 19) + 0xfffc0000,
                0,
                0,
                0,
                0x88 << 16,
                &sp10
            );
        }
    }
}
