extern unsigned char iwram_3001e40[];

void OvlFunc_926_200c1c4(void)
{
  if ((*(unsigned int *) iwram_3001e40 >> 1) & 1) {
    __Func_80929d8(0xa);
  } else {
    __Func_80929d8(9);
  }
}
