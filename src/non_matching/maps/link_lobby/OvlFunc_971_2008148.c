static inline void LobbyConnection_SetState(unsigned char *base, int state)
{
    *(short *)(base + 0x182) = state;
}
static inline int LobbyConnection_GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

int OvlFunc_971_2008148(void)
{
    extern int __GetFlag(int);
    extern void __SetFlag(int);
    extern void __ClearFlag(int);
    unsigned char *base;
    int res;
    unsigned char *actor;

    base = *(unsigned char **)iwram_3001ebc;
    res = 1;
    actor = __MapActor_GetActor(0);
    if (*(int *)(actor + 0x10) > (0xe0 << 16)) {
        __ClearFlag(0xc1 << 2);
    }
    if (*(short *)(base + (0xc1 << 1)) != 2) {
        OvlFunc_971_200808c(0);
        if (LobbyConnection_GetFlag(0x303) == 0) {
            L1f4c++;
            if (L1f4c > 0x19) {
                void (*fn)(void *, unsigned int) = Func_80008d4;
                unsigned char *p = ewram_2002024;
                int count = 3;
                do {
                    count--;
                    fn(p, 0x14);
                    p += 0x18;
                } while (count >= 0);
                L1f4c = 0;
                OvlFunc_971_2008128(4);
            }
        } else {
            L1f4c = 0;
        }
        if (L1f4c == 0) {
            if (OvlFunc_971_200808c(0) != 0 &&
                (OvlFunc_971_200808c(1) != 0 || OvlFunc_971_200808c(2) != 0)) {
                __SetFlag(0x201);
                if (LobbyConnection_GetFlag(0x202) != 0) {
                    LobbyConnection_SetState(base, 1);
                }
                res = 1;
            } else {
                __ClearFlag(0x201);
                res = 0;
            }
        }
        if (LobbyConnection_GetFlag(0x201) != 0 && LobbyConnection_GetFlag(0x202) != 0 && LobbyConnection_GetFlag(0x80 << 2) == 0) {
            LobbyConnection_SetState(base, 1);
        }
    }
    if ((LobbyConnection_GetFlag(0x201) != 0 || LobbyConnection_GetFlag(0x202) != 0) &&
        LobbyConnection_GetFlag(0x173) == 0 &&
        OvlFunc_971_200808c(0) == 0 &&
        L1f4c > 0x18) {
        LobbyConnection_SetState(base, 2);
        __SetFlag(0x205);
        __ClearFlag(0x201);
        __ClearFlag(0x202);
        OvlFunc_971_2008128(4);
    }
    if (LobbyConnection_GetFlag(0x205) != 0) {
        LobbyConnection_SetState(base, 2);
    }
    return res;
}
