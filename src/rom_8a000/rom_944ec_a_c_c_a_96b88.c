typedef unsigned char u8;
typedef unsigned int u32;

extern u32 iwram_3001e40;

void Func_8096b88(u8 *object)
{
    register u8 *child asm("r8");
    u8 *temporary;
    register u32 count asm("r3");

    if (object[0x54] == 1 &&
        (temporary = *(u8 **)(object + 0x50), child = temporary,
         temporary != 0) &&
        ((temporary[0x1d] & 1) == 0)) {
        count = child[0x27];
        if (count != 0) {
            register u32 *clock_temp asm("r1") = &iwram_3001e40;
            register u8 **items asm("r7") = (u8 **)child;
            register u32 *clock asm("r10") = clock_temp;
            register u32 remaining asm("r6");
            asm volatile ("" : "+r" (clock_temp));
            items = (u8 **)((u8 *)items + 0x28);
            remaining = count;
            do {
                register u32 *clock_arg asm("r2") = clock;
                (*items)[5] = *clock_arg % 6;
                items++;
                remaining--;
            } while (remaining != 0);
        }
        child[0x25] = 1;
    }
}
