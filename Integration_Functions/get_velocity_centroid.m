function [centroid, velocity] = get_velocity_centroid(file_name)
%GET_VELOCITY_CENTROID Summary of this function goes here
%   Detailed explanation goes here

data = vpa(readmatrix(file_name));
velocity = data(:, 1);
centroid = data(:, 2);

end

