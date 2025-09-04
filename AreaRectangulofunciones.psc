Funcion base <- PedirBase
    Definir base Como Real
    Escribir "Ingrese la base del rect�ngulo: "
    Leer base
FinFuncion

Funcion altura <- PedirAltura
    Definir altura Como Real
    Escribir "Ingrese la altura del rect�ngulo: "
    Leer altura
FinFuncion

Funcion area <- CalcularArea(base, altura)
    Definir area Como Real
    area <- base * altura
    Escribir "El �rea del rect�ngulo es: ", area
    Escribir "--------------------------------"
FinFuncion

Algoritmo AreaRectangulo
    Definir base, altura, area Como Real
    
    // 1) Pedir datos
    base <- PedirBase()
    altura <- PedirAltura()
    
    // 2) Calcular y mostrar �rea
    area <- CalcularArea(base, altura)
FinAlgoritmo
