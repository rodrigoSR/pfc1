%This function insert defined number of peoples in a room

function [peoples, room] = addPeoples(n,room)

%create matrix will record all position of all peoples
peoples = ones(n,2);

%get size of room
[rows, cols] = size(room);

%room of peoples
roomPeoples = zeros(rows,cols);

for i = 1:n
    prox = false;
    while ~prox
        x = randi([2,rows],1,1);
        y = randi([2,cols],1,1);
        if room(x,y) > -1
            if ~(sum(ismember(peoples,[x y],'rows')))
               peoples(i,:) = [x y];
               room(x,y) = -3;
               prox = true;
            end
        end
    end
end