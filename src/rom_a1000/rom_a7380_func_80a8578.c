typedef unsigned char u8;
extern u8 *iwram_3001f2c;
extern u8 *_GetUnit(int);
extern int _Func_8079008(int,int);
extern void _Func_8019908(int,int);
extern void *Func_8004938(int);
extern void _Func_801965c(int,void *,int);
extern void _Func_8017aa4(void *,int,int,int);
extern void free(void *);
void Func_80a8578(int value, int inputSelection, int mode)
{
    register int inputValue asm("r8") = value;
    int selection = inputSelection;
    u8 *state = iwram_3001f2c;
    void *buffer;
    if (mode == 0 && selection > 3) selection++;
    if (selection == 1) {
        register u8 *unitId asm("r6") = state + 0x21a;
        u8 *unit = _GetUnit(*unitId);
        if (unit[0xf] == 0x63) selection = 8;
        else {
            int amount = _Func_8079008(*unitId, unit[0xf] + 1);
            _Func_8019908(amount - *(int *)(unit + 0x124), 5);
        }
    }
    buffer = Func_8004938(0x100);
    { register int id asm("r0"); register void *data asm("r1"); register int size asm("r2");
      asm volatile("ldr r0, =0xbe6\n\tmov r1, r5\n\tadd r0, r7, r0\n\tmov r2, #0x80"
                   : "=r"(id), "=r"(data), "=r"(size), "+r"(buffer) : "r"(selection));
      _Func_801965c(id, data, size); }
    _Func_8017aa4(buffer, inputValue, 0, -1);
    free(buffer);
}
