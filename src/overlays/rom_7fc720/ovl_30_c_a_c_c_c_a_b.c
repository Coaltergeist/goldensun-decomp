extern int __Func_80796c4(unsigned short *items);
extern void OvlFunc_973_20080a0(unsigned int item, int value);

void OvlFunc_973_20080c0(int value)
{
    unsigned short items[16];
    register int value_arg asm("r7") = value;
    register int result asm("r0");

    asm volatile("" : "+r"(value_arg));
    result = __Func_80796c4(items);
    asm volatile("" : "+r"(result));

    if (result > 0) {
        register unsigned short *item asm("r6");
        register int count asm("r5");

        asm volatile("mov %0, sp" : "=r"(item));
        count = result;
        asm volatile("" : "+r"(count));
        do {
            register unsigned int item_arg asm("r0") = *item;
            register int call_value asm("r1") = value_arg;

            asm volatile("" : "+r"(item_arg), "+r"(call_value));
            count--;
            item++;
            asm volatile("" : "+r"(item), "+r"(count));
            OvlFunc_973_20080a0(item_arg, call_value);
        } while (count != 0);
    }
}
