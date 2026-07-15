typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *GetFieldActor(int actor_id);
extern void _Actor_Stop(u8 *actor);
extern int _Func_8011f54(int type, int x, int z);

void MapActor_SetPos3D(int actor_id, int x, int y, int z)
{
    register int pos_x asm("r7");
    register int pos_y asm("r6");
    register int pos_z asm("r8");
    register u8 *actor asm("r5");
    asm volatile("mov r7, r1\n\t"
                 "mov r6, r2\n\t"
                 "mov r8, r3"
                 : "=r"(pos_x), "=r"(pos_y), "=r"(pos_z)
                 : "r"(x), "r"(y), "r"(z));
    actor = GetFieldActor(actor_id);

    if (actor != 0) {
        int height;
        register int z_copy asm("r2");
        register u32 high_bit asm("r3");
        _Actor_Stop(actor);
        *(u32 *)(actor + 0x24) = 0;
        *(u32 *)(actor + 0x28) = 0;
        *(u32 *)(actor + 0x2c) = 0;
        asm volatile("mov r3, #0x80\n\t"
                     "lsl r3, r3, #24\n\t"
                     "mov r2, r8"
                     : "=r"(high_bit), "=r"(z_copy)
                     : "r"(pos_z));
        *(u32 *)(actor + 0x3c) = high_bit;
        *(u32 *)(actor + 0x38) = high_bit;
        *(int *)(actor + 8) = pos_x;
        *(int *)(actor + 0xc) = pos_y;
        *(int *)(actor + 0x10) = z_copy;
        if ((actor[0x55] & 1) != 0) {
            register int type asm("r0");
            register int tile_x asm("r1");
            register u8 *type_ptr asm("r3");
            register int tile_z asm("r3");
            register int call_z asm("r2");
            asm volatile("mov r3, r5\n\t"
                         "add r3, #0x22\n\t"
                         "mov r1, r7\n\t"
                         "ldrb r0, [r3]"
                         : "=r"(type_ptr), "=r"(tile_x), "=r"(type)
                         : "r"(actor), "r"(pos_x));
            if (tile_x < 0) {
                register int adjustment asm("r3") = 0xffff;
                asm volatile("" : "+r"(adjustment));
                tile_x += adjustment;
            }
            tile_x >>= 16;
            tile_z = pos_z;
            if (tile_z < 0)
                tile_z += 0xffff;
            asm volatile("asr r2, r3, #16"
                         : "=r"(call_z)
                         : "r"(tile_z));
            height = _Func_8011f54(type, tile_x, call_z) << 16;
            *(int *)(actor + 0xc) = (*(int *)(actor + 0xc) -
                                     *(int *)(actor + 0x14)) + height;
            *(int *)(actor + 0x14) = height;
        }
    }
}
