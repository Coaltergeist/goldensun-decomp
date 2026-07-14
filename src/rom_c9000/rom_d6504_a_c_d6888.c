typedef unsigned char u8;
typedef signed short s16;
typedef unsigned int u32;

extern u8 *iwram_3001eec;
extern u8 *_GetBattleActor(int actor_id);
extern u8 *_Func_80b7f70(u32 actor_id, int index);
extern int _Func_80b6cd0(int actor_id, int value);
extern void _Sprite_SetAnim(u8 *sprite, int animation);

void Func_80d6888(int actor_id, int value_arg, int animation,
                  int global_index_arg, int global_value)
{
    register int global_index asm("r11");
    register int value asm("r9");
    register u8 *actor asm("r8");
    register u8 *result asm("r0");
    u8 *base;
    int index;
    int saved_actor_id;
    int saved_animation;
    int saved_child_index;

    asm volatile("" : "=r"(global_index) : "0"(global_index_arg));
    saved_actor_id = actor_id;
    asm volatile("" : "+m"(saved_actor_id));
    asm volatile("" : "=r"(value) : "0"(value_arg),
                 "r"(global_index), "m"(saved_actor_id));
    saved_animation = animation;
    asm volatile("" : "+m"(saved_animation));
    result = _GetBattleActor(actor_id);
    {
        register u8 *base_value asm("r3") = iwram_3001eec;
        register int zero asm("r0");
        asm volatile("" : "+r"(base_value), "+r"(result));
        actor = result;
        zero = 0;
        asm volatile("" : "+r"(actor), "+r"(zero), "+r"(base_value));
        base = base_value;
        index = zero;
        asm volatile("" : "+m"(base), "+m"(index));
    }

    for (;;) {
        register u8 *sprite asm("r7");
        register int minus_one asm("r2");

        {
            register u8 *actor_read asm("r1") = actor;
            register u32 actor_number asm("r0");
            asm volatile("" : "+r"(actor_read));
            actor_number = *(u32 *)actor_read;
            sprite = _Func_80b7f70(actor_number, index);
        }

        if (sprite == 0)
            break;

        minus_one = 1;
        minus_one = -minus_one;
        if (global_index != minus_one) {
            register int global_offset asm("r3");
            {
                register u8 *stack asm("sp");
                register u8 *parameter asm("r1") = stack + 0x34;
                asm volatile("" : "+r"(parameter));
                global_offset = 0x7818;
                asm volatile("" : "+r"(global_offset), "+r"(parameter));
                {
                    register int byte asm("r0") = *parameter;
                    asm volatile("" : "+r"(byte), "+r"(global_offset));
                    {
                        register u8 *store_base asm("r1") = base;
                        global_offset += global_index;
                        store_base[global_offset] = byte;
                    }
                }
            }
        }

        {
            register u8 *actor_ptr asm("r1") = actor;
            register int actor_offset asm("r0") = 0x2a;
            register int actor_state asm("r3") =
                *(s16 *)(actor_ptr + actor_offset);
        if (actor_state == 0) {
            if (value != minus_one) {
                register int child_index asm("r2") = 0;
                register u8 **children asm("r6");
                register u8 *count_ptr asm("r10");

                {
                    register u8 *count_temp asm("r3") = sprite + 0x27;
                    count_ptr = count_temp;
                }
                if (*count_ptr != 0) {
                    children = (u8 **)(sprite + 0x28);
                    do {
                        register u8 *child asm("r5") = *children++;
                        if (child != 0) {
                            register u8 *actor_ptr asm("r0") = actor;
                        if (child != *(u8 **)(actor_ptr + 0x24) &&
                            child != *(u8 **)(actor_ptr + 0x20)) {
                            register int test_value asm("r1") = value;
                            if (test_value == 0) {
                                register int call_actor asm("r0") = saved_actor_id;
                                asm volatile("" : "+r"(call_actor));
                                saved_child_index = child_index;
                                asm volatile("" : "+m"(saved_child_index));
                                child[5] = _Func_80b6cd0(call_actor, test_value);
                                child_index = saved_child_index;
                            }
                            else {
                                register int store_value asm("r3") = value;
                                child[5] = store_value;
                            }
                            child[0x16] = 0xff;
                        }
                        }
                        child_index++;
                        {
                            register u8 *count_read asm("r0") = count_ptr;
                            if (child_index == *count_read)
                                break;
                        }
                    } while (1);
                }
            }
            {
                register int anim_value asm("r1") = saved_animation;
                register int anim_minus_one asm("r2") = 1;
                anim_minus_one = -anim_minus_one;
                asm volatile("" : "+r"(anim_value), "+r"(anim_minus_one));
                if (anim_value != anim_minus_one)
                    _Sprite_SetAnim(sprite, anim_value);
            }
        }
        }
        {
            register int next_index asm("r3") = index;
            next_index++;
            index = next_index;
        }
    }
}
