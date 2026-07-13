extern unsigned int __GetFlag(unsigned int flag);
extern void __SetFlag(unsigned int flag);
extern void __ClearFlag(unsigned int flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_8091200(unsigned int script, unsigned int arg1);
extern void __Func_8091254(unsigned int frames);

void OvlFunc_890_2008108(void)
{
    unsigned int get_flag = 0x200;

    /* Keep the two 0x200 call arguments as distinct materializations. */
    asm("" : "+r" (get_flag));
    if (!__GetFlag(get_flag)) {
        __CutsceneStart();
        __Func_8091200(0x10000, 1);
        __Func_8091254(0x14);
        {
            unsigned int set_flag = 0x200;
            asm("" : "+r" (set_flag));
            __SetFlag(set_flag);
        }
        __ClearFlag(0x201);
        __ClearFlag(0x202);
        __CutsceneEnd();
    }
}
