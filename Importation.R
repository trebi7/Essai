#Chargement des librairies
library(tidyverse)
library(robotoolbox)

#Connexion au serveur kobo
kobo_setup(url = "https://kf.kobotoolbox.org",
           token = Sys.getenv('MY_TOKEN'))

asset = kobo_asset(Sys.getenv('MY_UID'))

asset |> 
  kobo_asset() |>
  kobo_data() |> 
  write_rds('essaidf.rds')
