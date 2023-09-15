program principal;

{ Con esta directiva queda incluido el archivo definiciones.pas }
{$INCLUDE definiciones.pas}

{ Con esta directiva queda incluido el archivo tarea1.pas }
{$INCLUDE tarea1.pas}

var
   codigo : Natural;
   ok	  : boolean;

begin
   { registro de usuario }
   writeLn('Registro de Usuario');
   write('Ingrese su contraseña: ');
   readAndHashLn(SEMILLADJB, PASODJB, NDJB, codigo);
   writeLn('Hash: ', codigo:1);

   { login de usuario }
   writeLn('Login de Usuario');
   writeLn('Ingrese su contraseña, tiene hasta ', MAXINTENTO:1,
	   ' intentos.');
   login(codigo, MAXINTENTO, ok);
   if ok then writeLn('Login realizado correctamente.')
         else writeLn('Fuera de aquí!')
   
end.
