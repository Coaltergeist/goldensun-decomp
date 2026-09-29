void OvlFunc_946_2008ab0(unsigned int arg0)
{
  unsigned int r3;
  unsigned int r1;
  unsigned int r2;
  r3 = *((unsigned int *) (arg0 + 8));
  r2 = *((unsigned int *) (arg0 + 0x44));
  r3 += r2;
  *((unsigned int *) (arg0 + 8)) = r3;
  r2 = *((unsigned int *) (arg0 + 0x48));
  r3 = *((unsigned int *) (arg0 + 0xc));
  r3 += r2;
  *((unsigned int *) (arg0 + 0xc)) = r3;
  r2 = *((unsigned int *) (arg0 + 0x4c));
  r3 = *((unsigned int *) (arg0 + 0x10));
  r3 += r2;
  *((unsigned int *) (arg0 + 0x10)) = r3;
  r2 = *((unsigned int *) (arg0 + 0x30));
  r3 = *((unsigned int *) (arg0 + 0x18));
  r3 += r2;
  *((unsigned int *) (arg0 + 0x18)) = r3;
  r2 = *((unsigned int *) (arg0 + 0x34));
  r3 = *((unsigned int *) (arg0 + 0x1c));
  ;
  r3 += r2;
  *((unsigned int *) (arg0 + 0x1c)) = r3;
  r1 = *((unsigned int *) (arg0 + 0x50));
  arg0 += 0x64;
  r3 = *((unsigned short *) (r1 + 0x1e));
  r2 = *((unsigned short *) arg0);
  r3 += r2;
  *((unsigned short *) (r1 + 0x1e)) = r3;
}
