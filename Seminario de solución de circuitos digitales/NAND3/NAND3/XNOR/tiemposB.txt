.meas dc ViLB find v(b) when v(x)=2.97
.meas dc ViHB find v(b) when v(x)=0.33
.meas dc nmLB find v(b) when v(x)=ViLA
.meas dc nmHB find v(b) when v(x)=3.3-ViHA
.meas dc riB param=ViHA-ViLA

.meas tran bwB param=1/fallB
.meas tran risB trig v(x) val=0.33 rise=1 targ v(x) val=2.97 rise=1
.meas tran fallB trig v(x) val=2.97 fall=1 targ v(x) val=0.33 fall=1
.meas tran tprB trig v(b) val=1.65 rise=1 targ v(x) val=1.65 fall=1
.meas tran tpfB trig v(b) val=1.65 fall=1 targ v(x) val=1.65 rise=1
