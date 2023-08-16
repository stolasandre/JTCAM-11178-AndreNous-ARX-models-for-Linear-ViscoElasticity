function cfig_kernel(X1, YMatrix1,YMatrix2,figure,axes2,axes3)
%CREATEFIGURE(X1, YMatrix1)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data
% Create multiple lines using matrix input to plot
figure2=figure;
% axes2=axes;axes3=axes;
plot1 = plot(X1,YMatrix1,'Parent',axes2);
set(plot1(1),'DisplayName','$\ni_\alpha^\ast(\beta,t)$ Mittag-Leffler',...
    'LineWidth',1,...
    'Color',[0 0 1]);
set(plot1(2),...
    'DisplayName','Laplace inverse of $\frac{1}{p^{1-\alpha}+\beta}$',...
    'MarkerFaceColor',[1 0 0],...
    'MarkerSize',4,...
    'Marker','o',...
    'LineStyle','none',...
    'Color',[1 0 0]);
% Create legend
legend1 = legend(axes2);
set(legend1,...
    'Position',[0.399947779961362 0.738422107076956 0.444889069538919 0.160389491668476],...
    'Interpreter','latex',...
    'FontSize',20,'AutoUpdate','off');
plot2 = plot(X1,YMatrix2,'Parent',axes2);
set(plot2(1),'LineWidth',1,'Color',[0 0 1],'DisplayName','');
set(plot2(2),'MarkerFaceColor',[1 0 0],'MarkerSize',4,'Marker','o',...
    'LineStyle','none',...
    'Color',[1 0 0],'DisplayName','');
set(plot2(3),'LineWidth',1,'Color',[0 0 1],'DisplayName','');
set(plot2(4),'MarkerFaceColor',[1 0 0],'MarkerSize',4,'Marker','o',...
    'LineStyle','none',...
    'Color',[1 0 0],'DisplayName','');
set(plot2(5),'LineWidth',1,'Color',[0 0 1]);
set(plot2(6),'MarkerFaceColor',[1 0 0],'MarkerSize',4,'Marker','o',...
    'LineStyle','none',...
    'Color',[1 0 0]);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 2.7]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0 3]);
box(axes2,'on');
hold(axes2,'off');
% Set the remaining axes properties
set(axes2,'XGrid','on','YGrid','on');


% Create arrow
annotation(figure2,'arrow',[0.190274841437632 0.342494714587738],...
    [0.152571428571429 0.526785714285714]);

% Create textbox
annotation(figure2,'textbox',...
    [0.346723044397463 0.415071427166462 0.293340387228428 0.0812500014049667],...
    'String',{'\alpha = 0.8, 0.6, 0.4, 0.2'},...
    'FontSize',14,'FitBoxToText','on');
