function Z = nonLinearTransform62(X1,X2)
% Z = nonLinearTransform62(X1, X2) generates the nonlinear transform
% of exercise 6.2 of edX LFD course (Caltech)
	Z = [ones(size(X1,1),1), X1, X2, X1.^2, X2.^2, X1.*X2, abs(X1-X2), abs(X1+X2)];
end
