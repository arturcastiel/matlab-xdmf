fileName = 'mesh.h5';
n = 215;
% Create the HDF5 file
%nelem = [6*ones(size(elem,1),1) elem-1];
nelem = elem -1 ;
%nelem = [6*ones(size(nelem,1),1) nelem]
% nelem = uint64(nelem);
% file = "2DUnstructuredMesh.h5"
% % 
% belem = [0, 1, 2, 3; 1, 4, 5, 2; 2, 5, 3, 3];
% bcoords = [0, 0; 1, 0; 1, 1; 0, 1; 2.5, 0; 2, 2];
% h5create(file , '/Quadrilaterals', [size(belem,2) size(belem,1)],'Datatype','uint64');
% h5create(file , '/XY', [size(bcoords,2),size(bcoords,1)] );
% h5write(file, '/Quadrilaterals',uint64(belem'));
% h5write(file, '/XY',bcoords');

h5create(fileName , '/elem', [size(elem,2) size(elem,1)],'Datatype','uint64');
h5create(fileName , '/coords', [size(coords,2) size(coords,1)]);
h5write(fileName, '/elem', uint64(elem' - 1));
h5write(fileName, '/coords',coords');


% h5create(fileName, '/x_nodes', size(coords,1));
% h5create(fileName, '/y_nodes', size(coords,1));
% h5create(fileName, '/z_nodes', size(coords,1));

% Write the connectivities and coordinates to the HDF5 file
%h5write(fileName, '/elem',nelem(1:n,:));
% h5write(fileName, '/elem',nelem);

%h5write(fileName, '/coords',coords);

% h5write(fileName, '/x_nodes', coords(:,1));
% h5write(fileName, '/y_nodes', coords(:,2));
% h5write(fileName, '/z_nodes', coords(:,3));

%data = h5read(fileName,'/coords')

