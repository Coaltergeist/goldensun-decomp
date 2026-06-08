/* Cluster MapActor_TravelTo..Func_80921c4 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c.s.
 *
 * Total .text for this TU = 224 bytes (= 0xe0).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 * Reconciled conflicting decls of GetFieldActor: kept `extern int GetFieldActor(int actorID);`, dropped `extern int GetFieldActor(unsigned int actorID);`.
 * Reconciled conflicting decls of _Actor_TravelTo: kept `extern void _Actor_TravelTo(int a, int b, int c, int d);`, dropped `extern void _Actor_TravelTo(int actor, int a, int b, int c);`.
 * Reconciled conflicting decls of _Actor_WaitMovement: kept `extern void _Actor_WaitMovement(int a);`, dropped `extern void _Actor_WaitMovement(int actor);`.
 * Reconciled conflicting decls of _Actor_SetAnim: kept `extern void _Actor_SetAnim(int a, int b);`, dropped `extern void _Actor_SetAnim(int actor, int arg);`.
 */
extern int GetFieldActor(int actorID);
extern void _Actor_Stop(void);
extern void _Actor_TravelTo(int a, int b, int c, int d);
extern void _Actor_WaitMovement(int a);
extern void _Actor_SetAnim(int a, int b);

void MapActor_TravelTo(unsigned int param_1, int param_2, int param_3) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(param_1);
    if (actor != (unsigned char *)0) {
        *(unsigned char *)(actor + 0x5b) = 0;
        _Actor_Stop();
        _Actor_TravelTo((int)actor, param_2 << 16, *(int *)(actor + 0xc), param_3 << 16);
    }
}
void Func_8092158(int actorID, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(actorID);
    if (actor != (unsigned char *)0) {
        *(unsigned char *)(actor + 0x5b) = 0;
        _Actor_Stop();
        _Actor_TravelTo((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
        _Actor_WaitMovement((int)actor);
    }
}
void Func_809218c(int actorID, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(actorID);
    if (actor != (unsigned char *)0) {
        actor[0x5b] = 0;
        _Actor_Stop();
        _Actor_SetAnim((int)actor, 2);
        _Actor_TravelTo((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
    }
}
void Func_80921c4(int actorID, int arg1, int arg2) {
    unsigned char *actor;

    actor = (unsigned char *)GetFieldActor(actorID);
    if (actor != (unsigned char *)0) {
        *(unsigned char *)(actor + 0x5b) = 0;
        _Actor_Stop();
        _Actor_SetAnim((int)actor, 2);
        _Actor_TravelTo((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
        _Actor_WaitMovement((int)actor);
        _Actor_SetAnim((int)actor, 1);
    }
}
