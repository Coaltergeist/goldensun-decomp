extern void __StartMapBattle(int, int);

extern unsigned char EventConst5B[] __asm__(".Lconst_5b");

extern int __Func_8091f90(int, int);

void OvlFunc_933_2008c38(void) {
    unsigned char *gs;

    API_Func_80925cc(8, 2);
    __Func_8091f90((int)EventConst5B, 5);
    gs = (unsigned char *)&gState;
    gs[0x22b] = 3;
    __StartMapBattle(0x35, 5);
}
