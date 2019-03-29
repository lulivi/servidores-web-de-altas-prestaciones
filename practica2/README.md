# Práctica 2: Clonar la información de un sitio web

Integrantes del grupo:

- Jorge Palma Ramirez
- Luis Liñán Villafranca

En esta práctica se desarrollará un método de clonado automático de datos entre
máquinas virtuales.

## Prueba de envío de archivos através de ssh

1. <span style="color:purple">[Recuadro Morado]</span> El primer paso es obtener la dirección ip de la máquina
   2 para poder conectarnos desde la otra máquina.

2. <span style="color:blue">[Recuadro Azul]</span> En la máquina 1, creamos una serie de archivos en un
   directorio para hacer la prueba y ejecutamos el comando de creación de un
   tar y lo enviamos por ssh como se muestra en el recuadro azul.

4. <span style="color:green">[Recuadro Verde]</span> Finalmente, se observa la correcta funcionalidad del
   traspaso al descomprimir el archivo tar.

![](./img/p2_u1_ssh_u2.png)

## Clonado de carpetas entre máquinas

1. <span style="color:purple">[Recuadro Morado]</span> Primero obtenemos la ip de la máquina de donde vamos a
   obtener los datos y mostramos el contenido de la carpeta a sincronizar.

2. <span style="color:blue">[Recuadro Azul]</span> Observamos en la máquina 1 que no disponemos de los archivos
   que se encuentran en la máquina 2.

3. <span style="color:green">[Recadro Verde]</span> Ejecutamos el comando de rsync con algunas opciones y vemos
   que se sincroniza correctamente el directorio elegido.

![](./img/p2_u2_rsync_u1.png)

## Conexión ssh sin contraseña

1. <span style="color:purple">[Recuadro Morado]</span> Mostramos la ip de la máquina la que nos queremos conectar
   sin necesidad de contraseña. También, enseñamos la salida de un comando
   ejecutado en la propia máquina.

2. <span style="color:blue">[Recuadro Azul]</span> Al intentar hacer ssh en la otra máquina, se nos conecta sin
   pedir contraseña. Si nos salimos de la conexión ssh y ejecutamos un comando
   (se puede comparar con el ejecutado en el punto anterior), sigue sin pedir
   contraseña, y la salida es la misma.

![](./img/p2_u2_ssh_u1_no_password.png)

## Tarea cron de sincronización

1. Primero creamos una tarea cron de sincronización para que se ejecute cada
   minuto.

![](./img/p2_u2_cron_rsync.png)

2. <span style="color:purple">[Recuadro Morado]</span> Observamos la diferencia entre las dos carpetas que
   queremos sincronizar.

3. <span style="color:blue">[Recuadro Azul]</span> Una vez ejecutada la tarea cron, observamos que
   efectivamente, se sincronizan satisfactoriamente las carpetas.

![](./img/p2_u2_cron_rsync_validation.png)
