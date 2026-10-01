void OvlFunc_955_2008970(void)
{
    int i;

    API_WaitFrames(10);
    i = 0;
    while (L4834[0] != 0 || L4838[0] != 0x4b) {
        API_WaitFrames(1);
        i++;
        if (i >= 600)
            break;
    }
}
