Funcion  compararDiagonalB(matriz,m)
	Definir i, contador Como Entero
	Definir resultado Como Logico
	contador <- m-1 
	Para i<- 0 Hasta m-1 Con Paso 1 Hacer
		si matriz[i,contador] = matriz[0,m-1] Entonces
			resultado <- Verdadero
		SiNo
			resultado <- Falso
			i = m
			Escribir "El GEN Z NO se ha detectado"	
		FinSi
		contador <- contador - 1
	FinPara
	
	Escribir "el resultado del analisis de la antidiagonal es: ", resultado
	si resultado = Verdadero Entonces
		Escribir "El GEN Z SÍ se ha detectado"
	FinSi
Fin Funcion
///++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Funcion resultado <- comparardiagonalA(matriz, m )
	Definir i,j Como Entero
	Definir resultado Como Logico
	// compara diagonal principal
	
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta m-1 Con Paso 1 Hacer
			si i = j Entonces
				si matriz[i,j] = matriz[0,0] Entonces
					resultado <- Verdadero
				SiNo
					resultado <- Falso
					i = m
				FinSi
			FinSi
		Fin Para
	Fin Para
Fin Funcion

///++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Funcion mostrarMatriz(matriz,m)
	Definir i,j Como Entero
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta m-1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz[i,j], "|" 
		Fin Para
		Escribir ""
	Fin Para
FinFuncion
///++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Funcion  llenarMatriz ( muestra,m,matriz Por Referencia )
	Definir i,j, contador Como Entero
	contador = 0
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta m-1 Con Paso 1 Hacer
			matriz[i,j] <- SubCadena(muestra,contador,contador)
			contador = contador + 1
		Fin Para
	FinPara
	mostrarMatriz(matriz,m)
Fin Funcion
///++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Algoritmo integrador4
	Definir muestra, matriz Como Caracter
	Definir tamano_muestra, m Como Entero
	Definir resultado Como Logico
	
	Escribir "Ingrese la muestra:"
	Leer muestra 
	muestra <- Mayusculas(muestra)
	tamano_muestra <- Longitud(muestra)
	Si tamano_muestra <> 9 Y tamano_muestra <> 16 Y tamano_muestra <> 1369 Entonces
		Escribir  ">>>>>>>>>>>>>>>||<<<<<<<<<<<<<<<"
		Escribir  ">>> LA MUESTRA NO ES VALIDA <<<"
		Escribir  ">>>>>>>>>>>>>>>||<<<<<<<<<<<<<<<"
	SiNo
		Escribir  ">>>>>>>>>>>>>>>||<<<<<<<<<<<<<<<"
		Escribir  ">>>   LA MUESTRA ES VALIDA   <<<"
		Escribir  ">>>>>>>>>>>>>>>||<<<<<<<<<<<<<<<"
		m <- raiz(tamano_muestra)
		Dimension matriz[m,m]
		llenarMatriz( muestra, m, matriz)
		resultado <- comparardiagonalA(matriz, m )
		Escribir "el resultado del analisis de la diagonal es: ", resultado
		// comparar diagonal antiprincipal
		Si resultado = Verdadero Entonces
			compararDiagonalB(matriz, m)
		SiNo
			Escribir "El GEN Z NO se ha detectado"
		FinSi
	Fin Si
FinAlgoritmo


