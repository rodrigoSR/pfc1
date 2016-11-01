%This function add an exit door to a room and calculate a distance off all
%cols to the door
%
%function mat = addExitDoor(startR,startY,sizeDoor, orientation)
%
%Parameters:
%   startR - row where the door will start
%   startC - col where the door will start
%   sizeDoor - sizeDoor of the door
%   orientation - orientation of door. 0 = vertical or 1 = horizontal
%   room - the room to distance calculate
%   cel_sizeDoor - sizeDoor of each cel in room
%
%   r = addExitDoor(52,1,2,0,createRoom(100,36),0.4)

function res = addExitDoor(start_r,start_c,sizeDoor,orientation,room,cel_sizeDoor)
%get number of rows and cols of room
[rows,cols] = size(room);

%start calculate
for d = 0:sizeDoor-1
    increment_r = 0;
    increment_c = 0;
    if orientation < 1
        increment_r = d;
    else
        increment_c =d;
    end
    room(start_r+increment_r,start_c+increment_c) = 0;
    
    for i = 2:rows-1
        for j = 2: cols-1
            %distance betwen the door and the roon current position
            dist = ((i-(start_r+increment_r))*cel_sizeDoor)^2+((j-(start_c+increment_c))*cel_sizeDoor)^2;
            if room(i,j) > dist | room(i,j) == -1
                room(i,j) = dist;
            end
        end
    end
end
res = room;