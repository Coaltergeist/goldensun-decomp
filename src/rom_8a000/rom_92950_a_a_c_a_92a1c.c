typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *GetFieldActor(int actor_id);
extern void _Actor_SetScript(u8 *actor, int script);

void Func_8092a1c(int actor_id, u32 flags, int script)
{
    register u32 saved_flags asm("r6") = flags;
    register int saved_script asm("r7") = script;
    register u8 *actor asm("r5") = GetFieldActor(actor_id);
    register u8 *target asm("r0");
    register u32 copy_flags asm("r3");

    target = GetFieldActor(saved_flags & 0xff);
    if (actor == 0)
        goto done;
    if (target == 0)
        goto done;
    copy_flags = 0x80;
    copy_flags <<= 9;
    copy_flags &= saved_flags;
    *(u8 **)(actor + 0x68) = target;
    if (copy_flags == 0) {
        register u8 *timer_ptr asm("r2") = actor;
        register int timer asm("r3") = 0x28;

        timer_ptr += 0x64;
        *(u16 *)timer_ptr = timer;
        *(u32 *)(actor + 0x34) = *(u32 *)(target + 0x34) << 1;
        {
            register u32 position asm("r3") = *(u32 *)(target + 0x30);
            register int zero asm("r1");

            asm volatile ("ldr %0, 1f" : "=r"(zero));
            *(u32 *)(actor + 0x30) = position;
            {
                register u8 *field asm("r3") = actor;

                asm volatile ("" : "+r"(field));
                field += 0x59;
                *field = zero;
            }
        }
    }
    _Actor_SetScript(actor, saved_script);
    asm volatile ("b 2f\n.align 2, 0\n1: .word 0\n2:");
done:
    return;
}
