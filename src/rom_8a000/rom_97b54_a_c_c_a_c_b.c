/* Cluster Func_8099040..Func_8099040 extracted from goldensun/asm/rom_8a000/rom_97b54_a_c_c_a_c.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97b54_a_c_c_a_c_a.o and asm/rom_8a000/rom_97b54_a_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];

void Func_8099040(void *arg0)
{
  if (arg0 != ((void *) 0))
  {
    char *p = arg0;
    int v1c;
    int v18 = (*((int *) (p + 0x18))) - 0x1000;
    *((int *) (p + 0x1c)) = (*((int *) (p + 0x1c))) - 0x1000;
    *((int *) (p + 0x18)) = v18;
    if (v18 <= 0x1000)
    {
      _Actor_SetScript(arg0, Data_9f0b0);
    }
  }
}
