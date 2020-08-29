# Covid-19-simulation
#
#
#
#   Program:    Covid-19 simulation
#   File:       Covid-19Simulation.xlsm
#   
#   Version:    1.3.959 © 2009-2020 RStudio, PBC
#               Microsoft Office 365 ProPlus
#   Date:       29.08.2020
#   
#   
#   Copyright:  (c) / Ajhanth Yogachandran
#   Author:     Ajhanth Yogachandran
#   Email:      Ajhanthy@hotmail.com

#***************************************************************************************************************************************************************
# Objective:
#
# In this project I have predicted the total number of affected people due to Covid-19 pandemic day by day in the period of 1.-15.august through a statistical model.
# The prediction is based on the datas for affected according to VG.no for Covid-19. Through analysis of the datas three different scenarios were chosen. 
# These scenarios are namely "Worst-case scenario", "Most likely scenario", and "Best-case scenario".
# There are two Excel files, where the first one includes the data collected, analysis of july month, and the real values of total affected for august month.
# The second file in Excel illustrates the Monte Carlo simulation based on the datas collected from july month.
# A Monte Carlo simulation was done with the help of an exponential function in Excel through a tool called "Palisades @Risk".
# Additionally, the three different scenarios were also predicted seperately in the first Excel file.
# A graphical visualisation of the different scenarios and the real values are shown in R with a line diagram.
#
#*****************************************************************************************************************************************************************
#
#   Description:
#   ============
# Heading 1:
#
# First Excel file "Project Covid-19" has 3 sheets; "Data", "Data for juli", "Reelle verdier for august".
# The first sheet, "Data", shows the datas collected for affected and total number of affected for each day from 25.february - 31.july. 
# The second sheet, "Data for juli", shows how my statistical model for august was constructed with the datas from july. 
# In this case an exponential function was used as my statistical model, which can be seen in the sheet called "Data for juli".
# The third sheet, "Reelle verdier for august", shows the real values from the total number of people affected for each day from 1.-15. august based on Vg.no.
#
# Heading 2: 
#
# The second Excel file called "Simulation" shows the Monte Carlo simulation based on the datas I collected and my own work from the first Excel file. 
# The simulation predicts the total number of affected due to Covid-19 for each day from the 1.-15.august.
# Additionally, two variables were included;
# "% of people who need treatment for more than 7 days" and "% of people who do not wish for any treatment care for more than 7 days days despite feeling better".
#
# Heading 3: 
#
#
#
#
#*****************************************************************************************************************************************************************
#
#   Usage:
#   ======
#   Aim of this project is to see whether this statistical model can be used in the future to avoid more affected and deaths.
#
#*****************************************************************************************************************************************************************
#
#   Revision History:
#   =================
#   V1.0   29.08.20  Original
#********************************************************************************************************************
