extern int __StartTask(void *task, int priority);
extern void OvlFunc_956_200804c(void);

void OvlFunc_956_20081b4(void)
{
    __StartTask(OvlFunc_956_200804c, 200 << 4);
}
