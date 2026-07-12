extern unsigned char gState[];
extern unsigned char Value_bd[] asm("0xbd");
extern unsigned char Script_1aec[] asm(".L1aec");
extern unsigned char Script_1cfc[] asm(".L1cfc");
extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __CutsceneWait(int duration);
extern void __ActorMessage(int actor, int message);

unsigned char *OvlFunc_951_2008044(void)
{
    register unsigned int value asm("r3");
    register unsigned int offset asm("r1");
    register int state asm("r2");

    value = (unsigned int)gState;
    asm volatile("" : "+r"(value));
    offset = 0xe0;
    offset <<= 1;
    asm volatile("" : "+r"(value), "+r"(offset));
    value += offset;
    offset = 0;
    asm volatile("" : "+r"(value), "+r"(offset));
    state = *(short *)(value + offset);
    value = (unsigned int)Value_bd;
    asm volatile("" : "+r"(value), "+r"(state));

    if (state == value)
        return Script_1aec;
    return Script_1cfc;
}

void OvlFunc_951_2008074(int actor)
{
    register int message asm("r5") = 0xe39;
    register int actorReg asm("r6") = actor;
    register int arg0 asm("r0");
    register int arg1 asm("r1");

    asm volatile("" : "+r"(message), "+r"(actorReg));
    arg0 = message;
    asm volatile("" : "+r"(arg0));
    __MessageID(arg0);
    arg1 = 0;
    arg0 = actorReg;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __Func_8092c40(arg0, arg1);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0xa);
        __MessageID(message + 1);
    } else {
        __MessageID(message + 2);
    }
    arg0 = actorReg;
    arg1 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __ActorMessage(arg0, arg1);
}

void OvlFunc_951_20080bc(int actor)
{
    register int message asm("r5") = 0xe19;
    register int actorReg asm("r6") = actor;
    register int arg0 asm("r0");
    register int arg1 asm("r1");

    asm volatile("" : "+r"(message), "+r"(actorReg));
    arg0 = message;
    asm volatile("" : "+r"(arg0));
    __MessageID(arg0);
    arg1 = 0;
    arg0 = actorReg;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __Func_8092c40(arg0, arg1);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0xa);
        __MessageID(message + 1);
    } else {
        __MessageID(message + 2);
    }
    arg0 = actorReg;
    arg1 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __ActorMessage(arg0, arg1);
}
