typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int actor_id);
extern int __GetFlag(int flag);
extern u8 *iwram_3001ebc;
extern void OvlFunc_959_2008e80(void);

void OvlFunc_959_2009a44(void)
{
    u8 *actor = __MapActor_GetActor(0);

    if (__GetFlag(0x358) == 0) {
        int x = *(int *)(actor + 8) / 0x100000;
        int y = *(int *)(actor + 0x10) / 0x100000;
        if (x == 0x10 && y > 0x37 && y <= 0x3a &&
            (*(u16 *)(actor + 6) == 0xc000 ||
             *(u16 *)(actor + 6) == 0x4000)) {
            u16 *target = (u16 *)(iwram_3001ebc + 0x16c);
            int value;
            __asm__ volatile ("" : "+r" (target));
            value = 0x28;
            *target = value;
            OvlFunc_959_2008e80();
        }
    }
}
