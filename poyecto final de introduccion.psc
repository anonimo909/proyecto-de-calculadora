algoritmo proyecto_final_de_introduccion_calculadora
	
	Definir opcion Como Entero
	Definir num1, num2, resultado Como Real
	Definir i, j, n, filas, columnas Como Entero
	Definir suma, promedio, mayor, menor, contador, arriba, abajo Como Real
	
	Dimension matriz1[20,20]
	Dimension matriz2[20,20]
	Dimension matrizR[20,20]
	Dimension numeros[100]
	
	Repetir
		
		Escribir "========menu de calculadora==========="
		Escribir "1. Suma"
		Escribir "2. Resta"
		Escribir "3. Multiplicacion"
		Escribir "4. Division"
		Escribir "5. Sumar matriz"
		Escribir "6. Restar matriz"
		Escribir "7. Suma de matrices"
		Escribir "8. Resta de matrices"
		Escribir "9. Triangulo"
		Escribir "10. Rectangulo"
		Escribir "11. Estadisticas"
		Escribir "0. Salir"
		escribir "======================================"
		Leer opcion
		
		Segun opcion Hacer
			
			1:
				Leer num1
				Leer num2
				resultado <- num1 + num2
				Escribir "Resultado: ", resultado
				
			2:
				Leer num1
				Leer num2
				resultado <- num1 - num2
				Escribir "Resultado: ", resultado
				
			3:
				Leer num1
				Leer num2
				resultado <- num1 * num2
				Escribir "Resultado: ", resultado
				
			4:
				Leer num1
				Leer num2
				
				Si num2 <> 0 Entonces
					resultado <- num1 / num2
					Escribir "Resultado: ", resultado
				SiNo
					Escribir "No se puede dividir entre cero"
				FinSi
				
			5:
				Escribir "Tamano de matriz:"
				Leer n
				
				suma <- 0
				
				Para i <- 1 Hasta n Hacer
					Para j <- 1 Hasta n Hacer
						
						Leer matriz1[i,j]
						
						suma <- suma + matriz1[i,j]
						
					FinPara
				FinPara
				
				Escribir "Suma total: ", suma
				
			6:
				Escribir "Tamano de matriz:"
				Leer n
				
				Para i <- 1 Hasta n Hacer
					Para j <- 1 Hasta n Hacer
						Leer matriz1[i,j]
					FinPara
				FinPara
				
				resultado <- matriz1[1,1]
				
				Para i <- 1 Hasta n Hacer
					Para j <- 1 Hasta n Hacer
						
						Si No (i=1 Y j=1) Entonces
							resultado <- resultado - matriz1[i,j]
						FinSi
						
					FinPara
				FinPara
				
				Escribir "Resultado: ", resultado
				
			7:
				Escribir "Filas:"
				Leer filas
				
				Escribir "Columnas:"
				Leer columnas
				
				Para i <- 1 Hasta filas Hacer
					Para j <- 1 Hasta columnas Hacer
						Leer matriz1[i,j]
					FinPara
				FinPara
				
				Para i <- 1 Hasta filas Hacer
					Para j <- 1 Hasta columnas Hacer
						Leer matriz2[i,j]
					FinPara
				FinPara
				
				Para i <- 1 Hasta filas Hacer
					Para j <- 1 Hasta columnas Hacer
						matrizR[i,j] <- matriz1[i,j] + matriz2[i,j]
					FinPara
				FinPara
				
				Para i <- 1 Hasta filas Hacer
					Para j <- 1 Hasta columnas Hacer
						Escribir Sin Saltar matrizR[i,j], " "
					FinPara
					Escribir ""
				FinPara
				
			8:
				Escribir "Filas:"
				Leer filas
				
				Escribir "Columnas:"
				Leer columnas
				
				Para i <- 1 Hasta filas Hacer
					Para j <- 1 Hasta columnas Hacer
						Leer matriz1[i,j]
					FinPara
				FinPara
				
				Para i <- 1 Hasta filas Hacer
					Para j <- 1 Hasta columnas Hacer
						Leer matriz2[i,j]
					FinPara
				FinPara
				
				Para i <- 1 Hasta filas Hacer
					Para j <- 1 Hasta columnas Hacer
						matrizR[i,j] <- matriz1[i,j] - matriz2[i,j]
					FinPara
				FinPara
				
				Para i <- 1 Hasta filas Hacer
					Para j <- 1 Hasta columnas Hacer
						Escribir Sin Saltar matrizR[i,j], " "
					FinPara
					Escribir ""
				FinPara
				
			9:
				Leer n
				
				Para i <- 1 Hasta n Hacer
					
					Para j <- (i*2)-1 Hasta 1 Con Paso -2 Hacer
						Escribir Sin Saltar j, " "
					FinPara
					
					Escribir ""
					
				FinPara
				
			10:
				Leer n
				
				Para i <- 1 Hasta n Hacer
					
					Para j <- 1 Hasta n Hacer
						
						Si i=1 O i=n O j=1 O j=n Entonces
							Escribir Sin Saltar "* "
						SiNo
							Escribir Sin Saltar "  "
						FinSi
						
					FinPara
					
					Escribir ""
					
				FinPara
				
			11:
				
				contador <- 0
				suma <- 0
				
				Escribir "Ingrese numeros (-1 para terminar)"
				
				Repetir
					
					Leer num1
					
					Si num1 <> -1 Entonces
						
						Si contador < 100 Entonces
							
							contador <- contador + 1
							numeros[contador] <- num1
							suma <- suma + num1
							
						FinSi
						
					FinSi
					
				Hasta Que num1 = -1
				
				promedio <- suma / contador
				
				mayor <- numeros[1]
				menor <- numeros[1]
				
				Para i <- 1 Hasta contador Hacer
					
					Si numeros[i] > mayor Entonces
						mayor <- numeros[i]
					FinSi
					
					Si numeros[i] < menor Entonces
						menor <- numeros[i]
					FinSi
					
				FinPara
				
				arriba <- 0
				abajo <- 0
				
				Para i <- 1 Hasta contador Hacer
					
					Si numeros[i] > promedio Entonces
						arriba <- arriba + 1
					FinSi
					
					Si numeros[i] < promedio Entonces
						abajo <- abajo + 1
					FinSi
					
				FinPara
				
				Escribir "Suma: ", suma
				Escribir "Promedio: ", promedio
				Escribir "Mayor: ", mayor
				Escribir "Menor: ", menor
				Escribir "Arriba promedio: ", arriba
				Escribir "Abajo promedio: ", abajo
				
		FinSegun
		
	Hasta Que opcion = 0
	
FinAlgoritmo

