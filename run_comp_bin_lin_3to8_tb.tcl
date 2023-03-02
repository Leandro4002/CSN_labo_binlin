################################################################################
# HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
# Institut REDS, Reconfigurable & Embedded Digital Systems
#
# File         : run_comp_bin_lin_3to8_tb.tcl
#
# Description  : Script de compilation des fichiers et de lancement 
#                de la simulation automatique du bin-lin 3a8
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
vcom -reportprogress 300 -work work   ../src/bin_lin_3to8.vhd

# test-bench compilation
vcom -reportprogress 300 -work work   ../src_tb/bin_lin_3to8_tb.vhd

#Chargement fichier pour la simulation
vsim -voptargs="+acc" work.bin_lin_3to8_tb 

#ajout signaux composant simuler dans la fenetre wave
#add wave UUT/*

#ouvre le fichier format predefini
do wave_bin_lin_3to8_tb.do
################################################################################