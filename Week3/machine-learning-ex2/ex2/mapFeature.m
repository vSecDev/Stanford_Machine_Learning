function out = mapFeature(X1, X2)
% MAPFEATURE Feature mapping function to polynomial features
%
%   MAPFEATURE(X1, X2) maps the two input features
%   to quadratic features used in the regularization exercise.
%
%   Returns a new feature array with more features, comprising of 
%   X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..
%
%   Inputs X1, X2 must be the same size
%
X1 = [1;2;3]
X2 = [4;5;6]
degree = 6;
fprintf("\nX1 size ------------------\n")
size(X1)

out = ones(size(X1(:,1)));
fprintf("\nout size ------------------\n")
size(out)

pause;

for i = 1:degree
    for j = 0:i		
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
		out
    end
end

end