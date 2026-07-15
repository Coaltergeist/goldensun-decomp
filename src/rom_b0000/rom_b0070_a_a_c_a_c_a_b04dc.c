typedef unsigned char u8;

extern u8 *iwram_3001f2c;
extern int _GetSpriteVoice(int sprite);
extern void _Func_8019a54(void);
extern void _Func_8017658(int message, int style, int value, int voice);
extern int _Func_8017364(void);
extern void WaitFrames(int frames);

void Func_80b04dc(int messageId)
{
    register u8 *state asm("r6") = iwram_3001f2c;
    register int message asm("r5") = messageId;
    register int voice asm("r7") =
        _GetSpriteVoice(*(unsigned short *)(state + 0x3a4));
    register int type asm("r1");
    register int flag asm("r3");

    _Func_8019a54();
    asm volatile(
        "ldr r2, =0x3a9\n\t"
        "add r3, r6, r2\n\t"
        "mov r1, #0\n\t"
        "ldrsb r1, [r3, r1]"
        : "=r"(type)
        : "r"(state)
        : "r2", "r3");
    if (type == 2)
        asm volatile(
            "ldr r3, =0xcc6\n\t"
            "ldr r2, =0xc9b\n\t"
            "sub r3, r2\n\t"
            "add r5, r3"
            : "+r"(message)
            :
            : "r2", "r3");
    if (type == 0)
        asm volatile(
            "ldr r3, =0xcf1\n\t"
            "ldr r2, =0xc9b\n\t"
            "sub r3, r2\n\t"
            "add r5, r3"
            : "+r"(message)
            :
            : "r2", "r3");
    asm volatile(
        "mov r2, #0xeb\n\t"
        "lsl r2, #2\n\t"
        "add r3, r6, r2\n\t"
        "ldrb r3, [r3]\n\t"
        "lsl r3, #24\n\t"
        "asr r3, #24"
        : "=r"(flag)
        : "r"(state)
        : "r2");
    if (flag != 0)
        asm volatile(
            "ldr r3, =0xd4c\n\t"
            "ldr r2, =0xc9b\n\t"
            "sub r3, r2\n\t"
            "add r5, r3"
            : "+r"(message)
            :
            : "r2", "r3");

    _Func_8017658(message, 5, 0, (voice << 16) | 0x22);
    while (_Func_8017364() == 0)
        WaitFrames(1);
    WaitFrames(1);
}
