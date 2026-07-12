extern unsigned char Lbd4[] __asm__(".Lbd4");
extern void __SetFlag(int flag);

/* Keep the split TU's literal relocation section-relative, as in the ROM. */
asm(".section .data\n.Lbd4:\n.text");

void OvlFunc_910_20088e8(void)
{
    __PlaySound(0xbc);
    do { } while (0);
    __Func_8010560(Lbd4, 0x34, 0xb);
    __SetFlag(0x80 << 2);
}
