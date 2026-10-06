void OvlFunc_926_2008484(void)
{
    unsigned short *base;

    __CutsceneStart();
    if (__GetFlag(0x88f))
    {
        __MessageID(0x17d6);
        __Func_8093054(0xc, 0);
        __CutsceneEnd();
    }
    else
    {
        __MessageID(0x1794);
        __ShowActorMessage_NoWait(0xc, 0);
        if (__Func_8091c7c(0, 0) == 1)
        {
            base = *(unsigned short **)iwram_3001ebc;
            base[0xec]++;
            __ShowActorMessage_NoWait(0xc, 0);
            if (__Func_8091c7c(0, 0) == 1)
            {
                base = *(unsigned short **)iwram_3001ebc;
                base[0xec]++;
            }
        }
        API_ActorMessage(0xc, 0);
        __CutsceneEnd();
    }
}
