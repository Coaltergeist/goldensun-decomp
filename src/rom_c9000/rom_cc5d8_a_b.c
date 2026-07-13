typedef void (*Task)(void);
typedef void (*ClearMemory)(void *address, int count);

extern void Func_80cc960(void);
extern void Task_BlitAnim(void);
extern void Func_80cd4b4(void);
extern void Func_80008d4(void *address, int count);
extern void StopTask(Task task);
extern void gfree(int slot);

void Func_80ccbdc(void)
{
    register ClearMemory clear asm("r3");
    register int count asm("r1");
    register void *address asm("r0");

    StopTask(Func_80cc960);
    StopTask(Task_BlitAnim);
    /* Preserve the original indirect-call argument materialization order. */
    count = 0x80;
    asm volatile("" : "+r"(count));
    clear = (ClearMemory)Func_80008d4;
    asm volatile("" : "+r"(clear), "+r"(count));
    count <<= 7;
    asm volatile("" : "+r"(clear), "+r"(count));
    address = (void *)0x06004000;
    asm volatile("" : "+r"(clear), "+r"(count), "+r"(address));
    clear(address, count);
    StopTask(Func_80cd4b4);
    gfree(0x28);
    gfree(0x27);
}
