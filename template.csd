//trans rights
//Copyright © 2022 Amy Universe
//This work is free. You can redistribute it and/or modify it under the
//terms of the Do What The Fuck You Want To Public License, Version 2,
//as published by Sam Hocevar. See the COPYING file for more details.
<CsoundSynthesizer>
<CsOptions>
-odac -Lstdin -m227 ;-m231
;-n -Lstdin -m231
</CsOptions>
<CsInstruments>
sr      =   44100
ksmps   =   42
;ksmps   =   441
nchnls  =   2
;nchnls  =   1
0dbfs   =   1

#define TEMPO #128#
#define FRQ   #($TEMPO/60)#
#define BEAT  #(60/$TEMPO)# ;1/$FRQ

#include "taphath.orc"
#include "basemath.orc"
#include "tbasemath.orc"
#include "taphy.orc"
#include "basma.orc"
#include "tbasma.orc"

#include "mycorrhiza.orc"
#include "perfuma.orc"
#include "rainstorm.orc"


#include "oscillators.orc"
#include "utils.orc"
#include "mixer.orc"

gay, gal, gar init 0

instr Out
aL, aR sbus_out
kSM = 1
aL limit aL, -kSM, kSM
aR limit aR, -kSM, kSM
outs aL, aR
sbus_clear_all
endin
instr Out
kSM = 1
gal limit gal+gay, -kSM, kSM
gar limit gar+gay, -kSM, kSM
outs gal, gar
clear gay, gal, gar
endin
</CsInstruments>
<CsScore>
i"Out"  0 10
e
</CsScore>
</CsoundSynthesizer>

