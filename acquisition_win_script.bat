@echo off
md Evidencias
echo *Extrayendo Fecha y Hora del sistema*
echo Fecha y Hora del Sistema Actual: %TIME% %DATE% > Evidencias/"Fecha y hora sistema-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *ExtrayendoIp de todos los dispositivos de red del sistema*
ipconfig /all > Evidencias/"IPDispositivos-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Extrayendo Cache dns*
ipconfig /displaydns > Evidencias/"CacheDNS-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Extrayendo Conexiones establecidas*
netstat -ano > Evidencias/"Conexiones Establecidas-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Extrayendo Conexiones netbios establecidas*
nbtstat -S > Evidencias/"Conexiones netbios-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Tabla de enrutamiento*
netstat -r > Evidencias/"TablaEnrutamiento-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Guardar fichero hosts*
type c:\windows\system32\drivers\etc\hosts > Evidencias/"FicheroHosts-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Perfiles wifi almacenados (comando netsh)*
netsh wlan export profile > Evidencias/"PerfilesWifi-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Lista de unidades mapeadas (net use)*
net use > Evidencias/"UnidadesMapeadas-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Listado de directorios de c:\  ordenados por fecha de modificacion*
Dir C:\ /o:-d > Evidencias/"ListDirectorioFechaMod-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Listado de directorios de c:\ ordenados por fecha de ultimo acceso*
Dir C:\ /t:a > Evidencias/"ListDirectorioFechaAcceso-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Listado de directorios de c:\ ordenados por fecha de creacion*
Dir C:\ /t:c > Evidencias/"ListDirectoriosFechaCreación-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo *Extrayendo Lista de aplicaciones con puertos abiertos*
netstat -a > Evidencias/"AplicacionesPortAbiertos-%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%.txt"
echo. 
echo Triage Finalizado ya puedes consultar los archivos con la informacion recogida!
pause