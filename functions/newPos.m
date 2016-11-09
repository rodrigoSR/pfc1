function [row,col] = newPos(dist)
[row,col] = find(dist==(min(dist(dist>-1))));
row = row-1;
col = col-1;