################################################################################
# HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
# Institut REDS, Reconfigurable & Embedded Digital Systems
#
# File         : run_comp_bin_lin_2to4_sim.tcl
#
# Description  : Script de compilation des fichiers et de lancement
#                de la simulation  manuelle du bin-lin 2a4
# 
# Auteur       : Etienne Messerli
# Date         : 17.09.2014
# Version      : 1.0
#
# Dependencies :
#
#--| Modifications |------------------------------------------------------------
# Version   Auteur      Date               Description
# 0.0       EMI         17.09.2014         Initial version.                        
################################################################################

################################################################################
#create library work        
vlib work

#map library work to work
vmap work work

# bin-lin file compilation
vcom -reportprogress 300 -work work   ../src/bin_lin_2to4.vhd

# top_sim compilation
vcom -reportprogress 300 -work work   ../src_tb/console_sim.vhd

#Chargement fichier pour la simulation
vsim -voptargs="+acc" work.console_sim 

#ajout signaux composant simuler dans la fenetre wave
add wave UUT/*

#lance la console REDS
do /opt/tools_reds/REDS_console.tcl
################################################################################