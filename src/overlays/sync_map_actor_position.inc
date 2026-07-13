typedef unsigned char u8;
typedef signed short s16;

extern u8 *iwram_3001ebc;
extern u8 gState[];
extern const int movement_table[] asm(SYNC_MOVEMENT_TABLE_ASM);
extern int __GetFlag(int flag);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __Func_809218c(int actor_id, int x, int y);

void SYNC_MAP_ACTOR_FUNCTION(void)
{
    u8 *field = iwram_3001ebc;

    if (__GetFlag(SYNC_MAP_ACTOR_FLAG)) {
        register int state_offset asm("r2") = 0x24a;
        register u8 *state asm("r3");
        register int zero asm("r2");

        asm volatile("" : "+r"(state_offset));
        state = gState;
        asm volatile("" : "+r"(state), "+r"(state_offset));
        state += state_offset;
        zero = 0;
        asm volatile("" : "+r"(state), "+r"(zero));
        if (*(s16 *)(state + zero) != SYNC_EXCLUDED_MAP) {
            register int field_offset asm("r2") = 0xb6;
            register u8 *movement_ptr asm("r3");
            register int actor_id asm("r0");
            register int movement_zero asm("r2");
            register int movement asm("r5");
            u8 *target;
            u8 *source;

            asm volatile("" : "+r"(field_offset), "+r"(field));
            field_offset <<= 1;
            movement_ptr = field + field_offset;
            actor_id = SYNC_MAP_ACTOR_ID;
            asm volatile("" : "+r"(movement_ptr), "+r"(actor_id));
            movement_zero = 0;
            asm volatile("" : "+r"(movement_ptr), "+r"(movement_zero),
                         "+r"(actor_id));
            movement = *(s16 *)(movement_ptr + movement_zero);
            asm volatile("" : "+r"(movement), "+r"(actor_id));
            target = __MapActor_GetActor(actor_id);
            source = __MapActor_GetActor(0);
            *(int *)(target + 0x30) = *(int *)(source + 0x30);
            target = __MapActor_GetActor(SYNC_MAP_ACTOR_ID);
            source = __MapActor_GetActor(0);
            {
                register int source_value asm("r3") =
                    *(int *)(source + SYNC_SECOND_SOURCE_OFFSET);

                asm volatile("" : "+r"(source_value), "+r"(movement));
                movement -= SYNC_MOVEMENT_BASE;
                *(int *)(target + 0x34) = source_value;
            }
            asm volatile("" : "+r"(movement), "+r"(target) : : "memory");
            {
                register const u8 *table asm("r2") =
                    (const u8 *)movement_table;
                register int offset asm("r5") = movement;
                register int second_offset asm("r3");
                register int x asm("r1");
                register int target_id asm("r0");
                register int y asm("r2");

                asm volatile("" : "+r"(table), "+r"(offset));
                offset <<= 3;
                second_offset = offset + 4;
                asm volatile("" : "+r"(table), "+r"(offset),
                             "+r"(second_offset));
                x = *(const int *)(table + offset);
                asm volatile("" : "+r"(table), "+r"(second_offset),
                             "+r"(x));
                target_id = SYNC_MAP_ACTOR_ID;
                asm volatile("" : "+r"(target_id), "+r"(table),
                             "+r"(second_offset), "+r"(x));
                y = *(const int *)(table + second_offset);
                __Func_809218c(target_id, x, y);
            }
        }
    }
}
