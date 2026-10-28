extern struct Actor *CS964R_Actor(int) __asm__("__MapActor_GetActor");
extern struct Actor *CS964R_Camera(void) __asm__("__Func_8093554");
extern void OvlFunc_964_2009038(struct Actor *);
extern void OvlFunc_964_2009abc(unsigned int);
static inline void CS964R_Reset(int id, int zero)
{
    CS964R_Actor(id)->floorPos = zero;
    CS964R_Actor(id)->motion.y = zero;
    CS964R_Actor(id)->prevPos.y = (int)0x80000000;
    CS964R_Actor(id)->__unk55 = zero;
    CS964R_Actor(id)->waveCounter = zero;
}
static inline void CS964R_StoreCounter(unsigned short *p, int value) { *p = value; }
void OvlFunc_964_2009d04(void)
{
    struct Actor temporary;
    struct Actor *actor, *saved;
    unsigned short *counter;
    int index, actorId, flag, selected, earlier;
    API_CutsceneStart();
    index = 0;
    saved = &temporary;
    actorId = 12;
    do {
        if (CS964R_Actor(actorId)->sprite->oam.priority == 3 && !API_GetFlag(0x200 + index)) {
            OvlFunc_964_2009038(CS964R_Actor(actorId));
            API_MapActor_SetPos(actorId, 0, 0);
            API_SetFlag(0x200 + index);
            break;
        }
        if ((CS964R_Actor(actorId)->pos.z >> 20) == 9) {
            flag = API_GetFlag(0x200 + index);
            if (!flag) {
                CS964R_Reset(actorId, flag);
                selected = index;
                for (earlier = 0; earlier < index; earlier++) {
                    if (!API_GetFlag(0x200 + earlier)) {
                        saved->pos.x = CS964R_Actor(actorId)->pos.x;
                        saved->pos.y = CS964R_Actor(actorId)->pos.y;
                        saved->pos.z = CS964R_Actor(actorId)->pos.z;
                        actor = CS964R_Actor(actorId);
                        actor->pos.x = CS964R_Actor(earlier + 12)->pos.x;
                        actor = CS964R_Actor(actorId);
                        actor->pos.y = CS964R_Actor(earlier + 12)->pos.y;
                        actor = CS964R_Actor(actorId);
                        actor->pos.z = CS964R_Actor(earlier + 12)->pos.z;
                        CS964R_Actor(earlier + 12)->pos.x = saved->pos.x;
                        CS964R_Actor(earlier + 12)->pos.y = saved->pos.y;
                        CS964R_Actor(earlier + 12)->pos.z = saved->pos.z;
                        selected = earlier;
                        break;
                    }
                }
                CS964R_Reset(selected + 12, 0);
                API_Func_80933d4(0x30000, 0x6000);
                CS964R_Camera()->__unk55 = 0;
                API_Func_80933f8(0xa80000, 0x80000, 0xb80000, 1);
                API_Func_8093530();
                OvlFunc_964_2009c2c(selected + 12);
                if ((CS964R_Actor(selected + 12)->pos.x >> 20) == 8) {
                    counter = (unsigned short *)&CS964R_Actor(10)->waveCounter;
                    *counter += 1;
                    counter = (unsigned short *)&CS964R_Actor(11)->waveCounter;
                    CS964R_StoreCounter(counter, (int)*counter - 1);
                } else {
                    counter = (unsigned short *)&CS964R_Actor(10)->waveCounter;
                    CS964R_StoreCounter(counter, (int)*counter - 1);
                    counter = (unsigned short *)&CS964R_Actor(11)->waveCounter;
                    *counter += 1;
                }
                CS964R_Actor(selected + 12)->update = (actorfun_t *)OvlFunc_964_2009a98;
                OvlFunc_964_2009abc(40);
                CS964R_Actor(selected + 12)->flags |= 2;
                API_SetFlag(0x200 + selected);
                break;
            }
        }
        index++;
        actorId++;
    } while (index <= 2);
    API_CutsceneEnd();
}
