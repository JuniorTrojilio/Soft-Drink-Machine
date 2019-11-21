
<h1>Máquinas de Estados Finitos em VHDL 📘</h1> 
<h4>Dando continuidade às atividades da disciplina e ao desenvolvimento de habilidades de pesquisa e síntese do conhecimento, consideradas de importância fundamental para o aluno, propomos o desenvolvimento do trabalho relacionado a máquinas de estados finitos em VHDL.
A partir dos conteúdos veiculados na disciplina, indicamos como segunda atividade de avaliação realizar a construção de um sistema para uma máquina de vender refrigerantes. Para isto você deverá seguir as orientações:</h4>

•	Um detector de moedas fornece ao nosso sistema sinal de entrada 𝐶 de um bit, a qual, quando uma moeda é detectada, toma-se um (1) durante um ciclo de relógio e também uma entrada 𝐴 de quatro bits que indica o valor da moeda em centavos.<br> 
•	Outra entrada 𝑆 de quatro bits indica o custo de um refrigerante (esse valor pode ser definido pelo proprietário da máquina).<br>
•	Depois de o sistema detectar um total de moedas cujo valor é igual ou maior do que o custo de um refrigerante, ele deverá atribuir um (1) a um bit de saída 𝐷 durante um ciclo de relógio, fazendo com que um refrigerante seja fornecido (essa máquina fornece apenas um tipo de refrigerante).<br>
•	A máquina não fornece troco.<br>
•	Qualquer valor em excesso é retido.<br>
•	Os valores de S, A e Total devem ser apresentados cada um em um display se sete segmentos.<br>
<br>

A Figura 1 apresenta o diagrama de blocos do sistema.

![estados](https://user-images.githubusercontent.com/39541807/69341596-a134eb80-0c48-11ea-907d-34f5e14d437d.png) 


A Figura 2 representa a máquina de estados da máquina de refrigerante.
![diagrama](https://user-images.githubusercontent.com/39541807/69341595-a09c5500-0c48-11ea-84ef-a0856acf2fe7.png) 
