extern unsigned char gState[];
extern unsigned char iwram_3001ebc[];
extern void Func_8092c40(int actor, int message);
extern int Func_8091c7c(int actor, int mode);
extern void ActorMessage(int actor, int message);

int Func_8093054(int actor, int message) {
    register int actorReg asm("r5");
    register int messageReg asm("r6");
    register int result asm("r7");

    messageReg = message;
    asm volatile("" : "+r"(messageReg));
    actorReg = actor;
    asm volatile("" : "+r"(actorReg), "+r"(messageReg));
    Func_8092c40(actor, message);
    {
        register unsigned int address asm("r3");
        register unsigned int offset asm("r2");
        register int callActor asm("r0");
        register int zero asm("r1");

        address = (unsigned int)gState;
        asm volatile("" : "+r"(address));
        offset = 0xfa;
        asm volatile("" : "+r"(address), "+r"(offset));
        offset <<= 1;
        asm volatile("" : "+r"(address), "+r"(offset));
        address += offset;
        asm volatile("" : "+r"(address));
        callActor = *(int *)address;
        asm volatile("" : "+r"(callActor));
        zero = 0;
        asm volatile("" : "+r"(callActor), "+r"(zero));
        result = Func_8091c7c(callActor, zero);
    }
    asm volatile("" : "+r"(result));
    if (result == 0) {
        register int arg0 asm("r0") = actorReg;
        register int arg1 asm("r1");

        asm volatile("" : "+r"(arg0));
        arg1 = messageReg;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        ActorMessage(arg0, arg1);
        {
            register unsigned int temp asm("r3");
            register unsigned char *base asm("r2");

            temp = (unsigned int)iwram_3001ebc;
            asm volatile("" : "+r"(temp));
            base = *(unsigned char **)temp;
            asm volatile("" : "+r"(base));
            temp = 0xec;
            asm volatile("" : "+r"(base), "+r"(temp));
            temp <<= 1;
            asm volatile("" : "+r"(base), "+r"(temp));
            base += temp;
            asm volatile("" : "+r"(base));
            temp = *(unsigned short *)base;
            asm volatile("" : "+r"(base), "+r"(temp));
            temp++;
            asm volatile("" : "+r"(base), "+r"(temp));
            *(unsigned short *)base = temp;
        }
    } else {
        register unsigned int temp asm("r3");
        register unsigned char *base asm("r2");

        temp = (unsigned int)iwram_3001ebc;
        asm volatile("" : "+r"(temp));
        base = *(unsigned char **)temp;
        asm volatile("" : "+r"(base));
        temp = 0xec;
        asm volatile("" : "+r"(base), "+r"(temp));
        temp <<= 1;
        asm volatile("" : "+r"(base), "+r"(temp));
        base += temp;
        asm volatile("" : "+r"(base));
        temp = *(unsigned short *)base;
        asm volatile("" : "+r"(base), "+r"(temp));
        temp++;
        asm volatile("" : "+r"(base), "+r"(temp));
        *(unsigned short *)base = temp;
        {
            register int arg0 asm("r0") = actorReg;
            register int arg1 asm("r1");

            asm volatile("" : "+r"(arg0));
            arg1 = messageReg;
            asm volatile("" : "+r"(arg0), "+r"(arg1));
            ActorMessage(arg0, arg1);
        }
    }
    return result;
}
