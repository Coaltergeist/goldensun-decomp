extern unsigned char iwram_3001e8c[];
extern int BufferString(int stringID, int mode);
extern void *Func_80165d8(void *box, int index, int arg2, int arg3, void *arg4, int arg5);

void *Func_80175c0(void *box, int stringID) {
    volatile int padding[2];
    register unsigned char *state asm("r5");
    register int result asm("r6");
    register void *boxReg asm("r7");
    register unsigned int temp asm("r3");
    register unsigned int offset asm("r2");
    register int index asm("r1");
    register void *returnValue asm("r0");

    temp = (unsigned int)iwram_3001e8c;
    offset = 0x12f4;
    state = *(unsigned char **)temp;
    result = 0;
    temp = (unsigned int)(state + offset);
    offset += 2;
    *(unsigned short *)temp = result;
    temp = (unsigned int)(state + offset);
    *(unsigned short *)temp = result;
    boxReg = box;
    returnValue = (void *)stringID;
    index = 1;
    returnValue = (void *)BufferString((int)returnValue, index);
    offset = 0xeb;
    asm volatile("" : "+r"(returnValue), "+r"(offset));
    index = (int)returnValue;
    asm volatile("" : "+r"(index), "+r"(offset));
    temp = index << 1;
    asm volatile("" : "+r"(index), "+r"(offset), "+r"(temp));
    offset <<= 4;
    asm volatile("" : "+r"(index), "+r"(offset), "+r"(temp));
    temp += offset;
    asm volatile("" : "+r"(temp));
    temp = *(unsigned short *)(state + temp);
    asm volatile("" : "+r"(temp));
    returnValue = 0;
    asm volatile("" : "+r"(returnValue), "+r"(temp));
    if (temp != 0 && boxReg != 0) {
        result = (int)Func_80165d8(boxReg, index, 0, 0, (void *)result, 1);
        asm volatile("" : "+r"(result));
        returnValue = 0;
        asm volatile("" : "+r"(returnValue), "+r"(result));
        if (result != 0)
            returnValue = (void *)result;
    }
    return returnValue;
}
