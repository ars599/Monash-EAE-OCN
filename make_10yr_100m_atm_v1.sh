#!/bin/bash

idir="/g/data/fs38/publications/CMIP6/CMIP/CSIRO-ARCCSS/ACCESS-CM2/historical/r5i1p1f1/Amon"

#   "qnet = rss + rls - hfls - hfss"
#   "rss = rsds - rsus\n",
#   "rls = rlds - rlus\n",

# "Surface Downwelling Shortwave Radiation" 
rsdsName="rsds_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_185001-201412.nc"
# "Surface Upwelling Shortwave Radiation"
rsusName="rsus_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_185001-201412.nc"
# "Surface Downwelling Longwave Radiation" 
rldsName="rlds_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_185001-201412.nc"
# "Surface Upwelling Longwave Radiation"
rlusName="rlus_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_185001-201412.nc"
# "Surface Upward Latent Heat Flux"
hflsName="hfls_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_185001-201412.nc"
# "Surface Upward Sensible Heat Flux"
hfssName="hfss_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_185001-201412.nc"

# 2D data
for var in rsds rsus rlds rlus hfls hfss
    do
       infname="$var/gn/latest/${var}_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_185001-201412.nc"
       i10fname="${var}_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
       icfname="${var}_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.clim.nc"
       iafname="${var}_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.anom.nc"
       echo "input ......." $idir/$infname
       echo "output ......." $i10fname
       cdo -L selyear,2000/2009 $idir/$infname $i10fname
       cdo ymonmean $i10fname $icfname
       cdo ymonsub $i10fname $icfname $iafname
   done



