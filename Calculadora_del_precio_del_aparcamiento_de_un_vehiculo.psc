Proceso Calculadora_del_precio_del_aparcamiento_de_un_vehiculo
Definir placa Como Caracter
Definir h,m,minutos,tipo_vehiculo Como Entero
Definir costo,dscto,tiempo_horas,total,total_neto Como Real
Escribir "ingresar placa del vehiculo: "
leer placa
Repetir
	Escribir "ingresar tiempo aparcado en minutos: "
	leer minutos
	si minutos <= 0 Entonces
		Escribir "dato incorrecto, intente con un valor positivo"
	FinSi
Hasta Que minutos > 0
Repetir
	Escribir "ingresar tipo de vehiculo: "
	Escribir "1. Motocicleta"
	Escribir "2. Mototaxi"
	Escribir "3. Auto"
	Escribir "4. Camioneta"
	Escribir "5. Camión"
	leer tipo_vehiculo
	si tipo_vehiculo < 1 o tipo_vehiculo > 5 Entonces
		Escribir "opción inválida, intente de nuevo"
	FinSi
Hasta Que tipo_vehiculo >= 1 y tipo_vehiculo <= 5
segun tipo_vehiculo Hacer
	1: costo <- 0.10
	2: costo <- 0.20
	3: costo <- 0.30
	4: costo <- 0.50
	5: costo <- 1.00
FinSegun
total <- costo*minutos
tiempo_horas <- minutos/60
si tiempo_horas > 1 y tiempo_horas <= 2 Entonces
	dscto <- 0.10*total
SiNo
	si tiempo_horas > 2 y tiempo_horas <= 4 Entonces
		dscto <- 0.15*total
	SiNo
		si tiempo_horas > 4 y tiempo_horas <= 6 Entonces
			dscto <- 0.17*total
		SiNo
			dscto <- 0.20*total
		FinSi
	FinSi
FinSi
h <- trunc(minutos/60)
m <- minutos mod 60
total_neto <- total - dscto
Escribir "Placa: ",placa
Escribir "Precio base: S/.",total
Escribir "Descuento: S/.",dscto
Escribir "Precio final: S/.",total_neto
Escribir "Tiempo en horas y minutos: ",h," horas con ",m," minutos"
FinProceso