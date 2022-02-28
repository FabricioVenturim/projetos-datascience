# Meu primeiro script em R
# Definindo o projeto de curso
# Pergunta: O que afeta a qualidade do ar e como afeta.

#install.packages("Ecdat") # Se for necessário instalar o package
library(Ecdat) # Carregando o pacote para o nosso programa
data(Airq) # Carregando o banco de dados do pacote
names(Airq) # Exibe os nomes das variáveis

# Descrevendo as variáveis:
# airq: índice de qualidade do ar (quanto menor, melhor)
# vala: valor das empresas nas cidades (milhares de dólares)
# rain: quantidade de chuva (em polegadas)
# coas: posição costeira da cidade (sim ou não)
# dens: densidade populacional (milha quadrada)
# medi: renda média per capita (dólares)

    # a variável Resposta é a airq e as demais são variáveis explicativas

#-------------------------------------------
              #A variável "vala" afeta "airq"?
# Análise descritiva ou exploratória:
summary(Airq) #Sumário das variáveis
plot(airq~vala, data=Airq)

# Criando um modelo estatístico
# y (resposta) ~ x (explicativa)
# y ~ x1 + x2 + x3 ...

# Montando o montelo
m1<-lm(airq~vala, data=Airq) #lm(modelo linear)
summary(m1) # Para saber a significância do modelo
# p-valor indica a significância do modelo ou da variável:
# se p < que 0.05 a variável é significativa 
# se p > que 0.05 não existe o efeito esperado

# A variável "vala" não influenciou a qualidade do ar nas cidades("airq)

#-------------------------------------------
                  # A variável "vala" afeta "airq"?
m2<-lm(airq~coas, data=Airq)
summary(m2)
# Sim! a posição costeira da cidade influência a qualidade de ar das cidades
# as cidades costeiras apresentam uma melhor qualidade do ar
plot(airq~coas, data=Airq)

#-------------------------------------------
                  # A variável "madi" afeta "airq"?
m3<-lm(airq~medi, data=Airq)
summary(m3)
plot(airq~medi, data=Airq)
#A variável não afetou a qualidade do ar

#-------------------------------------------
                  # A variável "rain" afeta "airq"?
m4<-lm(airq~rain, data=Airq)
summary(m4)
plot(airq~rain, data=Airq)
#A variável não afetou a qualidade do ar

#-------------------------------------------
                  # A variável "dens" afeta "airq"?
m5<-lm(airq~dens, data=Airq)
summary(m5)
plot(airq~dens, data=Airq)
#A variável não afetou a qualidade do ar

#===========================================
#As retas de modelos não significativos são opcionais nos gráficos

#As retas no gráfico 
#vamos usar de exemplo a variável "dens"
plot(airq~dens, data=Airq)
#y=p + mx
curve(1.054e+02+-3.857e-04*x, add=TRUE)

#Melhorando o gráfico
plot(airq~dens, data=Airq, xlab="Densidade Populacional (milha quadrada)", 
     ylab="Qualidade do ar", pch=16, col="blue", cex.lab=1.1, 
     cex=1.1, main="Influência da Densidade Populacional na qualidade do Ar")
#psh é o tipo do ponto, cada número representa uma representação dos pontos
#cex.lab é o tamanho da legenda dos eixos
#cex é para mudar o tamanho dos pontos
#main é o título

curve(1.054e+02+-3.857e-04*x, add=TRUE, col="darkblue", lwd=2, lty=2)
#lwd é a espessura da reta
#lty é o tipo da linha
