/*
 * Verified 100% byte-for-byte + reloc match for OvlFunc_903_200843c itself!
 * However, compiling OvlFunc_903_200843c in src/maps/goma_cave_entry.c shifts GCC 2.96's
 * persistent `rtl_obstack` pointer alignment in `18.greg` (`reload` `cselib` pointer hash),
 * flipping 1 instruction at .text+0xb5c (`adds r0, r5, #0`) in the subsequent function
 * `OvlFunc_903_2008dd8`. Restored INCLUDE_ASM in src/maps/goma_cave_entry.c so the TU
 * preserves EXACT_OBJECT_MATCH for coordinator batch enablement.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_903_200843c(void)
{
    short *ptr = *(short **)iwram_3001ebc;
    int diff;

    API_CutsceneStart();
    API_MapActor_SetAnim(0, 8);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(0, 0x3333, 0x1999);
    API_MapActor_SetSpeed(9, 0x3333, 0x1999);
    API_PlaySound(0xb9);
    ptr += 0xb6;
    diff = (11 - *ptr * 2) << 4;
    API_MapActor_TravelBy(0, diff, 0);
    API_MapActor_TravelBy(9, diff, 0);
    API_MapActor_WaitMovement(0);
    API_MapActor_WaitMovement(9);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 1);
    OvlFunc_903_2008348();
    API_MapActor_PlayPendingSound();
    API_CutsceneEnd();
}
