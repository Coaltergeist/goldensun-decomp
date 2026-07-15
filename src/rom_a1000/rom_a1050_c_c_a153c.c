typedef signed short s16;
typedef unsigned short u16;

extern unsigned char Label210[] asm(".Laf210");
extern unsigned char Label214[] asm(".Laf214");
extern unsigned char Label218[] asm(".Laf218");
extern void _Func_801e8b0(void *, int, int, int);
extern void _UIDrawText(void *, int, int, int);
extern void Func_80a14f0(int, int, int, int);
extern void _SetTextColor(int);

void Func_80a153c(void *arg0, int arg1)
{
    register char *stats asm("r7") = arg0;
    register int ui asm("r6") = arg1;
    register int value asm("r5");
    register void *label asm("r8");

    _Func_801e8b0(Label210, ui, 0, 0x28);
    label = Label214;
    _UIDrawText(label, ui, 0x30, 0x28);
    value = *(s16 *)(stats + 0x34);
    Func_80a14f0(value, ui, 0x58, 0x28);
    value = *(s16 *)(stats + 0x38);
    if (value < ((int)*(u16 *)(stats + 0x34) << 16 >> 18))
        _SetTextColor(4);
    if (value == 0)
        _SetTextColor(2);
    Func_80a14f0(value, ui, 0x30, 0x28);
    _SetTextColor(15);
    _Func_801e8b0(Label218, ui, 0, 0x30);
    _UIDrawText(label, ui, 0x30, 0x30);
    value = *(s16 *)(stats + 0x3a);
    Func_80a14f0(value, ui, 0x30, 0x30);
    value = *(s16 *)(stats + 0x36);
    Func_80a14f0(value, ui, 0x58, 0x30);
}
