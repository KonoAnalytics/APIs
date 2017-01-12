inventorygraph <- function(fileandpath="c:/temp/output.pdf")
{
    PET.WTTSTUS1.W <- get_eia("PET.WTTSTUS1.W")
    
    pdf(fileandpath)
    plot(PET.WTTSTUS1.W)
    dev.off()
}

get_eia <- function(series_id=NULL, api_key=NULL)
{
    #library("devtools")
    #install_github('konoanalytics/KonostdlibR')
    library("KonostdlibR")
    loadpackage("EIAdata")
    if(is.null(api_key))
    {
        api_key <- as.character(KonostdlibR::getcredentials("EIA")$api_key)
    }
    
   EIAdata::getEIA(series_id,api_key)
}