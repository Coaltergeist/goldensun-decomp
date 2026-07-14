typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;

u32 Func_8019944(u32 a0, u32 a1)
{
    register u8 **globalSlot asm("r3") = &iwram_3001e8c;
    register u32 koff asm("r4") = 0x12dc;
    register u32 base asm("r2");
    register u32 tag0 asm("r3");
    register u32 id asm("r5");
    register u32 clear asm("r7");
    register u32 i asm("r1");
    register u32 result asm("r6");
    register u32 zero asm("r12");
    register u32 voff asm("r0");

    asm volatile("" : "+r"(globalSlot), "+r"(koff));
    base = (u32)*globalSlot;
    asm volatile("" : "+r"(base));
    tag0 = *(u16 *)(koff + base);
    asm volatile("" : "+r"(tag0));
    id = a0;
    asm volatile("" : "+r"(id));
    clear = a1;
    asm volatile("" : "+r"(clear));
    i = 0;
    asm volatile("" : "+r"(i));
    result = 0;
    asm volatile("" : "+r"(result));
    zero = i;
    asm volatile("" : "+r"(zero));
    voff = 0x12bc;
    asm volatile("" : "+r"(voff));

    if (tag0 == id) {
        result = *(u32 *)(voff + base);
        if (clear) {
            *(u32 *)(voff + base) = i;
            *(u16 *)(koff + base) = i;
        }
    } else {
        for (;;) {
            i++;
            voff += 4;
            koff += 2;
            asm volatile("" : "+r"(i), "+r"(voff), "+r"(koff));
            if (i > 7)
                goto end;
            tag0 = *(u16 *)(koff + base);
            asm volatile("" : "+r"(tag0));
            if (tag0 == id)
                break;
        }
        result = *(u32 *)(voff + base);
        if (clear) {
            register u32 scratch asm("r3");
            scratch = zero;
            asm volatile("" : "+r"(scratch));
            *(u32 *)(voff + base) = scratch;
            scratch = zero;
            asm volatile("" : "+r"(scratch));
            *(u16 *)(koff + base) = scratch;
        }
    }
end:
    return result;
}
