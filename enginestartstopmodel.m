function [enginekill, enginecrank] = fcn(engineblendfactor, drivingmode, Engine_State, crankswitch)
if drivingmode==1
    enginekill=1;
elseif drivingmode==2
    if engineblendfactor>0.01
        enginekill=0;
    else
        enginekill=1;
    end
elseif drivingmode==3
    enginekill=0;
end

if drivingmode==1
    enginecrank=0;
elseif drivingmode==2
    if engineblendfactor>0.01 && Engine_State==1
        automaticcrank = 1;
    else
        automaticcrank=0;
    end
elseif drivingmode==3 && crankswitch==1
    manualcrank=1;
end
enginecrank=automaticcrank || manualcrank; 
    
    
    
    
    