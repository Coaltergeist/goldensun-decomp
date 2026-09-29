extern unsigned char Lb4100[] asm(".Lb4100");

void Func_80b06c0(int count, int arg1, int arg2)
{
  int shifted;
  int val;
  shifted = arg1 << 4;
  val = shifted + 1;
  if (count <= 0)
  {
    return;
  }
  {
    unsigned short *p = (unsigned short *) Lb4100;
    do
    {
      int addr = arg2 + (*p);
      p++;
      count--;
      *((unsigned char *) (addr + 4)) = val;
      *((unsigned char *) (addr + 8)) = val;
      *((unsigned char *) (addr + 0xc)) = val;
      shifted = addr;
      *((unsigned char *) (shifted + 0x10)) = val;
      *((unsigned char *) (shifted + 0x14)) = val;
      *((unsigned char *) (shifted + 0x18)) = val;
    }
    while (count != 0);
  }
}
