%This function create a simple room with an exit dor and obj

function [row,col] = runTeste(rows,cols,npeoples)
room = createRoom(rows,cols);
room = addExitDoor(rows/2,1,2,0,room,0.4);
obj = [1 1 1; 0 1 1; 0 1 0];
room = addObj(10,8,obj,room);
[peoples, roomPeoples] = addPeoples(npeoples,room);
