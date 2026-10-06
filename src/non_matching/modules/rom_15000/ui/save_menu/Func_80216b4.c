extern unsigned char iwram_3001800[];

extern unsigned char L37226[] asm(".L37226");

void Func_80216b4(unsigned char *p)
{
  unsigned int r3;
  unsigned int *r4;
  unsigned char new_var2;
  unsigned char *r5;
  int new_var;
  unsigned int r2;
  r4 = (unsigned int *) iwram_3001800;
  r3 = *r4;
  r5 = L37226;
  new_var2 = p[8];
  r3 = (r3 >> 2) & 7;
  new_var = 0x14;
  r2 = new_var2 + r5[r3];
  r3 = *r4;
  p[0x14] = r2;
  r3 >>= 2;
  p = *((unsigned char **) p);
  r3 &= 7;
  r2 = p[8] + r5[r3];
  p[new_var] = r2;
}
