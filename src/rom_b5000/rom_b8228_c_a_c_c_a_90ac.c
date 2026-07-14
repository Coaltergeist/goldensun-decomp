typedef unsigned char u8;
typedef unsigned short u16;

extern int Func_80b6c08(int kind, u16 *values);
extern u8 *_GetUnit(unsigned int unit);
extern void _CalcStats(int unit);

void Func_80b90ac(void)
{
    u16 actors[14];
    register u16 *base asm("r5") = actors;
    int count;

    count = Func_80b6c08(3, base);

    if (count > 0) {
        u16 *arr = base;
        int offset = 0;
        u8 val;
        int n;

        val = offset;
        n = count;
        do {
            u8 *unit = _GetUnit(*(u16 *)(offset + (unsigned int)arr));
            u8 *dst = &unit[0x12b];
            int id = *(u16 *)(offset + (unsigned int)arr);
            *dst = val;
            asm volatile("" ::: "memory");
            n--;
            _CalcStats(id);
            offset += 2;
        } while (n != 0);
    }
}
