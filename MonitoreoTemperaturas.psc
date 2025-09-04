Funcion habitaciones <- PedirCantidad
    Definir habitaciones Como Entero
    Escribir "Ingrese la cantidad de habitaciones a evaluar: "
    Leer habitaciones
FinFuncion

Funcion min <- PedirMinimo
    Definir min Como Real
    Escribir "Ingrese la temperatura mínima permitida: "
    Leer min
FinFuncion

Funcion max <- PedirMaximo
    Definir max Como Real
    Escribir "Ingrese la temperatura máxima permitida: "
    Leer max
FinFuncion

Funcion alertas <- EvaluarHabitaciones(habitaciones, min, max)
    Definir i Como Entero
    Definir temp Como Real
    Definir alertas Como Entero
    
    alertas <- 0
    
    Para i <- 1 Hasta habitaciones Con Paso 1 Hacer
        Escribir "Ingrese la temperatura de la habitación ", i, ": "
        Leer temp
        
        Si temp < min O temp > max Entonces
            Escribir "?? ALERTA: La temperatura de la habitación ", i, " está fuera de rango!"
            alertas <- alertas + 1
        Sino
            Escribir "? Habitación ", i, ": Temperatura normal."
        FinSi
    FinPara
FinFuncion

SubProceso MostrarResultado(alertas)
    Escribir "--------------------------------"
    Escribir "Cantidad de habitaciones con ALERTA: ", alertas
    Escribir "--------------------------------"
FinSubProceso


Algoritmo MonitoreoTemperaturas
    Definir habitaciones Como Entero
    Definir minimo, maximo Como Real
    Definir alertas Como Entero
    
    // 1) Pedir datos
    habitaciones <- PedirCantidad
    minimo <- PedirMinimo
    maximo <- PedirMaximo
    
    // 2) Evaluar habitaciones
    alertas <- EvaluarHabitaciones(habitaciones, minimo, maximo)
    
    // 3) Mostrar resultado
    MostrarResultado(alertas)
FinAlgoritmo
