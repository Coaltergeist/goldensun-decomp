extern unsigned int iwram_3001e40;

void OvlFunc_882_200bce4(void)
{
    struct Actor *a19;
    struct Actor *a27;
    struct Sprite *sprite;

    a19 = (struct Actor *)__MapActor_GetActor(0x13);
    a27 = (struct Actor *)__MapActor_GetActor(0x1b);
    sprite = a27->sprite;

    if (a19->waveCounter != 0) {
        if (a19->waveCounter == 60) {
            API_Func_8012330(0xc0 << 10, 0xc0 << 10, 0x80 << 9);
        }
        if (a19->waveCounter == 40) {
            API_Func_8012330(0x80 << 11, 0x80 << 11, 0x80 << 9);
        }
        if (a19->waveCounter == 30) {
            API_Func_8012330(0x80 << 10, 0x80 << 10, 0x80 << 9);
        }
        if (a19->waveCounter == 20) {
            API_Func_8012330(-1, -1, 0xe666);
        }
        a19->waveCounter--;
    }

    a27->pos.x = a19->pos.x;
    a27->prevPos.x = a19->pos.x;
    a27->pos.z = a19->pos.z;
    sprite->offsetY = 10;

    if (iwram_3001e40 & 1) {
        switch ((s16)a19->__unk66) {
        case 1:
        case 5:
            a27->scale.x += 0xa3d;
            a27->scale.y += 0xa3d;
            break;
        case 4:
            a27->scale.x += 0x51e;
            a27->scale.y += 0x51e;
            break;
        case 2:
        case 3:
        case 6:
        case 7:
        case 8:
        case 9:
            a27->scale.x += -0x7ae;
            a27->scale.y += -0x7ae;
            break;
        }
        sprite->scale = a27->scale.x;
    } else {
        sprite->scale = 0;
    }
}
