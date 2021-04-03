function [integral_result] = simpson_integration(x_values, y_values)
%SIMPSON_INTEGRATION Summary of this function goes here
%   Detailed explanation goes here

if (size(x_values) ~= size(y_values))
    error("Both x and y values must match in sizes. Please use other values.")
end

integral_result = 0;

for x = 2:2:length(x_values) - 1
    dx = x_values(x+1) - x_values(x-1);
    if(dx == 0)
        continue
    end
    integral_result = integral_result + (dx * (y_values(x-1) + 4*y_values(x) ...
        + y_values(x+1))) / 6;
end
end

