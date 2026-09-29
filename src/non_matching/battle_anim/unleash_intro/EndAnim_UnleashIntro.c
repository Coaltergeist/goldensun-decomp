extern void Func_80cc960(void);

extern void Task_BlitAnim(void);

extern void Func_80008d4(void);

extern void StopTask(void *task);

extern void Func_80cd4b4(void);

extern void gfree(unsigned int index);

void EndAnim_UnleashIntro(void)
{
    void (*fn)(void);

    StopTask(Func_80cc960);
    StopTask(Task_BlitAnim);
    fn = Func_80008d4;
    fn();
    StopTask(Func_80cd4b4);
    gfree(0x28);
    gfree(0x27);
}
