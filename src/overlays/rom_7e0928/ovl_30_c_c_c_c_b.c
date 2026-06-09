/* Cluster OvlFunc_956_200a2c4..OvlFunc_956_200a2f4 extracted from goldensun/asm/overlays/rom_7e0928/ovl_30_c_c_c_c.s.
 *
 * Total .text for this TU = 108 bytes (= 0x6c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e0928/ovl_30_c_c_c_c_a.o and asm/overlays/rom_7e0928/ovl_30_c_c_c_c_c.o in
 * goldensun/overlays/rom_7e0928/overlay.ld.
 * Reconciled conflicting decls of __GetFieldActor: kept `extern int __GetFieldActor(void);`, dropped `extern unsigned int __GetFieldActor(void);`.
 * Reconciled conflicting decls of __Actor_SetAnim: kept `extern void __Actor_SetAnim(int a, int b);`, dropped `extern void __Actor_SetAnim(unsigned int arg0, unsigned int arg1);`.
 * Reconciled conflicting decls of __Actor_TravelTo: kept `extern void __Actor_TravelTo(int a, int b, int c, int d);`, dropped `extern void __Actor_TravelTo(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);`.
 */
extern int __GetFieldActor(void);
extern void __Actor_Stop(void);
extern void __Actor_SetAnim(int a, int b);
extern void __Actor_TravelTo(int a, int b, int c, int d);
extern void __Actor_WaitMovement(unsigned int arg0);

void OvlFunc_956_200a2c4(int arg0, int arg1, int arg2) {
    int r5;
    r5 = __GetFieldActor();
    if (r5 != 0) {
        __Actor_Stop();
        __Actor_SetAnim(r5, 5);
        __Actor_TravelTo(r5, arg1 << 16, *(int *)((char *)r5 + 0xc), arg2 << 16);
    }
}
void OvlFunc_956_200a2f4(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int r5;

    r5 = __GetFieldActor();
    if (r5 != 0) {
        __Actor_Stop();
        __Actor_SetAnim(r5, 5);
        __Actor_TravelTo(r5, arg1 << 16, *(unsigned int *)((char *)r5 + 0xc), arg2 << 16);
        __Actor_WaitMovement(r5);
        __Actor_SetAnim(r5, 1);
    }
}
