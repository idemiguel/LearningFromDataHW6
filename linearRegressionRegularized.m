function wg = linearRegressionRegularized(X,y,lambda)
% wg = linearRegressionRegularized(X,y,lambda) implements linear regression
% using Weight Decay Regularization
% X should include a column of ones (x_0)
    wg=pinv(X'*X+lambda*eye(size(X,2)))*X'*y;
end
