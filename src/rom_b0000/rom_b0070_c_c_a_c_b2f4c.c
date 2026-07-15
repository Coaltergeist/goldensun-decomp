typedef unsigned char u8;
typedef signed char s8;
typedef unsigned int u32;

typedef struct { int x, y, z; } Vec3;

extern u32 Random(void);
extern void vec3_translate(int distance, u32 angle, Vec3 *position);
extern void _Func_809ba5c(void *effect, int x, int z);
extern int _Func_809ba34(void *effect);
extern void _Func_809bb34(void *effect);

void Func_80b2f4c(u8 *arg)
{
    register u8 *effect asm("r6") = arg;
    register u8 *state_addr asm("r2");
    register u8 *statep asm("r8");
    register int state asm("r7");
    register Vec3 *p asm("r5");

    asm volatile(
        "mov r2, #0x40\n\t"
        "add r2, r6\n\t"
        "mov r7, #0\n\t"
        "ldrsb r7, [r2, r7]\n\t"
        "sub sp, #0xc"
        : "=r"(state_addr), "=r"(state) : "r"(effect) : "memory", "cc");
    statep = state_addr;
    asm volatile("" : "+r"(statep));

    if (state == 0) {
        int x = *(int *)(effect + 0x14);
        asm volatile("mov r5, sp" : "=r"(p));
        asm volatile("" : "+r"(p));
        p->x = x;
        p->z = *(int *)(effect + 0x18);
        {
            register u32 angle asm("r1") = Random();
            register int distance asm("r0");
            register Vec3 *pos asm("r2");
            asm volatile("" : "+r"(angle));
            distance = 0xa0;
            asm volatile("" : "+r"(angle), "+r"(distance));
            distance <<= 14;
            asm volatile("" : "+r"(angle), "+r"(distance));
            pos = p;
            asm volatile("" : "+r"(angle), "+r"(distance), "+r"(pos));
            vec3_translate(distance, angle, pos);
        }
        _Func_809ba5c(effect, p->x, p->z);

        p->x = *(int *)(effect + 0x14);
        p->z = *(int *)(effect + 0x18);
        {
            register u32 angle asm("r1") = Random();
            register int distance asm("r0");
            register Vec3 *pos asm("r2");
            asm volatile("" : "+r"(angle));
            distance = 0x80;
            asm volatile("" : "+r"(angle), "+r"(distance));
            pos = p;
            asm volatile("" : "+r"(angle), "+r"(distance), "+r"(pos));
            distance <<= 11;
            asm volatile("" : "+r"(angle), "+r"(distance), "+r"(pos));
            vec3_translate(distance, angle, pos);
        }
        *(int *)(effect + 0x0c) = p->x;
        *(int *)(effect + 0x10) = p->z;
        *(int *)(effect + 0x20) = 0x20000;
        *(int *)(effect + 0x24) = 0x6666;
        {
            register u8 *field asm("r3") = effect;
            asm volatile("" : "+r"(field));
            field += 0x42;
            *field = 0;
        }
        {
            register u8 *s asm("r2") = statep;
            u8 next;
            asm volatile("" : "+r"(s));
            next = *s;
            next++;
            *s = next;
        }
    } else if (state == 1) {
        int result = _Func_809ba34(effect);
        if (result == 0)
            *statep = result;
    } else if (state == 2) {
        if (_Func_809ba34(effect) == 0)
            _Func_809bb34(effect);
    }
    asm volatile("add sp, #0xc" : : : "memory");
}
