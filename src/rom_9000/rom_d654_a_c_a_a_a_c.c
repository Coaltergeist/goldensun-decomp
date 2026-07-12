extern int Actor_FindScriptMarker(unsigned char *actor, unsigned int marker);

int ActorCmd_Loop(unsigned char *actor) {
    register unsigned char *actorReg asm("r5") = actor;
    register unsigned char *callActor asm("r0") = actor;
    register unsigned int count asm("r4");
    unsigned int *args;
    register unsigned int marker asm("r1");

    asm volatile("" : "+r"(actorReg));
    args = (unsigned int *)(*(unsigned int *)actorReg
                            + (*(short *)(actorReg + 4) << 2) + 4);
    count = *args++;
    marker = *args;
    asm volatile("" : "+r"(count));
    if (count == 0xffff)
        goto repeat;
    {
        register unsigned int counterValue asm("r2");
        register int signedCount asm("r3");

        callActor = actorReg;
        asm volatile("" : "+r"(callActor), "+r"(marker), "+r"(count));
        callActor += 0x5d;
        asm volatile("" : "+r"(callActor), "+r"(marker), "+r"(count));
        counterValue = *callActor;
        asm volatile("" : "+r"(callActor), "+r"(counterValue), "+r"(marker), "+r"(count));
        counterValue++;
        asm volatile("" : "+r"(callActor), "+r"(counterValue), "+r"(marker), "+r"(count));
        *callActor = counterValue;
        signedCount = count << 16;
        asm volatile("" : "+r"(callActor), "+r"(counterValue), "+r"(signedCount), "+r"(marker));
        counterValue <<= 24;
        asm volatile("" : "+r"(callActor), "+r"(counterValue), "+r"(signedCount), "+r"(marker));
        counterValue >>= 24;
        asm volatile("" : "+r"(callActor), "+r"(counterValue), "+r"(signedCount), "+r"(marker));
        signedCount >>= 16;
        asm volatile("" : "+r"(counterValue), "+r"(signedCount), "+r"(marker));
        if ((int)counterValue >= signedCount)
            goto done;
        callActor = actorReg;
        asm volatile("" : "+r"(callActor), "+r"(marker));
    }
repeat:
    *(unsigned short *)(actorReg + 4) = Actor_FindScriptMarker(callActor, marker);
    goto end;
done:
    {
        register int value asm("r3") = 0;

        asm volatile("" : "+r"(callActor), "+r"(value));
        *callActor = value;
        value = *(unsigned short *)(actorReg + 4);
        asm volatile("" : "+r"(value));
        value += 3;
        asm volatile("" : "+r"(value));
        *(unsigned short *)(actorReg + 4) = value;
    }
end:
    return 1;
}
