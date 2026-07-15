typedef signed char s8;

extern const s8 table_37403[] asm(".L37403");
extern const s8 table_373f7[] asm(".L373f7");

extern int _GetNumDjinn(int character);
extern void Func_80284dc(void);
extern void AddMenuBarOption(int option);
extern void Func_8028808(int a, int b, int c);
extern int Func_8028574(int selection);
extern void Func_802851c(void);

int Func_8028920(int index)
{
    register int selection asm("r5");
    register int no_djinn asm("r6") = 0;
    register int table_offset asm("r7");

    if (_GetNumDjinn(-1) == 0)
        no_djinn = 1;

    {
        int triple = no_djinn * 3;
        register const s8 *table asm("r2") = table_37403;
        register int table_value asm("r3");
        table_offset = triple * 2;
        table_value = table[index + table_offset];
        asm volatile("" : "+r"(table_value));
        selection = table_value - 1;
    }
    if (selection < 0)
        selection = 0;

    Func_80284dc();
    AddMenuBarOption(1);
    if (no_djinn == 0)
        AddMenuBarOption(15);
    AddMenuBarOption(2);
    AddMenuBarOption(7);
    Func_8028808(0x11, 7, 0);
    selection = Func_8028574(selection);
    Func_802851c();
    if (selection >= 0) {
        register int table_index asm("r3") = selection + table_offset;
        register const s8 *table asm("r2") = table_373f7;
        table_index++;
        selection = table[table_index];
    }
    return selection;
}
