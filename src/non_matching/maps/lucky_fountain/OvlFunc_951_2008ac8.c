extern int CS951_ShowMessage(int, int) __asm__("__ShowActorMessage_NoWait");
extern unsigned char CS951_Message_e4c[] __asm__(".Lcs951_message_e4c");
__asm__(".equ .Lcs951_message_e4c, 0xe4c");
extern unsigned char CS951_Message_e49[] __asm__(".Lcs951_message_e49");
__asm__(".equ .Lcs951_message_e49, 0xe49");
extern unsigned char CS951_Message_e43[] __asm__(".Lcs951_message_e43");
__asm__(".equ .Lcs951_message_e43, 0xe43");
extern unsigned int __Func_8078b60(unsigned int);
extern unsigned int __LuckyFountainMenu(unsigned int);
extern unsigned int __Func_80789dc(unsigned int);
extern int __Func_8078550(void);
extern void __Func_808e118(void);
extern void *__CreateUIBox(int, int, int, int, int);
extern void __CloseUIBox(void *, int);
extern void __Func_801e7c0(unsigned int, void *, unsigned int, unsigned int);
extern void __Func_801ea08(int, unsigned int, void *, unsigned int, unsigned int);
extern void __Func_8019a54(void);
extern void __Func_8019908(int, int);
extern int __Func_8091c7c(int, int);
extern void __AddCoins(int);
extern unsigned int __Random(void);
/* Updated by the VBlank input handler (src/core/runtime/intr/intr.c), hence volatile. */
extern volatile unsigned int gKeyPress;
extern unsigned short CS951_CoinPrizes[] __asm__(".Lm951_200c");
extern int gLuckyFountainPrizes[];
extern int OvlFunc_951_200973c(int);
extern void OvlFunc_951_20084bc(int);
extern int CS951_PlayFountain(void) __asm__("OvlFunc_951_2008ac8");

int CS951_PlayFountain(void)
{
    int selection = 0;
    unsigned int coins, tokens;
    unsigned int state;
    void *box;
    int confirmed, result, count, total, i, roll, weight;
    int message;
    int text;
    API_CutsceneStart();
    __Func_808e118();
    message = (int)CS951_Message_e43;
    state = (unsigned int)&gState;
retry:
    coins = *(unsigned int *)(state + 0x10);
    tokens = __Func_8078b60(0xe5);
    API_MessageID(message);
    CS951_ShowMessage(-1, 0);
    box = __CreateUIBox(0, 0, 17, 4, 2);
    text = (int)CS951_Message_e49;
    __Func_801e7c0(text, box, 0, 0);
    __Func_801ea08(coins, 6, box, 0x48, 0);
    __Func_801e7c0(text + 1, box, 0, 8);
    __Func_801ea08(tokens, 6, box, 0x48, 8);
    selection = __LuckyFountainMenu(selection);
    __CloseUIBox(box, 2);
    __Func_8019a54();
    if (selection == -1)
        goto done;
    if (selection == 0) {
        if (coins == 0) {
            API_MessageID(message + 1);
            API_ActorMessage(-1, 0);
            API_WaitFrames(1);
            goto retry;
        }
    } else if (selection == 1) {
        if (tokens == 0) {
            API_MessageID(message + 2);
            API_ActorMessage(-1, 0);
            API_WaitFrames(1);
            goto retry;
        }
        if (__Func_8078550() == 0) {
            API_MessageID(message + 4);
            CS951_ShowMessage(-1, 0);
            if (__Func_8091c7c(0, 0) != 0)
                goto done;
        }
    }
    box = __CreateUIBox(20, 15, 9, 4, 2);
    text = (int)CS951_Message_e4c;
    __Func_801e7c0(text, box, 0, 0);
    __Func_801e7c0(text + 1, box, 0, 8);
    API_WaitFrames(5);
    API_PlaySound(0x74);
    for (;;) {
        if (gKeyPress & 1) {
            API_PlaySound(0x70);
            confirmed = 0;
            break;
        }
        if (gKeyPress & 2) {
            API_PlaySound(0x71);
            confirmed = -1;
            break;
        }
        API_WaitFrames(1);
    }
    __CloseUIBox(box, 2);
    if (confirmed == -1)
        goto done;
    if (selection == 0)
        __AddCoins(-1);
    else if (selection == 1)
        __Func_80789dc(0xe5);
    result = OvlFunc_951_200973c(selection);
    if (selection == 0) {
        if (result != 4) {
            __AddCoins(CS951_CoinPrizes[result]);
            API_PlaySound(0x5b);
            __Func_8019908(CS951_CoinPrizes[result], 5);
            API_MessageID(0xe46);
            API_ActorMessage(-1, 0);
        } else {
            API_PlaySound(0x71);
            API_CutsceneWait(10);
        }
    } else {
        count = result * 3 + 3;
        i = 0;
        total = 0;
        if (i < count) {
            do {
                total += ((signed char *)(state + 1))[0x11c + i];
                i++;
            } while (i < count);
        }
        /* Random scaling deliberately uses a wrapping unsigned product. */
        roll = ((unsigned int)total * __Random()) >> 16;
        roll -= ((signed char *)(state + 1))[0x11c];
        i = 0;
        if (roll >= 0) {
          do {
            i++;
            if (i > 14)
                break;
            roll -= ((signed char *)(state + 1))[0x11c + i];
          } while (roll >= 0);
        }
        if (i == 15)
            i = 14;
        OvlFunc_951_20084bc(gLuckyFountainPrizes[i]);
        weight = ((signed char *)(state + 1))[0x11c + i];
        if (weight > 1)
            ((signed char *)(state + 1))[0x11c + i] = weight / 2;
    }
done:
    API_CutsceneEnd();
    return 0;
}
