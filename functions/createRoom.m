%THis function create a new room with number of rows and cols received by
%parameter and the value is equal rows*cols+1
%
%Example:
%  m = createRoom(5,4)
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
function res = createRoom(rows,cols)

res = (rows*cols+1)*ones(rows,cols);