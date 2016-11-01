%THis function add an object to a previously created room
%
%Parameters
%   start_r - defines which row object will start
%   start_c - defines which col object will start
%   obj - matrix of 0s and 1s where 0 is empty and 1 is filled
%   room - room where the object will be added
%
%Example:
%  m = addObj(start_r,start_c,obj,room)
%
%   Return
%   m =
%
%        21    21    21    21
%        21    21    21    21
%        21    21    21    21
%        21    21    21    21
%        21    21    21    21
%
%
%
function res = addObj(start_r,start_c,obj,room)
[obj_r,obj_c] = size(obj);
for i = 1:obj_r
    for j = 1:obj_c
        if obj(i,j) == 1
            room(start_r+i-1,start_c+j-1) = -2;
        end
    end
end
res = room;