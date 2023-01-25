function dtetra(ind,node, varargin)
ind = nchoosek(ind,3);

for ii = ind'
    xx = node(ii,1);
    yy = node(ii,2);
    zz = node(ii,3);
    scatter3(xx,yy,zz,varargin{:});
    hold on
    plot3([xx; xx(1)],[yy; yy(1)], [zz; zz(1)]);
    hold on
end


end