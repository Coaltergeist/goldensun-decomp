typedef unsigned int u32;

extern void Func_801965c(u32 id, void *buffer, u32 size);
extern u32 Func_8017aa4(void *buffer, void *value, u32 x, u32 color);

u32 Func_80270d8(void)
{
    register void *ctxIn asm("r9");
    struct {
        char text[0x80];
        void *savedCtx;
    } local;

    register void *ctx asm("r2");
    register char *buffer asm("r6");
    register void **slot asm("r3");
    register char *base asm("r5");
    register void *arg1 asm("r1");
    register u32 arg2 asm("r2");
    register u32 arg0 asm("r0");
    register void *field asm("r3");
    register void *arg1b asm("r1");
    register u32 arg2b asm("r2");
    register u32 arg3b asm("r3");
    register u32 arg0b asm("r0");

    ctx = ctxIn;
    asm volatile("" : "+r"(ctx));
    buffer = local.text;
    asm volatile("" : "+r"(buffer), "+r"(ctx));
    slot = (void **)&local.savedCtx;
    asm volatile("" : "+r"(slot), "+r"(buffer), "+r"(ctx));
    base = ctx;
    asm volatile("" : "+r"(base), "+r"(slot), "+r"(buffer), "+r"(ctx));
    *slot = ctx;
    asm volatile("" : "+r"(base), "+r"(buffer));
    arg1 = buffer;
    asm volatile("" : "+r"(arg1), "+r"(base));
    arg2 = 0x34;
    asm volatile("" : "+r"(arg1), "+r"(arg2), "+r"(base));
    base -= 8;
    asm volatile("" : "+r"(arg1), "+r"(arg2), "+r"(base));
    arg0 = 0x80d;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(base));

    Func_801965c(arg0, arg1, arg2);

    field = *(void **)base;
    asm volatile("" : "+r"(field), "+r"(buffer));
    arg0b = (u32)buffer;
    asm volatile("" : "+r"(arg0b), "+r"(field));
    arg1b = *(void **)((char *)field + 0x44);
    asm volatile("" : "+r"(arg0b), "+r"(arg1b));
    arg2b = 0;
    asm volatile("" : "+r"(arg0b), "+r"(arg1b), "+r"(arg2b));
    arg3b = 4;
    asm volatile("" : "+r"(arg0b), "+r"(arg1b), "+r"(arg2b), "+r"(arg3b));

    return Func_8017aa4((void *)arg0b, arg1b, arg2b, arg3b);
}
