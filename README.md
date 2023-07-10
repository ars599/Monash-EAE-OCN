# Monash-EAE-OCN
Sharing OCN data (10 years chunk)

# File list
file location on Gadi:
/g/data/p66/ars599/work_eae

* make_10yr_100m_ocn_v1.sh ( use cdo select Pacific region, and also upper 100 meters)
* xxx_v10.nc (raw files 0-100m)
* xxx_v10.clim.nc (climatology)
* xxx_v10.anom.nc (anomaly)
*
* make_10yr_100m_atm_v1.sh ( use cdo select Pacific region on atm variables)
* xxx.nc (raw files)
* xxx.clim.nc (climatology)
* xxx.anom.nc (anomaly)


## Ocean Variable list
* Tname="thetao_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"
* Sname="so_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"

## "Sea Water X Velocity", ... "Sea Water Vertical Velocity"
* Uname="uo_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"
* Vname="vo_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"
* Wname="wo_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"

## "surface_downward_heat_flux_in_sea_water"
* hfdsName="hfds_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"
## "Surface Downward Latent Heat Flux"
* hflsoName="hflso_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"
## "Surface Downward Sensible Heat Flux"
* hfssoName="hfsso_Omon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912_v10.nc"

## Atmospheric Variable list
# "Surface Downwelling Shortwave Radiation"
* rsdsName="rsds_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
# "Surface Upwelling Shortwave Radiation"
* rsusName="rsus_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
# "Surface Downwelling Longwave Radiation"
* rldsName="rlds_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
# "Surface Upwelling Longwave Radiation"
* rlusName="rlus_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
# "Surface Upward Latent Heat Flux"
* hflsName="hfls_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"
# "Surface Upward Sensible Heat Flux"
* hfssName="hfss_Amon_ACCESS-CM2_historical_r5i1p1f1_gn_200001-200912.nc"

# to calculate net heat flux at the surface
*   "qnet = rss + rls - hfls - hfss"
*   "rss = rsds - rsus\n",
*   "rls = rlds - rlus\n",



