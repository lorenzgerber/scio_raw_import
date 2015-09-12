import_json_nir<-function(filename){
    require(jsonlite)
    json_list<-fromJSON(filename)
    spectra_matrix<-matrix(unlist(json_list$records$spectrum),
                           nrow = json_list$header$num_records,
                           ncol = json_list$header$num_wavelengths,
                           byrow = TRUE)
    return(spectra_matrix)
}

