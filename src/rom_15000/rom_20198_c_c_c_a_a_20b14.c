typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e8c;
extern void Func_8018850(int arg0, int *result, void *work, int arg3);

int Func_8020b14(const u8 *text)
{
    register u8 *state asm("r4") = iwram_3001e8c;
    register unsigned int count asm("r1") = 0;
    int work;
    int result;
    register int *result_ptr asm("r1");
    register int arg0 asm("r0");
    register void *work_ptr asm("r2");

    if (*text != 0) {
        u16 *output = (u16 *)(state + 0xeb0);

        do {
            *output++ = *text++;
            count++;
        } while (*text != 0);
    }
    {
        register unsigned int base_offset asm("r2");
        register unsigned int offset asm("r3");

        asm("" : "=r"(base_offset) : "0"(0xeb));
        asm("" : "=r"(offset)
            : "0"(count << 1), "r"(base_offset));
        base_offset <<= 4;
        offset += base_offset;
        asm("" : "+r"(offset), "+r"(state));
        result_ptr = &result;
        asm("" : "+r"(offset), "+r"(state), "+r"(result_ptr));
        /* 文字列の終端。 */
        *(u16 *)(state + offset) = 0;
    }
    asm("" : "=r"(arg0) : "0"(0), "r"(result_ptr));
    asm("" : "=r"(work_ptr) : "0"(&work), "r"(arg0));
    Func_8018850(arg0, result_ptr, work_ptr, 0);
    return result;
}
