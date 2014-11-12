function plotExamples(X,y)
% plotExamples(X,y) plots positive examples with red x and 
% negative examples with blue o in a 2D plane.
    posPositives=find(y==1); % Get the position of positive examples
    posNegatives=find(y==-1); % Get the position of negative examples
    plot(X(posPositives,1),X(posPositives,2),'rx','LineWidth',2,'MarkerSize',7);
    hold on;
    plot(X(posNegatives,1),X(posNegatives,2),'bo','LineWidth',2,'MarkerSize',7);
    hold off;
end
