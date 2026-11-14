/* Remaining diff: CSE/GCSE hoists &cursor (sp + 8) into r6 across the 3 calls
 * (__Func_801c0dc and both __Func_801c154 calls), pushing box to r8 and Lm888_411c
 * to sl, whereas target asm rematerializes `add r0, sp, #8` at each call site and
 * keeps box in r7 and Lm888_411c in r8.
 */
__asm__(".equ .Lconst_116e, 0x116e");
extern unsigned char Const116e[] __asm__(".Lconst_116e");
extern void *__CreateUIBox(int, int, int, int, int);
extern void __DrawSmallText(int, void *, int, int);
extern int __Func_801f730(int);
extern void __Func_801c0dc(void *, void *);
extern void __Func_801c154(void *, int, int);
extern void __Func_801c17c(int);
extern void __CloseUIBox(void *, int);
extern int gKeyPress;
extern int gKeyRepeat;
extern unsigned int iwram_3001800;
extern int Lm888_411c[] __asm__(".Lm888_411c");

int OvlFunc_888_200a7d4(void)
{
    struct SpriteOAM cursor;
    int slot;
    void *box;
    int choice;

    API_MapActor_SetPos(8, 0, 0);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_SetPos(10, 0, 0);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetPos(0, 0, 0);

    API_Func_8091200(0x80 << 9, 2);
    API_Func_8091254(1);
    API_CutsceneWait(1);

    box = __CreateUIBox(2, 7, 0x19, 5, 1);
    choice = (int)Const116e;
    __DrawSmallText(choice, box, 0x10, 0);
    if (!__Func_801f730(1)) {
        __DrawSmallText(choice + 2, box, 0x10, 0x10);
    } else {
        __DrawSmallText(choice + 1, box, 0x10, 0x10);
    }

    __Func_801c0dc(&cursor, &slot);
    __Func_801c154(&cursor, 0x48, 0x3c);

    choice = 0;
    while (!(gKeyPress & 1)) {
        if (gKeyRepeat & 0xc0) {
            choice ^= 1;
        }
        __Func_801c154(&cursor, Lm888_411c[(iwram_3001800 >> 1) & 0xf] + 0x18, choice * 16 + 0x3c);
        API_CutsceneWait(1);
    }

    __Func_801c17c(slot);
    __CloseUIBox(box, 1);

    return choice;
}
