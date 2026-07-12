extern int __atan2(int y, int x);

int OvlFunc_886_2008030(unsigned char *actor)
{
    register unsigned char *savedActor asm("r5") = actor;
    register unsigned char *target asm("r1") = *(unsigned char **)(savedActor + 0x68);

    if (target != 0) {
        register int angle asm("r0");
        register int otherCoordinate asm("r1");
        register int currentAngle asm("r3");
        register int limit asm("r2");

        angle = (unsigned int)savedActor;
        angle += 0x5a;
        asm volatile("" : "+r"(angle));
        limit = *(unsigned char *)angle;
        asm volatile("" : "+r"(angle), "+r"(limit));
        currentAngle = 0xfe;
        currentAngle &= limit;
        *(unsigned char *)angle = currentAngle;
        angle = *(int *)(target + 0x10);
        asm volatile("" : "+r"(angle), "+r"(target));
        currentAngle = *(int *)(savedActor + 0x10);
        asm volatile("" : "+r"(angle), "+r"(currentAngle), "+r"(target));
        otherCoordinate = *(int *)(target + 8);
        asm volatile("" : "+r"(angle), "+r"(otherCoordinate), "+r"(currentAngle));
        angle -= currentAngle;
        currentAngle = *(int *)(savedActor + 8);
        otherCoordinate -= currentAngle;
        angle = __atan2(angle, otherCoordinate);

        currentAngle = *(unsigned short *)(savedActor + 6);
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle <<= 16;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle = (unsigned int)angle >> 16;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle -= currentAngle;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle <<= 16;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        angle >>= 16;
        asm volatile("" : "+r"(angle), "+r"(currentAngle));
        if (angle != 0) {
            limit = 0x80;
            limit <<= 5;
            if (angle > limit)
                angle = limit;
            limit = -0x1000;
            if (angle < limit)
                angle = limit;
            currentAngle += angle;
            *(unsigned short *)(savedActor + 6) = currentAngle;
        }
    }
    return 1;
}

int OvlFunc_886_2008088(unsigned char *actor)
{
    register unsigned char *savedActor asm("r0") = actor;
    register short *xVelocity asm("r1");
    register unsigned int zAddress asm("r4");
    register int value asm("r2");
    register int work asm("r3");

    xVelocity = (short *)savedActor;
    xVelocity = (short *)((unsigned char *)xVelocity + 0x64);
    work = 0;
    value = *(short *)((unsigned char *)xVelocity + work);
    work = *(int *)(savedActor + 8);
    value <<= 8;
    work += value;
    *(int *)(savedActor + 8) = work;

    asm volatile("" : : : "memory");
    zAddress = 0x66;
    asm volatile("" : "+r"(zAddress));
    zAddress += (unsigned int)savedActor;
    work = 0;
    value = *(short *)(zAddress + work);
    work = *(int *)(savedActor + 0xc);
    value <<= 8;
    work += value;
    *(int *)(savedActor + 0xc) = work;

    value = 0x666;
    work = *(int *)(savedActor + 0x18);
    work += value;
    *(int *)(savedActor + 0x18) = work;
    work = *(int *)(savedActor + 0x1c);
    work += value;
    *(int *)(savedActor + 0x1c) = work;

    work = *(unsigned short *)xVelocity;
    work += 5;
    *(unsigned short *)xVelocity = work;
    work = *(unsigned short *)zAddress;
    work -= 1;
    *(unsigned short *)zAddress = work;
    return 0;
}
