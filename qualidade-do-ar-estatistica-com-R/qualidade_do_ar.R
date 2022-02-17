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
