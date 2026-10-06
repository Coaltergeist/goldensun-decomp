extern int iwram_3001e40;
extern unsigned int __Random(void);

void OvlFunc_905_2008bd0(void)
{
    if ((iwram_3001e40 & 7) == 0) {
        OvlFunc_905_2008a68(
            *(int *)(__MapActor_GetActor(9) + 8) + (((__Random() * 12) >> 16) << 16),
            *(int *)(__MapActor_GetActor(9) + 0xc),
            *(int *)(__MapActor_GetActor(9) + 0x10) + (0xc0 << 11),
            0,
            -(((__Random() * 5) >> 16) * 0x1999),
            (__Random() * 2) >> 16,
            0
        );
        if ((iwram_3001e40 & 0xf) == 0) {
            OvlFunc_905_2008a68(
                *(int *)(__MapActor_GetActor(9) + 8) + (((__Random() * 12) >> 16) << 16),
                *(int *)(__MapActor_GetActor(9) + 0xc),
                *(int *)(__MapActor_GetActor(9) + 0x10) + (0xc0 << 11),
                0,
                -(((__Random() * 5) >> 16) * 0x1999),
                (__Random() * 2) >> 16,
                0
            );
        }
    }
}
