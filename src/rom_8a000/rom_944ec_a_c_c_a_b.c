/* Cluster Func_8096b28..Func_8096b28 extracted from goldensun/asm/rom_8a000/rom_944ec_a_c_c_a.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_c_c_a_a.o and asm/rom_8a000/rom_944ec_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void CutsceneStart(void);
extern void MessageID(unsigned int stringID);
extern void ActorMessage(unsigned int actor, unsigned int arg1);
extern void CutsceneEnd(void);
extern int _call_via_r3(void);
extern int _GetFlag(unsigned int flag);
extern void _Func_801776c(unsigned int, unsigned int);

int Func_8096b28(int *arg0, int arg1, int arg2)
{
    int (*f)(int, int);

    if (arg0 != 0) {
        if (arg0[2] != 0) {
            if (arg0[2] < 0x10000) {
                CutsceneStart();
                MessageID(arg0[2]);
                ActorMessage(arg2, 0);
                CutsceneEnd();
            } else {
                f = (int (*)(int, int)) arg0[2];
                f(arg1, arg2);
            }
        }
        if (_GetFlag(0x142)) {
            CutsceneStart();
            _Func_801776c(0x927, 1);
            CutsceneEnd();
        }
    }
    return 0;
}
