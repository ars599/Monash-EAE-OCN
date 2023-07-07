#!/bin/bash

idir="/g/data/fs38/publications/CMIP6/CMIP/CSIRO-ARCCSS/ACCESS-CM2/historical/r5i1p1f1/Omon"
Tname="thetao_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
Sname="so_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"

# "Sea Water X Velocity", ... "Sea Water Vertical Velocity"
Uname="uo_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
Vname="vo_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
Wname="wo_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"


# 3D data
for var in thetao so uo vo wo
    do
       infname="$var/gn/latest/${var}_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
       i10fname="${var}_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"
       icfname="${var}_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.clim.nc"
       iafname="${var}_Omon_ACCESS-CM2_historical_r51p1f1_gn_200001-200912_v10.anom.nc"
       echo "input ......." $idir/$infname
       echo "output ......." $i10fname
#       cdo -L sellevidx,1/11 -sellonlatbox,120,280,-20,20 $idir/$infname $i10fname
#       cdo ymonmean $i10fname $icfname
#       cdo ymonsub $i10fname $icfname $iafname
    done



# "surface_downward_heat_flux_in_sea_water"
hfdsName="hfds_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_195001-201412.nc"
# "Surface Downward Latent Heat Flux"
hflsoName="hflso_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_195001-201412.nc"
# "Surface Downward Sensible Heat Flux"
hfssoName="hfsso_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_195001-201412.nc"


# 2D data
for var in hfds hflso hfsso
    do
       infname="$var/gn/latest/${var}_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_185001-201412.nc"
       i10fname="${var}_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"
       icfname="${var}_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.clim.nc"
       iafname="${var}_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.anom.nc"
       echo "input ......." $idir/$infname
       echo "output ......." $i10fname
       cdo -L selyear,2000/2009 -sellonlatbox,120,280,-20,20 $idir/$infname $i10fname
       cdo ymonmean $i10fname $icfname
       cdo ymonsub $i10fname $icfname $iafname
   done




    iafname="$var/gn/latest/${var}_Omon_ACCESS-CM2_historical_r6i1p1f1_gn_200001-200912_v10.anom.nc"

