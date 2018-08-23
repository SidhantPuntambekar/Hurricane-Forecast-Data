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
title('First Landfalls Florida Coast', 'FontSize', 10)

lat1 = ([25.4]);
lon1 = ([-79.3]);

lat2 = ([26.9]);
lon2 = ([-79]);

lat3 = ([25.1]);
lon3 = ([-81.3]);

lat4 = (26.1);
lon4 = (-82.4);

lat5 = (27);
lon5 = (-79.4);

lat6 = (27.1);
lon6 = (-79.4);

lat7 = (25);
lon7 = (-83.1);

lat8 = (29);
lon8 = (-84.8);

plotm(lat1,lon1, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat2,lon2, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat3,lon3, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat4,lon4, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)
plotm(lat5,lon5, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'g', 'Marker', 'x', 'MarkerSize',10)
plotm(lat6,lon6, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'g', 'Marker', 'x', 'MarkerSize',10)
plotm(lat7,lon7, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'r', 'Marker', 'x', 'MarkerSize',10)
plotm(lat8,lon8, 'LineStyle', 'none', 'LineWidth',2, 'Color', 'b', 'Marker', 'x', 'MarkerSize',10)

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
