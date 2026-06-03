/* Cluster Func_8092128..Func_80921c4 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c.s.
 *
 * Total .text for this TU = 224 bytes (= 0xe0).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 * Reconciled conflicting decls of Func_808ba1c: kept `extern int Func_808ba1c(int actorID);`, dropped `extern int Func_808ba1c(unsigned int actorID);`.
 * Reconciled conflicting decls of _Func_800d14c: kept `extern void _Func_800d14c(int a, int b, int c, int d);`, dropped `extern void _Func_800d14c(int actor, int a, int b, int c);`.
 * Reconciled conflicting decls of _Func_800ca6c: kept `extern void _Func_800ca6c(int a);`, dropped `extern void _Func_800ca6c(int actor);`.
 * Reconciled conflicting decls of _Func_800c300: kept `extern void _Func_800c300(int a, int b);`, dropped `extern void _Func_800c300(int actor, int arg);`.
 */
extern int Func_808ba1c(int actorID);
extern void _Func_800c4ac(void);
extern void _Func_800d14c(int a, int b, int c, int d);
extern void _Func_800ca6c(int a);
extern void _Func_800c300(int a, int b);

void Func_8092128(unsigned int param_1, int param_2, int param_3) {
    unsigned char *actor;

    actor = (unsigned char *)Func_808ba1c(param_1);
    if (actor != (unsigned char *)0) {
        *(unsigned char *)(actor + 0x5b) = 0;
        _Func_800c4ac();
        _Func_800d14c((int)actor, param_2 << 16, *(int *)(actor + 0xc), param_3 << 16);
    }
}
void Func_8092158(int actorID, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)Func_808ba1c(actorID);
    if (actor != (unsigned char *)0) {
        *(unsigned char *)(actor + 0x5b) = 0;
        _Func_800c4ac();
        _Func_800d14c((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
        _Func_800ca6c((int)actor);
    }
}
void Func_809218c(int actorID, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)Func_808ba1c(actorID);
    if (actor != (unsigned char *)0) {
        actor[0x5b] = 0;
        _Func_800c4ac();
        _Func_800c300((int)actor, 2);
        _Func_800d14c((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
    }
}
void Func_80921c4(int actorID, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)Func_808ba1c(actorID);
    if (actor != (unsigned char *)0) {
        *(unsigned char *)(actor + 0x5b) = 0;
        _Func_800c4ac();
        _Func_800c300((int)actor, 2);
        _Func_800d14c((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
        _Func_800ca6c((int)actor);
        _Func_800c300((int)actor, 1);
    }
}
