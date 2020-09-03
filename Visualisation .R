#Worst case


# Days 
x=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)   

# Infection rate percent  
R0w=c(1.0022,1.0022^2,1.0022^3,1.0022^4,1.0022^5,1.0022^6,1.0022^7,1.0022^8,1.0022^9,1.0022^10,1.0022^11,1.0022^12,1.0022^13,1.0022^14,1.0022^15)

# Total affected the day before the simulation  
y=c(9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298)

ratiow <- R0w  
dagerw <- x
smittew <- y

round(ratiow*smittew)

totw <- round(ratiow*smittew)


plot(dagerw,totw,
       pch = 16, col = 2,
       xlab = "First 15 days in august",
       ylab = "Total affected",
       main = "Number of people affected in Norway due to Covid-19")
  
axis(1,at=1:length(dagerw),labels = dagerw)
  
  
# best case

# Days   
a=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)

# Infection rate percent 
R0b=c(1.00094,1.00094^2,1.00094^3,1.00094^4,1.00094^5,1.00094^6,1.00094^7,1.00094^8,1.00094^9,1.00094^10,1.00094^11,1.00094^12,1.00094^13,1.00094^14,1.00094^15)

# Total affected the day before the simulation  
b=c(9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298)

ratiob <- R0b  
dagerb <- a
smitteb <- b

round(ratiob*smitteb)

totb <- round(ratiob*smitteb)

  
plot(dagerb,totb,
       pch = 14, col = 3,
       xlab = "First 15 days in august",
       ylab = "Total affected",
       main = "Number of people affected in Norway due to Covid-19")
axis(1,at=1:length(dagerb),labels = dagerb)
  
  
# Most likely

# Days     
l=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)

# Infection rate percent 
R0m=c(1.00097,1.00097^2,1.00097^3,1.00097^4,1.00097^5,1.00097^6,1.00097^7,1.00097^8,1.00097^9,1.00097^10,1.00097^11,1.00097^12,1.00097^13,1.00097^14,1.00097^15)

# Total affected the day before the simulation 
m=c(9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298,9298)

ratiom <- R0m  
dagerm <- l
smittem <- m

round(ratiom*smittem)

totm <- round(ratiom*smittem)
  
plot(dagerm,totm,
       pch = 11, col = 2,
       xlab = "First 15 days in august",
       ylab = "Total affected",
       main = "Number of people affected in Norway due to Covid-19")
axis(1,at=1:length(dagerm),labels = dagerm)
  
# Real values

# Days   
p=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)

# Real values
q=c(9311,9324,9362,9402,9468,9546,9625,9660,9694,9757,9799,9862,9916,9992,10035)
  
dagerr <- p
smitter <- q

plot(dagerr,smitter,
     pch = 11, col = 2,
     xlab = "First 15 days in august",
     ylab = "Total affected",
     main = "Number of people affected in Norway due to Covid-19")
axis(1,at=1:length(dagerr),labels = dagerr)
  
  
########################################################################################

# Graph with 4 different scenarios 

plot(dagerb,type = "o", lwd=2,
       xaxt="n",ylim =c(9300,10050),col="black",
       xlab = "First 15 days in august",
       ylab = "Number of people affected",
       main = "Total number of people affected by Covid-19 with different scenarios")
axis(1,at=1:length(dagerr),labels=dagerr)
lines(totm,col="red",type ="b",lwd=2,pch = c(20))
lines(totw,col="pink",type ="b",lwd=2,pch = c(20))
lines(totb,col="green",type ="b",lwd=2,pch = c(20))
lines(smitter,col="black",type = "b",lwd=2,pch = c(20)) 
  
legend("topleft", inset = c(0, 0),
         legend = c("most likely scenario", "worst-case scenario", "best-case scenario", "real scenario"),
         col = c("red","pink","green","black"),
         pch = c(20), cex = 0.6)

##########################################################################################################

# Created a tabel below and compared the real values between the different scenarios

##########################################################################################################


# Predicted(Best-case) VS real
totb - smitter

feil_b <- (totb - smitter)

round((totb - smitter)/(smitter),digits = 5)*100

p_feil_b <- round((totb - smitter)/(smitter),digits = 5)*100
      

# Making of table

data.frame(smittet=smitter,predikert=totb,feil=feil_b,prosentvis=p_feil_b)

summary_b <- data.frame(smittet=smitter,predikert=totb,feil=feil_b,prosentvis=p_feil_b) 

row.names(summary_b)<-c("01.08.2020","02.08.2020","03.08.2020","04.08.2020","05.08.2020","06.08.2020","07.08.2020","08.08.2020","09.08.2020","10.08.2020","11.08.2020","12.08.2020","13.08.2020","14.08.2020","15.08.2020")

summary_b



##########################################################################################################

# Predicted(most likely-case) VS real

totm - smitter

feil_m <- (totm - smitter)

round((totm - smitter)/(smitter),digits = 5)*100

p_feil_m <- round((totm - smitter)/(smitter),digits = 5)*100


# Making of table

data.frame(smittet=smitter,predikert=totm,feil=feil_m,prosenvis=p_feil_m)

summary_m <- data.frame(smittet=smitter,predikert=totm,feil=feil_m,"prosenvis feil"=p_feil_m)

row.names(summary_m)<-c("01.08.2020","02.08.2020","03.08.2020","04.08.2020","05.08.2020","06.08.2020","07.08.2020","08.08.2020","09.08.2020","10.08.2020","11.08.2020","12.08.2020","13.08.2020","14.08.2020","15.08.2020")

summary_m



##########################################################################################################

# Predicted(worst-case) VS real

totw - smitter

feil_w <- (totw - smitter)

round((totw - smitter)/(smitter),digits = 5)*100

p_feil_w <- round((totw - smitter)/(smitter),digits = 5)*100


# Making of table

data.frame(smiitet=smitter,predikert=totw,feil=feil_w,prosentvis_feil=p_feil_w)

summary_w <- data.frame(smiitet=smitter,predikert=totw,feil=feil_w,prosentvis_feil=p_feil_w)

row.names(summary_w)<-c("01.08.2020","02.08.2020","03.08.2020","04.08.2020","05.08.2020","06.08.2020","07.08.2020","08.08.2020","09.08.2020","10.08.2020","11.08.2020","12.08.2020","13.08.2020","14.08.2020","15.08.2020")

summary_w

####################################################################################################

# Total oversikt 

na=c("-","-","-","-","-","-","-","-","-","-","-","-","-","-","-")

data.frame("smittet"=smitter,"NA"=na,predikert_w=totw,avvik_w=feil_w,prosent_w=p_feil_w,"NA"=na,predikert_m=totm,avvik_m=feil_m,prosent_m=p_feil_m,"NA"=na,predikert_b=totb,avvik_b=feil_b,prosent_b=p_feil_b)

total_summary <- data.frame("smittet"=smitter,"NA"=na,predikert_w=totw,avvik_w=feil_w,"prosent_w"=p_feil_w,"NA"=na,
                                                                  predikert_m=totm,avvik_m=feil_m,prosent_m=p_feil_m,"NA"=na,
                                                                  predikert_b=totb,avvik_b=feil_b,prosent_b=p_feil_b)


row.names(total_summary)<-c("01.08.2020","02.08.2020","03.08.2020","04.08.2020","05.08.2020","06.08.2020","07.08.2020","08.08.2020","09.08.2020","10.08.2020","11.08.2020","12.08.2020","13.08.2020","14.08.2020","15.08.2020")

total_summary
