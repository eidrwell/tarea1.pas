procedure readAndHashLn(semilla, paso, N : Natural; var codigo : Natural);
	var entrada: char;
begin
	//Iniciamos 'codigo' con el valor semilla.
	codigo := semilla;
	//Leemos de la entrada las claves de acceso
	read(entrada);
	//Realizamos bucle mientras las claves no llegen al punto.
	while entrada <> '.' do
	begin
		//Realizamos el algoritmo de hash
		codigo := (codigo * paso + ord(entrada)) mod N;
		//Y continuamos leyendo de la entrada cada caracter.
		read(entrada);
	end;
		//Leemos de la entrada para evitar optener algun valor erroneo como algun espacio u otra cosa.
	readln();
end;

procedure login(codigo : Natural; intentos : integer; var ok : boolean);
	var i: integer;aux:Natural;
begin
	//Iniciamos la variable 'i' con el  valor de 1.
	i := 1;
	//Asignamos a la varible 'aux' el valor de la varible 'codigo'.
	aux := codigo;

	//Realizamos al menos una vez las siguiente comprobaciones.
	repeat
		//Llamamos a nuestro procedimiento//
		readAndHashLn(SEMILLADJB, PASODJB, NDJB,codigo);
		//verificamos que 'codigo' sea igual a 'aux' en caso de ser verdad devolvemos 'ok = true'
		if codigo = aux then
			ok := true
		//en caso de diferencia, llamamos a nuetro procesimiento de fallos.
		else
			begin
				writeFallo(codigo,i,intentos);
				ok := false;
			end;
		//Sumamos a nuetra variable i, su valor mas 1. Asi tenemos un conteo de los intentos realizados.
		i:=1+i;
	//Comprobamos el valor de 'i' y los intentos maximos, y que ya se halla o no logeado exitosamente.
	until (i > intentos) or (ok = true);
end;