void Func_80f7e34(unsigned int arg0)
{
  unsigned char *new_var3;
  unsigned char *base = *((unsigned char **) ewram_2004c00);
  unsigned int off = ((arg0 * 3) << 1) << 1;
  unsigned int nextOff = off + 4;
  unsigned int *new_var;
  unsigned int *next = *((unsigned int **) (base + nextOff));
  unsigned int **new_var2;
  if (next != 0)
  {
    unsigned int *prev = *((unsigned int **) (base + off));
    unsigned int *n2;
    unsigned int *p2;
    if (prev != 0)
    {
      new_var = prev;
      *((unsigned int *) (((char *) new_var) + 4)) = (unsigned int) next;
    }
    new_var3 = base + nextOff;
    n2 = *((unsigned int **) new_var3);
    new_var2 = (unsigned int **) (base + off);
    p2 = *new_var2;
    *((unsigned int *) n2) = (unsigned int) p2;
  }
}
