unsigned int Func_807a2bc(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
  unsigned int r6;
  int new_var;
  unsigned int r5;
  unsigned char *r0;
  unsigned int r3;
  r6 = arg2;
  r5 = arg1;
  r0 = GetUnit(arg0);
  r3 = 0x84 << 1;
  r5 = (r5 << 2) + r3;
  new_var = 1 << r6;
  r3 = *((unsigned int *) (r0 + r5));
  r3 &= new_var;
  return ((unsigned int) ((-((int) r3)) | ((int) r3))) >> 31;
}
