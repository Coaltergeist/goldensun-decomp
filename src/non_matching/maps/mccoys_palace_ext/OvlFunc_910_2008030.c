extern int __atan2(int, int);

int OvlFunc_910_2008030(int *actor)
{
  int *target;
  unsigned char *flags;
  unsigned short orig;
  int delta;

  target = *(int **)(((char *) actor) + 0x68);
  if (target != 0)
  {
    flags = (unsigned char *)(((char *) actor) + 0x5a);
    *flags = *flags & 0xfe;
    delta = __atan2(*((int *)(((char *) target) + 0x10)) - *((int *)(((char *) actor) + 0x10)),
                     *((int *)(((char *) target) + 8)) - *((int *)(((char *) actor) + 8)));
    orig = *((unsigned short *)(((char *) actor) + 6));
    delta = (unsigned short)delta;
    delta = delta - orig;
    delta = (short)delta;
    if (delta != 0)
    {
      if (delta > 0x1000)
      {
        delta = 0x1000;
      }
      if (delta < -0x1000)
      {
        delta = -0x1000;
      }
      *((short *)(((char *) actor) + 6)) = delta + orig;
    }
  }
  return 1;
}
