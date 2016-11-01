%THis function create a new room with number of rows and cols received by
%parameter and the value is equal rows*cols+1
%
%Example:
%  [m,me] = createRoom(5,4)
%
%   Return
%   m =
%
%        -1    -1    -1    -1
%        -1    -1    -1    -1
%        -1    -1    -1    -1
%        -1    -1    -1    -1
%        -1    -1    -1    -1
%
%   me =
%
%        0    0    0    0
%        0    0    0    0
%        0    0    0    0
%        0    0    0    0
%        0    0    0    0
%
function [room,roomEmpty] = createRoom(rows,cols)

room = (-1)*ones(rows,cols);
roomEmpty = zeros(rows,cols);
end