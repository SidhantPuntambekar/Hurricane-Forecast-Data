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
title('First Landfalls Atlantic Coast', 'FontSize', 10)

lat1 = ([31.7]);
lon1 = ([-78.8]);

lat2 = ([41.4]);
lon2 = ([-71.4]);

%lat3 = 
%lon3 = 

lat4 = ([33.6]);
lon4 = ([-78.1]);

lat5 = (33.7);
lon5 = (-78);

lat6 = (34);
lon6 = (-77.7);

lat7 = (33.7);
lon7 = (-78);

lat8 = (35.1);
lon8 = (-76.4);

lat9 = (34.2);
lon9 = (-76.4);

lat10 = (32.8);
lon10 = (-79.5);

lat11 = (34.7);
lon11 = (-76.6);

lat12 = (38.3);
lon12 = (-73.2);

lat13 = (34);
lon13 = (-77.3);

lat14 = (33.5);
lon14 = (-79);

plotm(lat1,lon1, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10)
plotm(lat2,lon2, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
%plotm(lat3,lon3, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10)
plotm(lat4,lon4, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'g', 'Marker', 'x', 'MarkerSize',10)
plotm(lat5,lon5, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10)
plotm(lat6,lon6, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10)
plotm(lat7,lon7, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'g', 'Marker', 'x', 'MarkerSize',10)
plotm(lat8,lon8, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'g', 'Marker', 'x', 'MarkerSize',10)
plotm(lat9,lon9, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat10,lon10, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat11,lon11, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'g', 'Marker', 'x', 'MarkerSize',10)
plotm(lat12,lon12, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10)
plotm(lat13,lon13, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat14,lon14, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)

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
