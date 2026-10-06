extern void *CreateParticleActor(unsigned short spriteID, int x, int y, int z);

extern void _Actor_SetAnim(void *actor, int anim);

extern void Func_8097384(void);

extern void WaitFrames(unsigned int nframes);

extern void _PlaySound(unsigned int id);

extern void Func_80974d8(int *vec);

extern unsigned int Random(void);

extern void vec3_translate(int mag, unsigned int angle, int *vec);

extern void Func_809ba90(void *arg0, int arg1, int arg2, int arg3);

extern void Func_809aa98(void);

extern void Func_809ba7c(unsigned int arg0, unsigned int arg1);

extern void _Sprite_SetColorswap(void *sprite, int color);

extern void _DeleteActor(void *actor);

extern void Func_809748c(void);

void Field_Halt(void)
{
    unsigned char *obj;
    unsigned char *target;
    unsigned char *particle;
    unsigned char *p;
    int targPos[3];
    int startPos[3];
    int buf[3];
    int n;
    int i;
    int scale;

    obj = *iwram_3001f30;
    target = *(unsigned char **)(obj + 0x10);
    *(int *)(obj + 8) = *(int *)(target + 0xc);

    particle = CreateParticleActor(0xfa, 0, 0, 0);
    n = 0;
    _Actor_SetAnim(particle, 0);
    if (particle != 0) {
        Func_8097384();

        targPos[0] = *(int *)(target + 8);
        targPos[1] = *(int *)(target + 0xc) + (0x80 << 13);
        targPos[2] = *(int *)(target + 0x10);

        startPos[0] = *(int *)(obj + 4);
        startPos[1] = *(int *)(obj + 8) + (0x80 << 12);
        startPos[2] = *(int *)(obj + 0xc);

        for (; n < 11; n++) {
            *(int *)(particle + 8) = targPos[0] + n * (startPos[0] - targPos[0]) / 10;
            *(int *)(particle + 0xc) = targPos[1] + n * (startPos[1] - targPos[1]) / 10;
            *(int *)(particle + 0x10) = targPos[2] + n * (startPos[2] - targPos[2]) / 10;
            scale = n * (0xc0 << 8) / 10 + (0x80 << 7);
            *(int *)(particle + 0x18) = scale;
            *(int *)(particle + 0x1c) = scale;
            WaitFrames(1);
        }

        WaitFrames(5);
        _Actor_SetAnim(particle, 1);
        _PlaySound(0x6c);
        WaitFrames(0xa);
        _PlaySound(0x6c);
        WaitFrames(0xa);
        _PlaySound(0x6c);
        WaitFrames(0xa);
        _PlaySound(0x6d);

        p = obj + 0x58;
        for (i = 15; i >= 0; i--) {
            buf[0] = *(int *)(particle + 8);
            buf[1] = *(int *)(particle + 0xc) + (0x80 << 12);
            buf[2] = *(int *)(particle + 0x10);
            Func_80974d8(buf);
            vec3_translate(0x80 << 11, (unsigned int)Random(), buf);
            Func_809ba90(p, 0x11d, buf[0], buf[2]);
            Func_809ba7c((unsigned int)p, (unsigned int)Func_809aa98);
            _Sprite_SetColorswap(*(void **)p, 7);
            p += 0x48;
        }

        buf[0] = *(int *)(particle + 8);
        buf[1] = *(int *)(particle + 0xc) + (0x80 << 12);
        buf[2] = *(int *)(particle + 0x10);
        WaitFrames(8);
        _DeleteActor(particle);
        WaitFrames(4);
        WaitFrames(0x1e);
        Func_809748c();
    }
}
