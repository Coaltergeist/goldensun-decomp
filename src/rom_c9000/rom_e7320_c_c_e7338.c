typedef unsigned char u8;

void Func_80e7338(int arg0, int argument1, int argument2)
{
    register u8 *context asm("r9");
    register u8 *working asm("r4") = context;
    u8 *stack_copy;
    register u8 **stack_address asm("r3") = &stack_copy;
    asm volatile ("" : "+r" (stack_address));
    *stack_address = working;
    {
        register u8 *copy asm("r3");
        register int arg1 asm("r5");
        register int arg2 asm("r6");
        register u8 **base_address asm("r1");
        register u8 *base asm("r3");
        register u8 *entry asm("r2");
        asm volatile ("mov %0, %1" : "=r" (copy) : "r" (working));
        arg1 = argument1;
        base_address = (u8 **)(copy - 0x88);
        base = *base_address;
        asm volatile ("mov r7, #0xe8\n\tlsl r7, r7, #7" : : : "r7");
        arg2 = argument2;
        asm volatile ("add %0, %1, r7" : "=r" (entry) : "r" (base) : "r7");
        {
            register int sentinel asm("r7");
            register int i asm("r4");
            register int status asm("r3") = *(int *)(entry + 0x18);
            asm volatile ("mov %0, #1\n\tneg %0, %0" : "=r" (sentinel));
            i = 0;

            if (status == sentinel) {
                *(int *)(entry + 0x18) = i;
            } else {
                do {
                    i++;
                    if (i == 0x10)
                        return;
                    entry = *base_address + i * 0x1c;
                    asm volatile ("mov r3, #0xe8\n\tlsl r3, r3, #7\n\tadd %0, %0, r3"
                                  : "+r" (entry) : : "r3");
                    asm volatile ("mov %0, #1" : "=r" (sentinel));
                    status = *(int *)(entry + 0x18);
                    asm volatile ("neg %0, %0" : "+r" (sentinel));
                } while (status != sentinel);
                *(int *)(entry + 0x18) = 0;
            }
            *(int *)entry = arg0;
            *(int *)(entry + 4) = arg1;
            *(int *)(entry + 0xc) = arg2;
        }
    }
}
