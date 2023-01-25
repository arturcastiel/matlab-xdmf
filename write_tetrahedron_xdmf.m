function write_tetrahedron_xdmf(props, prop_names, folderpath, fname, ...
                                                    coords, elem)
fpath = fullfile(folderpath,fname);
write_mesh_hf5(coords,elem, folderpath)
write_props_hf5(props, prop_names, folderpath)
write_xdmf(props, prop_names,size(coords), size(elem), fpath)
end


