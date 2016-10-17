%This function add an exit door to a room and calculate a distance off all
%cols to the door
%
%function mat = addExitDoor(startR,startY,size, orientation)
%
%Parameters:
%   startR - row where the door will start
%   startC - col where the door will start
%   size - size of the door
%   orientation - orientation of door. 0 = vertical or 1 = horizontal
%
%   Exemple
%   m = createRoom(5,4)

fucntion mat = addExitDoor(start_r, start_c,size,orientation, room)

%get size of room
[rows,cols] = size(room)

%start calculate
for d = 0:size-1
    for i = 2:rows-1
        for j = 2: cols-1
            value = -1
            if orientation == 0
                if i == start_r+d
                    value = abs(start_c-j)+1
                else
                    value = (abs(start_r-i)*1)+(abs(start_c-j)*0.5)+1
                end
            end
            if value < room(i,j)
                room(i,j) = value
            end
        end
    end
end
mat = room