typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern const s8 table_3740f[] asm(".L3740f");

extern int Func_801f77c(void);
extern void Func_80284dc(void);
extern void AddMenuBarOption(int option);
extern void Func_8028808(int a, int b, int c);
extern int Func_8028574(int arg);
extern void Func_802851c(void);
extern s16 ewram_200200c;
extern s16 ewram_2002010;

int Func_80289e8(void)
{
    register u32 kind asm("r6") = 0;
    register int selection asm("r5") = 0;
    int status = Func_801f77c();

    if (status < 0)
        return -1;
    if (status == 0)
        return 0;

    if (status == 3) {
        kind = 1;
    } else if (status == 0x67) {
        kind = 2;
    } else if (status > 0x64) {
        kind = 3;
    } else {
        selection = 1;
    }

    Func_80284dc();

    if (kind == 0 || kind == 3)
        AddMenuBarOption(0x15);
    if (kind <= 1)
        AddMenuBarOption(0x16);
    if (kind == 0 || kind == 3)
        AddMenuBarOption(0x17);
    AddMenuBarOption(0x18);

    if (ewram_200200c != 0)
        AddMenuBarOption(0x1d);
    if (ewram_2002010 != 0)
        AddMenuBarOption(0x1e);

    Func_8028808(0x11, 7, 0);
    selection = Func_8028574(selection);
    Func_802851c();
    if (selection >= 0) {
        int triple = kind * 3;
        const s8 *table = table_3740f;
        register int idx asm("r3") = triple * 2;
        asm volatile("add r3, r5, r3" : "+r"(idx) : "r"(selection));
        selection = table[idx];
    }

    return selection;
}
