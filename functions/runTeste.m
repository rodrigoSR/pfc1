%This function create a simple room with an exit dor and obj

function [room,obj] = runTeste()
room = createRoom(30,20);
room = addExitDoor(12,1,2,0,room,0.4);
obj = [1 1 1; 0 1 1; 0 1 0];
room = addObj(10,8,obj,room);
