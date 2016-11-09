function result = evacuation(room,roomPeoples,peoples)
[rows,cols] = size(room);
npeoples = size(peoples);
result = [];
finished = false;
cont = 0;

while ~finished
    cont = cont+1;
    prox = false;
    newPositions = [];
    currentPositions = peoples;
    currentRoom = room;
    %setting the position of peoples on dist matrix
    for i = 1:npeoples
        currentRoom(peoples(i)) = -3;
    end
    
    while ~prox
        [s,c] = size(currentPeoples);
        if s == 0
            prox = true;
        end
        for i = 1:s
            [x,y] = currentPositions(i);
            newPositions(i,:) newPos(currentRoom(x-1:x+1,y-1:y+1);
        end
        prox = true;
        finished = true;
    end
end
        
    
    
        