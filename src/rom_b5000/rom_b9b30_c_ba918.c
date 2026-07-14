typedef unsigned char u8;

extern void *Func_80b7f70(void *arg, int index);

void *Func_80ba918(void *argument, int input_value)
{
    register int mask_init asm("r3") = 0xff;
    register void *arg asm("r8") = argument;
    register int value asm("r7") = input_value;
    register int index asm("r6") = 0;
    register int mask asm("r10") = mask_init;
    register void *obj asm("r0");

    while ((obj = Func_80b7f70(arg, index)) != 0) {
        register u8 *owner asm("r2") = *(u8 **)((u8 *)obj + 0x28);
        register int count asm("r0");
        register u8 **children asm("r1");
        register int first_mask asm("r4") = mask;
        asm("" : "+r" (first_mask));
        owner[0x16] = owner[0x16] | first_mask;
        {
            register u8 *count_address asm("r3") = (u8 *)obj + 0x27;
            asm("" : "+r" (count_address));
            children = (u8 **)((u8 *)obj + 0x2c);
            count = *(volatile u8 *)count_address;
        }
        owner[5] = value;

        if (count > 1) {
            register int zero asm("r5") = 0;
            register int inner_mask asm("r4") = 0xff;
            count--;
            do {
                register u8 *child asm("r2") = *children++;
                child[5] = zero;
                child[0x16] = child[0x16] | inner_mask;
            } while (--count != 0);
        }
        index++;
    }
    return obj;
}
