typedef unsigned char u8;
typedef unsigned short u16;

typedef struct Vec3 {
    int x;
    int y;
    int z;
} Vec3;

extern u8 *iwram_3001f30;
extern const u8 Data_9f0b0[];
extern void vec3_translate(int angle, int distance, Vec3 *position);
extern void _Actor_SetScript(u8 *actor, const void *script);

void Func_8099340(u8 *actor)
{
    register u8 *saved_actor asm("r6") = actor;
    u8 *source = iwram_3001f30;

    if (saved_actor != 0) {
        register int value asm("r2");

        asm volatile (
            "mov r2, r6\n\tadd r2, #0x64\n\t"
            "ldrh r3, [r2]\n\tsub r3, #1\n\tstrh r3, [r2]\n\t"
            "lsl r3, #16\n\tasr r2, r3, #16"
            : "=r" (value) : "r" (saved_actor) : "r3", "cc", "memory");
        if (value != 0) {
            Vec3 position;
            register Vec3 *position_ptr asm("r5") = &position;

            position_ptr->x = *(int *)(source + 4);
            position_ptr->y = *(int *)(source + 8) + 0xa0000;
            position_ptr->z = *(int *)(source + 0xc);
            {
                register int distance asm("r1");
                asm volatile (
                    "mov r3, r6\n\tadd r3, #0x66\n\t"
                    "mov r4, #0\n\tldrsh r1, [r3, r4]"
                    : "=r" (distance) : "r" (saved_actor) : "r3", "r4");
                asm volatile (
                    "lsl r3, r2, #11\n\tlsl r0, r2, #16\n\t"
                    "add r1, r3\n\tmov r2, r5\n\tbl vec3_translate"
                    : "+r" (value), "+r" (distance)
                    : "r" (position_ptr)
                    : "r0", "r3", "cc", "memory");
            }
            *(int *)(saved_actor + 8) = position_ptr->x;
            *(int *)(saved_actor + 0xc) = position_ptr->y;
            *(int *)(saved_actor + 0x10) = position_ptr->z;
        } else {
            _Actor_SetScript(saved_actor, Data_9f0b0);
        }
    }
}
