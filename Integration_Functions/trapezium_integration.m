function [integral_result] = trapezium_integration(x_values, y_values)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if (size(x_values) ~= size(y_values))
    error("Both x and y values must match in sizes. Please use other values.")
end

integral_result = 0;

for x = 1:length(x_values) - 1
    dx = x_values(x+1) - x_values(x);
    if(dx == 0)
        continue
    end
    minor_base = y_values(x);
    major_base = y_values(x+1);
    integral_result = integral_result + (dx * (minor_base + major_base)) / 2;
end

end

