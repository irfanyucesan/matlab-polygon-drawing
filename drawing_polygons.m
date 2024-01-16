% number of sides
n = 3;
% length of sides
length = 1;
% number of rotations
numRotations = 20;
% origin-centered n-sided polygon
p = nsidedpoly(n, 'Center', [0 ,0], 'SideLength', length);
% gravity center of poly
[X,Y] = centroid(p);

% for loop to print out the rotated polygons
for i = 1:numRotations
    p_rotated=rotate(p,i*(360/numRotations),[X,Y]);
    plot(p_rotated);
    hold on
    pause(0.1);
end