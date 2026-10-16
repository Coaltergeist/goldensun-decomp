extern void __vec3_translate(int, int, int *);

void OvlFunc_932_200b5ac(struct Actor *actor)
{
    int pos[3];
    int angle;
    int x;
    int z;
    int i;

    angle = (actor->facing + 0x4000) & 0xc000;
    pos[0] = actor->pos.x;
    pos[1] = actor->pos.y;
    pos[2] = actor->pos.z;
    __vec3_translate(0xc0 << 13, angle, pos);
    x = (pos[0] + (0x80 << 12)) & 0xfff00000;
    z = (pos[2] + (0x80 << 12)) & 0xfff00000;
    angle += 0x80 << 8;
    __Actor_SetAnim(actor, 5);
    API_PlaySound(0xb8);
    for (i = 0xf; i >= 0; i--) {
        angle += 0x80 << 3;
        pos[2] = z;
        pos[0] = x;
        __vec3_translate(0xc0 << 13, angle, pos);
        actor->pos.x = pos[0];
        actor->pos.z = pos[2];
        actor->facing = angle + (0x80 << 7);
        API_WaitFrames(1);
    }
    API_PlaySound(0xe9);
}
