#Costo de las estrategias.

#GANANCIA IDEA A
#Costo de la membresía $1000
#Costo de enviar el tríptico $30

profitA <- (posteriorA * 1000) - 30

#GANANCIA IDEA B
#Costo de la membresía $1000
#Costo de enviar el tríptico y salmón $300

profitB <- (posteriorB * 1000) - 300

profitA <- profitA[1:5871]

profit_diff <- profitB - profitA

#Visualizando las
hist(profit_diff,
     col = "salmon",
     main = "Densidad de Probabilidad
     de Diferencia de Ganancias",
     xlab = "profitB-profitA",
     ylab = "Frecuencia",
     freq = TRUE,
     xlim = c(-1000, 1000))


#Calculando porcentaje donde profitA da mas ganancia que profitB

sum(profitA > profitB)/length(profitA)
