typedef unsigned char u8;
typedef unsigned int u32;

extern void Func_807a3a8(void);
extern u8 *Func_8077330(int secondary);

u8 *Func_807a458(unsigned int index, unsigned int first, unsigned int second)
{
    register u8 *state asm("r3");
    register unsigned int offset asm("r1");
    register u8 *count_ptr asm("r0");
    register unsigned int count asm("r1");
    register u8 *entries asm("r2");
    register unsigned int entry_offset asm("r3");

    Func_807a3a8();
    state = Func_8077330(index > 7);
    offset = 0x84;
    asm("" : "+r"(state), "+r"(offset));
    offset <<= 1;
    count_ptr = state + offset;
    count = *(u32 *)count_ptr;
    entries = state;
    entries += 8;
    entry_offset = count << 2;
    asm("" : "+r"(count_ptr), "+r"(count), "+r"(entries),
        "+r"(entry_offset));
    entries[entry_offset] = first;
    count++;
    entries += entry_offset;
    entries[1] = second;
    entries[2] = index;
    entries[3] = 0xff;
    *(u32 *)count_ptr = count;
    return count_ptr;
}
