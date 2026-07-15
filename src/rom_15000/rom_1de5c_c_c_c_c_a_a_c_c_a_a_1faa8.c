typedef unsigned char u8;
typedef short s16;
typedef unsigned int u32;

extern void *Func_8004970(unsigned int size);
extern s16 ewram_2002004[];
extern u8 ewram_2000000[];
extern u8 ewram_20004e4[];
extern int Func_80056cc(void);
extern int Func_8005a78(int slot, void *buf);
extern int SomethingSaveHeader(int slot, void *buf);
extern void Func_801776c(const char *msg, int arg);
extern void Func_8001af8(void *dst, void *src, unsigned int size)
    __attribute__((long_call));
extern void Func_8005cf8(void);
extern void free(void *ptr);
extern const char MSG_0a[] asm("_MSG_0a");
extern const char MSG_0b[] asm("_MSG_0b");

int Func_801faa8(void)
{
    register int r0v asm("r0");
    register void *buf asm("r5");
    register s16 *arr asm("r6");
    register int result asm("r7");

    r0v = (int)Func_8004970(0x1000);
    asm volatile("" : "+r"(r0v));
    arr = ewram_2002004;
    asm volatile("" : "+r"(arr));
    buf = (void *)r0v;
    asm volatile("" : "+r"(buf));
    r0v = arr[0];
    result = 0;

    if (r0v == -1)
        return r0v;

    if (Func_80056cc() != 0) {
        result = 9;
        Func_801776c(MSG_0a, 1);
        goto negate;
    }
    {
        u8 *dst;
        if (Func_8005a78(arr[0], buf) != 0) {
            Func_801776c(MSG_0b, 1);
            result = -2;
        }
        dst = (u8 *)buf + (u32)ewram_20004e4;
        dst -= (u32)ewram_2000000;
        Func_8001af8(dst, ewram_20004e4, 0x10);
        if (SomethingSaveHeader(arr[0], buf) != 0) {
            Func_801776c(MSG_0b, 1);
            result = 3;
negate:
            result = -result;
        }
    }
    Func_8005cf8();
    free(buf);
    return result;
}
