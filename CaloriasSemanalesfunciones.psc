Funcion totalDia <- PedirCaloriasDia(dia)
    Definir comida, i, totalDia Como Real
    totalDia <- 0
    
    Escribir "=== D�a ", dia, " ==="
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese calor�as de la comida ", i, ": "
        Leer comida
        totalDia <- totalDia + comida
    FinPara
FinFuncion

Funcion totalSemana <- SumarSemana
    Definir dia Como Entero
    Definir totalDia, totalSemana Como Real
    totalSemana <- 0
    
    Para dia <- 1 Hasta 7 Con Paso 1 Hacer
        totalDia <- PedirCaloriasDia(dia)
        Escribir "Calor�as totales del d�a ", dia, ": ", totalDia
        totalSemana <- totalSemana + totalDia
    FinPara
FinFuncion

SubProceso MostrarResultado(totalSemana)
    Escribir "--------------------------------"
    Escribir "Calor�as totales consumidas en la semana: ", totalSemana
    Escribir "--------------------------------"
FinSubProceso

Algoritmo CaloriasSemanales
    Definir totalSemana Como Real
    
    // 1) Calcular total semanal
    totalSemana <- SumarSemana()
    
    // 2) Mostrar resultado
    MostrarResultado(totalSemana)
FinAlgoritmo
