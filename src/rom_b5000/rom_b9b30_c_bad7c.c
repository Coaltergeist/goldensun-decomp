typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;

extern u8 *iwram_3001e74;
extern u8 *_GetUnit(int unit_id);
extern u32 Random(void);

int Func_80bad7c(int mode)
{
    register int count asm("r4");
    u8 *state;
    u16 buffer[6];
    int index;
    int result;
    int spill;

    count = 0;
    state = iwram_3001e74;

    if (mode != 0) {
        register int guard asm("r3");
        asm volatile("mov r3, #0x58\n\tldrsh r3, [%1, r3]"
                     : "=r"(guard) : "r"(state));
        index = 0;
        if (guard != 0xff) {
            volatile s16 *entry = (volatile s16 *)(state + 0x58);
            u16 *out = buffer;
            do {
                register int value asm("r0");
                asm volatile("mov r1, #0\n\tldrsh r0, [%1, r1]"
                             : "=r"(value) : "r"(entry) : "r1");
                if (value != 0xfe) {
                    u8 *unit;
                    spill = count;
                    asm volatile("" : "+m"(spill));
                    unit = _GetUnit(value);
                    asm volatile("" : "+m"(spill));
                    count = spill;
                    if (*(s16 *)(unit + 0x38) != 0) {
                        *out++ = index | 0x100;
                        count++;
                    }
                }
                entry++;
                {
                    register int cont asm("r3");
                    asm volatile("mov r0, #0\n\tldrsh r3, [%1, r0]"
                                 : "=r"(cont) : "r"(entry) : "r0");
                    index++;
                    if (cont == 0xff) break;
                }
            } while (1);
        }
    } else {
        register int guard asm("r3");
        asm volatile("mov r3, #0x64\n\tadd r2, %1, #2\n\tldrsh r3, [r2, r3]"
                     : "=r"(guard) : "r"(state) : "r2");
        index = 0;
        if (guard != 0xff) {
            register volatile s16 *checkPtr asm("r0");
            register volatile u16 *entry asm("r2");
            register u16 *out asm("r1");
            register int mask asm("r5");
            asm volatile(
                "mov r0, %4\n\t"
                "lsl r3, %5, #1\n\t"
                "add r1, sp, #0x10\n\t"
                "add r3, r1\n\t"
                "add r0, #0x66\n\t"
                "mov r1, r3\n\t"
                "ldr r5, =0x180\n\t"
                "mov r2, r0\n\t"
                "sub r1, #0xc"
                : "=r"(checkPtr), "=r"(entry), "=r"(out), "=r"(mask)
                : "r"(state), "r"(count)
                : "r3");
            do {
                register int value asm("r3");
                register int term asm("r6");
                asm volatile("ldrh r3, [%2]\n\tmov r6, #0xfe\n\tlsl r3, r3, #16\n\tlsl r6, r6, #16"
                             : "=r"(value), "=r"(term) : "r"(entry));
                entry++;
                if (value != term) {
                    *out++ = index | mask;
                    count++;
                }
                {
                    register int cont asm("r3");
                    asm volatile("add r0, #2\n\tmov r6, #0\n\tldrsh r3, [r0, r6]"
                                 : "=r"(cont), "+r"(checkPtr) : : "r6");
                    index++;
                    if (cont == 0xff) break;
                }
            } while (1);
            asm volatile("b 1f\n\t.pool\n1:");
        }
    }

    result = 0;
    if (count != 0) {
        register u16 *sel asm("r5") = buffer;
        u32 rnd;
        spill = count;
        asm volatile("" : "+m"(spill));
        rnd = Random();
        asm volatile("" : "+m"(spill));
        count = spill;
        {
            register int idx asm("r3") = ((rnd * count) >> 16) << 1;
            register int val asm("r0");
            asm volatile("ldrh r0, [r5, r3]" : "=r"(val) : "r"(sel), "r"(idx));
            result = val;
        }
    }
    return result;
}
