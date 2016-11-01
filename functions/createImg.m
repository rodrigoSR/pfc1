function img = createImg(room)

[rows,cols] = size(room);

img = ones(rows,cols,3);

wall = [0 0 0];
door = [1.0 0 0];
objs = [0.5 0.5 0.5];
peop = [0 0.5 0];

for i = 1:rows
    for j = 1:cols
        if room(i,j) == -1
            img(i,j,:) = wall;
        end
        if room(i,j) == -2
            img(i,j,:) = objs;
        end
        if room(i,j) == -3
            img(i,j,:) = peop;
        end
        if room(i,j) == -0
            img(i,j,:) = door;
        end
    end
end
        