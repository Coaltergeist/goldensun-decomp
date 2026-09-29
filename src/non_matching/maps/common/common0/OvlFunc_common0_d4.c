void OvlFunc_common0_d4(unsigned int *arg0)
{
  unsigned int r3;
  unsigned int r2;
  unsigned int *new_var;
  unsigned int r1;
  r3 = *((unsigned int *) (((unsigned char *) arg0) + 8));
  r2 = *((unsigned int *) (((unsigned char *) arg0) + 0x44));
  r3 += r2;
  *((unsigned int *) (((unsigned char *) arg0) + 8)) = r3;
  r2 = *((unsigned int *) (((unsigned char *) arg0) + 0x48));
  r3 = *((unsigned int *) (((unsigned char *) arg0) + 0xc));
  r3 += r2;
  new_var = &(*((unsigned int *) (((unsigned char *) arg0) + 0x4c)));
  *((unsigned int *) (((unsigned char *) arg0) + 0xc)) = r3;
  r2 = *new_var;
  r3 = *((unsigned int *) (((unsigned char *) arg0) + 0x10));
  r3 += r2;
  *((unsigned int *) (((unsigned char *) arg0) + 0x10)) = r3;
  r2 = *((unsigned int *) (((unsigned char *) arg0) + 0x30));
  r3 = *((unsigned int *) (((unsigned char *) arg0) + 0x18));
  r3 += r2;
  *((unsigned int *) (((unsigned char *) arg0) + 0x18)) = r3;
  r2 = *((unsigned int *) (((unsigned char *) arg0) + 0x34));
  r3 = *((unsigned int *) (((unsigned char *) arg0) + 0x1c));
  r3 += r2;
  *((unsigned int *) (((unsigned char *) arg0) + 0x1c)) = r3;
  r1 = *((unsigned int *) (((unsigned char *) arg0) + 0x50));
  r3 = *((unsigned short *) (((unsigned char *) r1) + 0x1e));
  r2 = *((unsigned short *) (((unsigned char *) arg0) + 0x64));
  r3 += r2;
  *((unsigned short *) (((unsigned char *) r1) + 0x1e)) = r3;
}
