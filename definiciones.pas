const
   MAXINTENTO = 3;      { máximo número de intentos }
   SEMILLADJB = 5381;   { semilla para función de hash jdb2 }
   PASODJB    = 33;     { paso para función de hash jdb2 }
   NDJB       = maxint; { cota de la función de hash }

type
   Natural = QWord; { tipo de los naturales }


{ Procedimiento que escribe en la salida estándar el mensaje de
  intento fallido. Los parámetros son:
  - codigo: el código de hash de la contraseña ingresada
  - intento: el intento actual
  - intentos: el número máximo de intentos permitidos }
procedure writeFallo(codigo : Natural; intento, intentos : integer);
begin
   writeLn('Intento de login fallido (',intento:1,' de ',intentos:1,')');
   writeLn('Hash: ', codigo:1)
end;
