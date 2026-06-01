/* Single-fn install (post-3.5c). Matched candidate from
 * tools/runs/OvlFunc_314__asm__overlays__rom_7b0400__ovl_314-sieve.c.
 *
 * The .L3938 reference crosses TU into ovl_314_c.s, which already has
 * .L3938 .global'd from the earlier OvlFunc_925_200831c cluster ship.
 *
 * unsigned-int return picks it up. gcc emits prologue-free `ldr r0,
 * =.L3938 ; bx lr`, matching the original 4 bytes.
 */
extern unsigned char gOvl_0200b938[];

unsigned int OvlFunc_925_2008314(void) {
    return (unsigned int)gOvl_0200b938;
}
