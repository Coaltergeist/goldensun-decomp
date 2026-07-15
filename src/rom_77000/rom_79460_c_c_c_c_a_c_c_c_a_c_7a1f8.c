typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 *GetUnit(u32 unitId);
extern u8 *Func_8077330(u32 secondary);

s32 Func_807a1f8(u32 unit_id, u32 element, u32 djinni)
{
    register u32 pElement asm("r5") = element;
    register u32 pDjinni asm("r6") = djinni;
    register u32 pUnitId asm("r7") = unit_id;
    u8 *unit;
    u32 mask;
    u8 *base;
    u8 second;

    asm volatile("" : "+r"(pElement));
    asm volatile("" : "+r"(pDjinni));
    unit = GetUnit(pUnitId);
    {
        register u32 k1 asm("r2") = 0x118;
        register u32 off1 asm("r3");
        asm volatile("" : "+r"(k1));
        off1 = pElement + k1;
        if (unit[off1] == 0) {
            goto ret0;
        }
    }
    asm volatile("" : "+r"(pElement) : : "memory");
    {
        register u32 k2 asm("r3") = 0x11c;
        register u32 off2 asm("r2");
        asm volatile("" : "+r"(k2));
        off2 = pElement + k2;
        if (unit[off2] > 9) {
            unit[off2] = 10;
            goto ret0;
        }
    }
    {
        register u32 elem4 asm("r1") = pElement << 2;
        register u32 r3v asm("r3");
        r3v = elem4;
        r3v += 0xf8;
        mask = 1;
        r3v = *(u32 *)(unit + r3v);
        mask <<= pDjinni;
        r3v &= mask;
        if (r3v == 0) {
            goto ret0;
        }
        {
            register u32 k4 asm("r4") = 0x108;
            r3v = elem4 + k4;
            r3v = *(u32 *)(unit + r3v);
            r3v &= mask;
            if (r3v != 0) {
                return 0;
            }
        }
    }
    base = Func_8077330(pUnitId > 7);
    {
        register s32 i asm("r4") = 0;
        register u8 *list asm("r1") = base + 8;
        u32 idx;
        if (i < *(s32 *)(base + 0x108)) {
            if (pElement != list[0]) goto loop_entry;
            second = list[1];
            while (pDjinni != second) {
loop_entry:
                do {
                    register u32 kk asm("r2") = 0x100;
                    register u8 *p asm("r3");
                    s32 cnt;
                    asm volatile("" : "+r"(kk));
                    p = list + kk;
                    asm volatile("" : "+r"(p));
                    cnt = *(s32 *)p;
                    i++;
                    if (i >= cnt) goto after_loop;
                    idx = (u32)i << 2;
                } while (pElement != list[idx]);
                second = list[idx + 1];
            }
        }
after_loop:
        if (i == *(s32 *)(list + 0x100)) {
            goto ret1;
        }
        {
            register u32 off3 asm("r3") = (u32)i << 2;
            register u8 *addr asm("r3");
            s8 val;
            asm volatile("add r3, r1, r3" : "=r"(addr) : "r"(off3), "r"(list));
            val = (s8)addr[3];
            if (val > 0) {
                goto ret0;
            }
            if (val == -2) {
                goto ret0;
            }
        }
    }
ret1:
    return 1;
ret0:
    return 0;
}
