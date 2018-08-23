workingFolder = tempdir;
files = gunzip('gshhs_c.b.gz', workingFolder);
filename = files{1};
indexfile = gshhs(filename, 'createindex');

latlim = [0  45];
lonlim = [-100 0];
S = gshhs(filename, latlim, lonlim);

delete(filename)
delete(indexfile)

levels = [S.Level];
unique(levels)

L1 = S(levels == 1);
%L2 = S(levels == 2);

figure('Color','w')
axesm('mercator', 'MapLatLimit', latlim, 'MapLonLimit', lonlim)
%ax.Color = 'green';
gridm; mlabel; plabel
geoshow([L1.Lat], [L1.Lon], 'Color', 'blue')
%geoshow([L2.Lat], [L2.Lon], 'Color', 'red')
%geoshow([L1.Lat], [L1.Lon], 'FaceColor', 'green')
tightmap

lat = ([0 45]); 
lon = ([-100 0]); 
plot(lon,lat,'bp') 
xlabel('Longitude', 'FontSize', 14) 
ylabel('Latitude', 'FontSize', 14)
title('First Landfalls Gulf Coast', 'FontSize', 10)

lat1 = ([28.7]);
lon1 = ([-93.5]);

lat2 = ([28.1]);
lon2 = ([-94.6]);

lat3 = ([29]);
lon3 = ([-87.7]);

lat4 = (30.4);
lon4 = (-87.9);

lat5 = (30.1);
lon5 = (-85.7);

lat6 = (29.8);
lon6 = (-88.7);

lat7 = (26.6);
lon7 = (-96.8);

lat8 = (29.2);
lon8 = (-92.1);

lat9 = (28.3);
lon9 = (-95.5);

lat10 = (30);
lon10 = (-87.9);

lat11 = (28.5);
lon11 = (-90.3);

lat12 = (29.9);
lon12 = (-86.9);

lat13 = (28.2);
lon13 = (-89.6);

lat14 = (29.4);
lon14 = (-93.6);

lat15 = (29.5);
lon15 = (-94.4);

lat16 = (26.4); 
lon16 = (-97.2);

lat17 = (28.8);
lon17 = (-90.3);

lat18 = (29.1);
lon18 = (-94.6);

lat19 = (29.1);
lon19 = (-90);

plotm(lat1,lon1, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10);
plotm(lat2,lon2, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10);
plotm(lat3,lon3, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10);
plotm(lat4,lon4, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10);
plotm(lat5,lon5, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'g', 'Marker', 'x', 'MarkerSize',10);
plotm(lat6,lon6, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat7,lon7, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat8,lon8, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat9,lon9, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat10,lon10, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10)
plotm(lat11,lon11, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat12,lon12, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat13,lon13, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10)
plotm(lat14,lon14, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'g', 'Marker', 'x', 'MarkerSize',10)
plotm(lat15,lon15, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat16,lon16, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat17,lon17, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'g', 'Marker', 'x', 'MarkerSize',10)
plotm(lat18,lon18, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10)
plotm(lat19,lon19, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)

 %load topo
 %axesm hatano
 %meshm(topo,topolegend)
 %zlimits = [min(topo(:)) max(topo(:))];
 %demcmap(zlimits);
 %colorbar;

%figure
%worldmap([0 45],[-100 0]);

%latlim([0 45]); 
%lonlim([-100 0]);

%filename = gunzip('gshhs_c.b.gz', tempdir);
%indexname = gshhs(filename{1}, 'createindex');



%projection = gcm;
%latlim = projection.maplatlimit;
%lonlim = projection.maplonlimit;
%map = gshhs(filename{1}, latlim, lonlim);
%delete(filename{1})
%delete(indexname)

%latlim = [0 45];
%lonlim = [-100 0];
%figure
%axesm('robinson','MapLatLimit',latlim,'MapLonLimit',lonlim,...
    %'Frame','on','Grid','on','MeridianLabel','on','ParallelLabel','on')
%axis off
%setm(gca,'MLabelLocation',60)
%load coastlines
%plotm(coastlat,coastlon)
