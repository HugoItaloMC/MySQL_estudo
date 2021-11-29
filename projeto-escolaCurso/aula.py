
#Visualizacão de dados em grafico com python

# importando biblioteca

import matplotlib.pyplot as plt

x1 = [1, 3, 5, 7, 9, 11]
y1 = [5 , 7, 2, 3, 1, 8]

x2 = [2, 4, 5, 6, 8, 10]
y2 = [11, 2, 6, 7, 1, 3]

# Legendas

plt.title("Meu Gráfico, teste : ")

plt.xlabel("Eixo X")

plt.ylabel("Eixo Y")



#plt.plot(x, y)  # Grafico linear

#plt.bar(x1, y1, label = "Grupo 1")  # Gráfico de barras
#plt.bar(x2, y2, label = "Grupo 2")

plt.scatter(x1, y1, label = "Grupo 1", color = "purple")
plt.scatter(x2, y2, label = "Grupo 2", color = "green")
plt.plot(x1, y1, color = "black")  # Ligar os pontos com linhas
plt.plot(x2, y2, color = "black")
plt.legend()  # ' Commitando ' o bloco acima pro gráfico rodar

plt.show()  # Mostra gráfico
