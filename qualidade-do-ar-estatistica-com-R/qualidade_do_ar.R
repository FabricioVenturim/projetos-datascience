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


# Análise descritiva ou exploratória:
summary(Airq) #Sumário das variáveis
plot(airq~vala, data=Airq)


