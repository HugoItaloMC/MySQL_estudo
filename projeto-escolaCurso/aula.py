"""
Markers


# Atributo marker = ""


character  description

'.' -------- point marker

',' -------- pixel marker

'o' -------- circle Marker

'v' -------- riangle_down marker

'^' -------- triangle_up marker

'<' -------- triangle_left marker

'>' -------- triangle_right marker

'1' -------- tri_down marker

'2' -------- tri_up marker

'3' -------- tri_left marker

'4' -------- tri_right marker

'8' ------- octagon marker

's' ------- square marker

'p' ------- pentagon marker

'P' ------- plus(filled) marker

'*' ------- star marker

'h' ------- hexagon1 marker

'H' ------- hexagon2 marker

'+' ------- plus marker

'x'-------- x marker

'X' ------- x(filled) marker

'D' ------- diamond marker

'd' ------- thin_diamond marker

'|' ------- vline marker

'_' ------- hline marker

=======================================||

Line Styles

# Atributo linestyle = ""

character       description

'-' -------- solid line style

'--' ------- dashed line style

'-.' ------- dash-dot line style

':' -------- dotted line style


=======================================||

Colors :

Atributo color=""


character   color

'b' ------- blue

'g' ------- green

'r' ------- red

'c' ------- cyan

'm' ------- magenta

'y' ------- yellow

'k' ------- black

'w' ------ white

"""


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

plt.scatter(x1, y1, label = "Grupo 1", color = "purple", marker = ",", s = 20.25)  # Atributo ' s ' refere-se ao tamanho da marcacão
plt.scatter(x2, y2, label = "Grupo 2", color = "green", marker = "_")
plt.plot(x1, y1, color = "black", linestyle="--")  # Ligar os pontos com linhas
plt.plot(x2, y2, color = "black", linestyle = "-.")
plt.legend()  # ' Commitando ' o bloco acima pro gráfico rodar

#plt.show()  # Mostra gráfico
plt.savefig("figura1.png", dpi = 300)  # Atributo ' dpi ' refere-se ao tamanho da resoulucão da imagem, podemos salvar com a extensão ' .pdf '


# OBS : A imagem do gráfico  será salva dentro da pasta que se encontra o arquivo python