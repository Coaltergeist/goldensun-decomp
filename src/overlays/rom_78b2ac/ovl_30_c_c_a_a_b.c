extern unsigned int __GetFlag(unsigned int flag);
extern void __SetFlag(unsigned int flag);
extern void __ClearFlag(unsigned int flag);
extern void __Func_8091200(unsigned int script, unsigned int arg1);
extern void __Func_8091254(unsigned int frames);

void OvlFunc_890_20081ec(void)
{
    unsigned int get_flag = 0x202;

    /* Keep the two 0x202 call arguments as distinct literal loads. */
    asm("" : "+r" (get_flag));
    if (!__GetFlag(get_flag)) {
        __Func_8091200(0x202db1, 1);
        __Func_8091254(0x14);
        {
            unsigned int set_flag = 0x202;
            asm("" : "+r" (set_flag));
            __SetFlag(set_flag);
        }
        __ClearFlag(0x200);
        __ClearFlag(0x201);
    }
}
