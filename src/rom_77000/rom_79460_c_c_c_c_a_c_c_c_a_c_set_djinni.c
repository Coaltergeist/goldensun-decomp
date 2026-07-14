typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *GetUnit(int unit);
extern int Func_807a1f8(int unit, int element, unsigned int djinni);
extern void Func_8079ae8(int unit);

int SetDjinni(int unit_id, int element_id, unsigned int djinni_id)
{
    register int unit_arg asm("r7");
    register int element asm("r6");
    register unsigned int djinni asm("r8");
    register u8 *unit asm("r5");
    register int result asm("r10");
    register int call_result asm("r0");

    asm volatile("mov r7, r0\n\tmov r6, r1\n\tmov r8, r2"
                 : "=r" (unit_arg), "=r" (element), "=r" (djinni)
                 : "r" (unit_id), "r" (element_id), "r" (djinni_id));
    unit = GetUnit(unit_id);
    call_result = Func_807a1f8(unit_arg, element, djinni);
    result = call_result;
    asm volatile("" : "+r" (result), "+r" (call_result));
    if (call_result == 0)
        goto done;

    {
        register int offset asm("r2") = element << 2;
        register int address asm("r3") = offset;
        register u32 mask asm("r1");
        register unsigned int shift asm("r0");
        register u32 owned asm("r3");
        address += 0xf8;
        asm volatile("" : "+r" (offset), "+r" (address));
        mask = 1;
        asm volatile("" : "+r" (mask));
        shift = djinni;
        asm volatile("" : "+r" (shift));
        owned = *(u32 *)(unit + address);
        mask <<= shift;
        asm volatile("" : "+r" (owned), "+r" (mask));
        owned &= mask;
        asm volatile("cmp r3, #0\n\tbeq .LSetDjinni_failure"
                     : "+r" (owned) : : "cc");

        {
            register int set_base asm("r3") = 0x108;
            offset += set_base;
            asm volatile("" : "+r" (set_base), "+r" (offset));
            *(u32 *)(unit + offset) |= mask;
        }
        asm volatile(
            "b .LSetDjinni_count\n"
            ".LSetDjinni_failure:\n\t"
            "mov r0, #0\n\t"
            "b .LSetDjinni_exit\n"
            ".LSetDjinni_count:"
            : : : "r0", "cc");
        {
            register int count_base asm("r0") = 0x11c;
            register int count_offset asm("r2") = element + count_base;
            register int count asm("r3") = unit[count_offset];
            asm volatile("" : "+r" (count_base));
            count++;
            unit[count_offset] = count;
        }
        Func_8079ae8(unit_arg);
    }
done:
    {
        register int return_value asm("r0") = result;
        asm volatile("" : "+r" (return_value));
        asm volatile(".LSetDjinni_exit:");
        return return_value;
    }
}
