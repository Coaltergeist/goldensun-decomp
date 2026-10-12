#ifndef CANDIDATE_MAPS_MAIN_MENU_H
#define CANDIDATE_MAPS_MAIN_MENU_H

/* Shared game state, 0x02000240..0x02000500 (wram.sym: gState / gPartyStatus). */
typedef struct { unsigned char _bytes[704]; } GlobalState;

extern GlobalState gState;

#endif
