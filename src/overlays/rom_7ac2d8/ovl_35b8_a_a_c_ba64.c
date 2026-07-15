typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *__MapActor_GetActor(int id);
extern u32 __Random(void);
extern u32 iwram_3001e40[];
extern void OvlFunc_common0_10c(s32, s32, s32, s32, s32, s32, s32, void *);

void OvlFunc_924_200ba64(void)
{
    unsigned char local[0x28];
    u8 *actor;
    u32 mask;
    u8 *work;

    actor = __MapActor_GetActor(0);
    mask = iwram_3001e40[0];
    mask &= 3;
    if (mask == 0) {
        work = local;
        *(s32 *)(work + 4) = 7;
        if (((__Random() << 1) >> 16 & 1) == 0)
            *(s32 *)(work + 4) = 5;
        *(s32 *)(work + 8) = 0xb333;
        *(s32 *)(work + 0xc) = 0xb333;

        {
            s32 *p1 = (s32 *)actor;
            s32 pos = p1[3] + (((__Random() << 2) >> 16) << 16);
            s32 vel1 = (((__Random() << 3) >> 16) * 0x3333) - 0xcccc;
            s32 vel2 = (((__Random() << 3) >> 16) * 0x3333) - 0xcccc;
            s32 *p2 = (s32 *)actor;
            OvlFunc_common0_10c(p2[2], pos, p2[4], vel1, vel2, mask, 0x90000, work);
        }
    }
}
