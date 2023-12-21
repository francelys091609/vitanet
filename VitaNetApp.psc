Proceso VitaNetApp
	Definir opc Como Entero;
	Definir paciente Como Caracter;
	Dimension paciente[3];
	paciente[1]<-"";
	paciente[2]<-"";
	paciente[3]<-"";
	
	Repetir
		Menu();
		Leer opc;
		Segun  opc Hacer
			1:
				Si Longitud(paciente[1])>0 Entonces
					paciente[2]<-ConvertirATexto(redon((calcularIMC*100)*100)/100);
				SiNo
					Imprimir "No hay ningún paciente registrado";
					paciente[1]<-RegistrarPaciente();
				FinSi
			2:
				Si Longitud(paciente[1])>0 Entonces
					paciente[3]<-ConvertirATexto(calcularAgua);
				SiNo
					Imprimir "No hay ningún paciente registrado";
					paciente[1]<-RegistrarPaciente();
				FinSi
			3:
				paciente[1]<-RegistrarPaciente();
			4:
				Si Longitud(paciente[1])>0 Y Longitud(paciente[2])>0 Y Longitud(paciente[3])>0 Entonces
					Imprimir "Paciente: "+paciente[1]+" IMC: "+paciente[2]+" Agua Corporal: "+paciente[3];
				SiNo
					Imprimir "Faltan datos del paciente;"
				FinSi
			0:
				Imprimir "Gracias por usar nuestro sistema."
				
		FinSegun
	Hasta Que opc==0
	
FinProceso


Funcion Menu
	Imprimir "Seleccione una opción del menú:";
	Imprimir "1. Calcular IMC";
	Imprimir "2. Calcular Agua Corporal";
	Imprimir "3. Registrar paciente";
	Imprimir "4. Ver información del paciente";
	Imprimir "0. Salir del sistema";
FinFuncion
Funcion paciente <- RegistrarPaciente 
	Definir Nombre, Apellido, paciente Como Caracter;
	Nombre<-"";
	Apellido<-"";
	Mientras Longitud(Nombre) <3 Hacer
		Imprimir "Ingrese el nombre del paciente";
		Leer Nombre;
	FinMientras
	Mientras Longitud(Apellido) <3 Hacer
		Imprimir "Ingrese el apellido del paciente";
		Leer Apellido;
	FinMientras
	paciente<-Nombre+" " +Apellido;
FinFuncion
Funcion imc<- calcularIMC
	Definir  imc, peso, estatura Como Real;
	peso<-0;
	estatura<-0;
	Mientras peso<1 Hacer
		Imprimir "Ingrese el peso del paciente";
		Leer peso;
	FinMientras
	
	Mientras estatura<1 Hacer
		Imprimir "Ingrese la estatura del paciente";
		Leer estatura;
	FinMientras
	imc<- (peso/(estatura*estatura))*100;
FinFuncion
Funcion agua<- calcularAgua
	Definir  agua, peso Como Real;
	peso<-0;
	Mientras peso<1 Hacer
		Imprimir "Ingrese el peso del paciente";
		Leer peso;
	FinMientras
	agua <-(peso*60)/100;
FinFuncion
	