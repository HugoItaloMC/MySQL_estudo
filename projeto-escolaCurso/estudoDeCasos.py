"""
Exemplos para fixar


Neste Exemplo iremos ver o crescimento da populacão Brasileira 1980 - 2016
"""
# importando biblioteca :


import matplotlib.pyplot as plt
# importando arquivo com dados :

dados = open("populacao_brasileira.csv").readlines()

x = []
y = []

for i in range(len(dados)):
    if i != 0:
        linha = dados[i].split(";")
        x.append(int(linha[0]))
        y.append(int(linha[1]))


# Legendas dos eixos

plt.xlabel("Ano 1980 - 2012")
plt.ylabel("Populacão X 100 000000")

# Declarando formato gráfico dos eixos

plt.bar(x, y, color="#e4e4e4")
plt.plot(x, y, color = "k", linestyle = ":")
plt.scatter(x,y , marker = ".", color = "r", s = 2.25)
plt.show()