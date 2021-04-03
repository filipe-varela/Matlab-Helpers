function [index, velocity_inf] = get_index_bl(centroid,velocity)
%GET_INDEX_BL Summary of this function goes here
%   Detailed explanation goes here

velocity_inf = velocity(end);
velocity_delta = velocity_inf * .99
for i = 1:length(centroid)
    if (velocity_delta <= velocity(i))
        index = i;
        velocity(i)
        centroid(i)
        break
    end
end
end

