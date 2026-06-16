/* Cluster Func_809a6b8..Func_809a6b8 extracted from goldensun/asm/rom_8a000/rom_9a44c_a.s.
 *
 * Total .text for this TU = 128 bytes (= 0x80).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9a44c_a_a.o and asm/rom_8a000/rom_9a44c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_809a65c(void);
extern int cos(int);
extern int sin(int);
extern void Func_809a484(int, int, int, int, int, int, int, int *);

void Func_809a6b8(unsigned int arg0)
{
  int s[10];
  int a[3];
  unsigned int r7;
  int theta;
  int *p;
  s[1] = 0;
  s[9] = (int) Func_809a65c;
  s[2] = 0xcccc;
  s[3] = 0xcccc;
  r7 = 0;
  do
  {
    theta = r7 << 12;
    a[0] = (cos(theta) * 3) / 2;
    a[1] = 0;
    a[2] = sin(theta);
    p = (int *) arg0;
    Func_809a484(p[2], p[3], p[4], a[0], a[1], a[2], 0x1090001, s);
    r7++;
  }
  while (r7 <= 0x10);
}
