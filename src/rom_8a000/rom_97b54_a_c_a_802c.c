extern unsigned char iwram_3001f30[];

extern void Func_8097384(void);
extern int Func_8098070(int arg0);
extern void Func_8098184(unsigned char *actor);
extern void _Actor_SetAnim(unsigned int actor, unsigned int animation);
extern void WaitFrames(unsigned int nframes);
extern void Func_809748c(void);
extern void Func_80981b0(unsigned char *actor);

void Field_Move(void)
{
    int *r3;
    unsigned char *actor;

    r3 = *(int **)iwram_3001f30;
    /* Reserve GCC's original spill slot ahead of the target-field load. */
    asm volatile("sub sp, #0xc" ::: "memory");
    actor = *(unsigned char **)((char *)r3 + 0x10);
    Func_8097384();
    actor = (unsigned char *)Func_8098070((int)actor);
    Func_8098184(actor);
    if (actor != 0) {
        _Actor_SetAnim((unsigned int)actor, 4);
        WaitFrames(0x1e);
    }
    Func_809748c();
    Func_80981b0(actor);
    asm volatile("add sp, #0xc" ::: "memory");
}
