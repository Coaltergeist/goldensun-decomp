typedef unsigned char u8;
typedef unsigned short u16;

extern u8 iwram_3001e8c[];
extern int BufferString(int textId, int mode);
extern int BufferString_NoArgs(void) asm("BufferString");
extern void *CreateUIBox(int x, int y, int width, int height, int style);
extern void Func_8017248(int x, int y, int width, int height, int style);
extern int Func_8016670(void *box, int textIndex, int offset);
extern void CloseUIBox(void *box, int mode);

void PrintBattleText(int textId)
{
    register u8 *work asm("r6");
    register int *uiState asm("r7");
    register int zero asm("r8");
    register int one asm("r9");
    register int textIndex asm("r10");
    register u8 *status asm("r5");
    void *box;
    int result;

    work = *(u8 **)iwram_3001e8c;
    uiState = *(int **)(iwram_3001e8c + 0x58);
    asm("" : "+r"(work), "+r"(uiState));
    {
        register unsigned statusOffset asm("r3") = 0xea5;
        asm("" : "+r"(statusOffset) : "r"(work), "r"(uiState));
        status = work + statusOffset;
    }
    {
        register int statusValue asm("r3") = 2;
        register int zeroTemp asm("r2") = 0;
        asm("" : "+r"(statusValue));
        asm("" : "+r"(zeroTemp) : "r"(statusValue) : "memory");
        zero = zeroTemp;
        *status = statusValue;
    }
    {
        register int bufferResult asm("r0");
        register int mode asm("r1");
        register int oneTemp asm("r2");
        register int calculation asm("r3");
        register unsigned tableOffset asm("r2");
        register unsigned entry asm("r3");
        asm("mov %0, #1" : "=r"(mode) : "m"(*status));
        bufferResult = BufferString(textId, mode);
        oneTemp = 1;
        asm volatile("" : "+r"(oneTemp) : "r"(bufferResult));
        one = oneTemp;
        calculation = one;
        tableOffset = 0xeb;
        *status = calculation;
        tableOffset <<= 4;
        calculation = bufferResult << 1;
        calculation += tableOffset;
        entry = *(u16 *)(work + calculation);
        textIndex = bufferResult;
        asm volatile("" : "+r"(textIndex) : "r"(entry));
        if (entry == 0)
            return;
    }

    {
        register void *boxReturn asm("r0") = *(void **)uiState;
        if (boxReturn == 0) {
        boxReturn = CreateUIBox(0, 15, 30, 6, 10);
        box = boxReturn;
        *(void **)uiState = box;
        Func_8017248(0, 15, 30, 6, one);
        uiState[2] = zero;
            goto have_box;
        }
        asm volatile("" : "=r"(box) : "0"(boxReturn));
    }
have_box:
    if (box == 0)
        return;

    result = Func_8016670(box, textIndex, uiState[2]);
    {
        register int clear asm("r3") = 0;
        register int resultCopy asm("r8") = result;
        asm volatile("" : "+r"(clear));
        asm volatile("" : "+r"(resultCopy) : "r"(clear));
        uiState[1] = result;
        uiState[2] = clear;
    }
    if (result == 0)
        CloseUIBox(box, 1);
}
