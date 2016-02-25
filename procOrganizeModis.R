require(MODIS);

# 1. Set working directories.
# 2. Set path to GDAL if not detected automatically - MODISoptions(gdalPath="/Library/Frameworks/GDAL.framework/Programs/");

## Get scenes by area of interest
getHdf(product="MYD09A1",begin="2012.01.01", end="2012.12.31", extent=extent(c(35,37,0,2)));

##Get an overview of what's in the local archive:
arcStats(product="MYD09A1",, extent="global", begin="2012.01.01", end=format(Sys.time(),'%Y.%m.%d'), asMap=TRUE, outName=NULL);

## Process the downloaded scenes
runGdal(product="MYD09A1",begin="2012.01.01", end="2012.12.31", extent="Cameroon", SDString=1, outProj="EPSG:4326");

runGdal(product="MYD09A1",begin="2012.01.01", end="2012.12.31", extent="Kenya", outProj="EPSG:4326");

runGdal(product="MYD09A1",begin="2012.01.01", end="2012.12.31", tileH=16:24, tileV=5:13, outProj="EPSG:4326");

runGdal(product="MYD09A1",begin="2012.01.01", end="2012.12.31", extent=c("Kenya", outProj="EPSG:4326");