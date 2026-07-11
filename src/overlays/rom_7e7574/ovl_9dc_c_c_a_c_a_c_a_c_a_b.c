/* Cluster OvlFunc_959_200cba4..OvlFunc_959_200cba4 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_c_a_c_a_c_a_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_c_a_c_a_c_a_c_a_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_c_a_c_a_c_a_c_a_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
#include "message.h"
extern void __Func_80925cc(int, int);
extern void __ActorMessage(int, int);

void OvlFunc_959_200cba4(void) {
    __Func_80925cc(0xd, 2);
    __MessageID(MSG_2440);
    __ActorMessage(0xd, 0);
}
