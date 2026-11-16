/*
 * Remaining diff: `ldr r3, =gState` and `ldr r2, =0x22b` are swapped at +0x12..+0x14
 * (and their two constant pool words at +0x2c..+0x30).
 * With only one call (`__StartMapBattle`) following `strb r2, [r3]`, `haifa-sched` (`sched2`)
 * gives `r2 = 0x22b` 3 forward dependency links (`add`, `mov r2, #3`, `call`) vs 2 links on
 * `r3 = [LC_gState]` (`add`, `call`, since `RTX_UNCHANGING_P` prevents `strb` anti-dependence).
 */
extern void __StartMapBattle(int, int);
extern void __Func_8091f90(int, int);

void OvlFunc_933_2008c38(void)
{
    GlobalState *p;

    API_Func_80925cc(8, 2);
    __Func_8091f90((int)Const5B, 5);
    p = &gState;
    *(unsigned char *)((char *)p + 0x22b) = 3;
    __StartMapBattle(0x35, 5);
}
