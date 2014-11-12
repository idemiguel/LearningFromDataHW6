function plotBoundary(X,y,w)
% plotBoundary(X,y,w) plots the boundary between the two classes
% according to weight vector w

    % Creation of a grid of points in 2D space
    numberOfPointsPerDimension=100;
    x1=linspace(-3,3,numberOfPointsPerDimension);
    x2=linspace(-3,3,numberOfPointsPerDimension);
    z=zeros(numberOfPointsPerDimension,numberOfPointsPerDimension);

    % Calculate the output for each point.
    for i = 1:numberOfPointsPerDimension
        for j = 1:numberOfPointsPerDimension
            % (Don't add the sign as the boundary line gets "stairy")
            z(i,j) = nonLinearTransform62(x1(i),x2(j))*w;
        end
    end
    % Plot filled contour for points with z = 0
    contourf(x1,x2,z',[0,0],'LineColor','k')
    colormap(copper);
    caxis([-1 0]);
    hold on
    % Plot the examples on top of that
    plotExamples(X(:,2:3),y);
    hold off
end
