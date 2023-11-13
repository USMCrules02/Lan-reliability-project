
K = [1 5 15 50 100]; % array of k values
KList = ["K=1" "K=5" "K=15" "K=50" "K=100"]

results = ones(99,5); % results of simulated and calculated values

%% Loop 
% loops from 1 to 99
% Gets simulated results
for i=1:+1:99
   for x = 1:+1:5
        results((i),x) = runTwoParallelLinkSim(K(x),(i/100),1000);
   end
end

%% Figure 
% Creates a figure with simulated and calculated values for k
% All K and calculated results included

figure('Name','Parrallel Series Link','NumberTitle','off');
set(gca,'XTickLabel',0:.05:1);
scatter(1:99,results(:,1:5))
set(gca, 'yscale', 'log')
legend('K = 1','K = 5','K = 15','K = 50','K = 100')

% Creates figure for each individual k
for i = 1:+1:5
        figure('Name', KList(i) ,'NumberTitle','off');
        set(gca,'XTickLabel',0:.05:1);
        scatter(1:99,results(:,1:5))
        set(gca, 'yscale', 'log')
        legend(KList(i))
end
