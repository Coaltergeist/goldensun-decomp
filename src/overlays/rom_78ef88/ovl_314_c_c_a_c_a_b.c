/* Two matching suffix functions extracted from ovl_314_c_c_a_c_a.s.
 * Together they occupy 216 bytes (0xd8), immediately after the retained
 * ovl_314_c_c_a_c_a_a.s prefix.
 */
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __Func_8092848(int, int, int);
extern void __CutsceneWait(int);
extern void __CutsceneEnd(void);

void OvlFunc_896_200a674(void) {
    __CutsceneStart();
    if (__GetFlag(0x83e)) {
        __MessageID(0x10cb);
        __ActorMessage(9, 0);
    } else {
        if (!__GetFlag(0x83c)) {
            __MessageID(0x1079);
        } else {
            __MessageID(0x107b);
        }
        __Func_8092848(9, 0, 0);
        __CutsceneWait(10);
        __ActorMessage(9, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_896_200a6e0(void) {
    __CutsceneStart();
    if (__GetFlag(0x83e)) {
        __MessageID(0x10c9);
        __ActorMessage(5, 0);
    } else {
        if (!__GetFlag(0x83c)) {
            __MessageID(0x107a);
        } else {
            __MessageID(0x107c);
        }
        __Func_8092848(5, 0, 0);
        __CutsceneWait(10);
        __ActorMessage(5, 0);
    }
    __CutsceneEnd();
}
