typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern int __Func_8011f54(int arg0, int x, int z);
extern void __Func_8010704(int type, int variant, int arg2, int arg3,
                          int x, int z);
extern void __SetFlag(int flag);

void OvlFunc_956_20085e0(void)
{
    int actor_id;

    for (actor_id = 15; actor_id <= 17; actor_id++) {
        u8 *actor = __MapActor_GetActor(actor_id);
        int result = __Func_8011f54(0, *(int *)(actor + 8),
                                   *(int *)(actor + 0x10));

        if (result == 0) {
            register int pixel_x asm("r2");
            register int pixel_z asm("r3");

            actor[0x23] = 2;
            actor[0x55] = result;
            pixel_x = *(int *)(actor + 8);
            pixel_z = *(int *)(actor + 0x10);
            asm volatile("" : "+r"(pixel_x), "+r"(pixel_z));
            pixel_x >>= 20;
            pixel_z >>= 20;
            __Func_8010704(0x53, 0x0d, 1, 1, pixel_x, pixel_z);

            pixel_z = *(int *)(actor + 0x10);
            pixel_x = *(int *)(actor + 8);
            asm volatile("" : "+r"(pixel_x), "+r"(pixel_z));
            pixel_z >>= 20;
            pixel_x >>= 20;
            pixel_z += 0x34;
            __Func_8010704(0x53, 0x0d, 1, 1, pixel_x, pixel_z);
            __SetFlag(actor_id + 0x205);
        }
    }
}
