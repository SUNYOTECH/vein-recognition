function legendmarkeradjust(marksize, linewidth)
% adjusts the legend marker size. Used in some plots

s=get(legend);
s1=s.Children;
s2=[];

s2=findobj(s1,{'type','patch','-or','type','line'});

for m=1:length(s2)
    set(s2(m),'markersize',marksize);
    if (nargin == 2)
       set(s2(m), 'linewidth', linewidth); 
    end
end