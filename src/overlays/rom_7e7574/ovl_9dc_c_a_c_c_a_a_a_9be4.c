typedef unsigned int u32;

extern const u32 mode_value asm(".L5fa4");
extern void __Func_809280c(int actor, int target, int unused);
extern void OvlFunc_959_2009c4c(int actor);
extern void OvlFunc_959_2009ca4(int actor);
extern void OvlFunc_959_2009cf0(int actor);
extern void OvlFunc_959_2009d60(int actor);

void OvlFunc_959_2009be4(int actor)
{
    int mode;

    __Func_809280c(actor, 0, 0);
    __Func_809280c(0, actor, 0);

    mode = mode_value & 3;
    switch (mode) {
    case 0:
        OvlFunc_959_2009c4c(actor);
        break;
    case 1:
        OvlFunc_959_2009ca4(actor);
        break;
    case 2:
        OvlFunc_959_2009cf0(actor);
        break;
    case 3:
        OvlFunc_959_2009d60(actor);
        break;
    default:
        OvlFunc_959_2009ca4(actor);
        break;
    }
}
