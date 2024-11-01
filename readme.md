## Construir imagen

```
docker build -t miapp-holamundo .
```

La opción ```-t``` en el comando docker build se utiliza para etiquetar la imagen Docker que estás construyendo. La etiqueta (tag) es un nombre amigable que puedes usar para referenciar la imagen más fácilmente en lugar de usar el ID de la imagen.
## Crear y ejecutar contenedor
```
docker run -p 5000:5000 miapp-holamundo 
```






``` 
docker stop id_cont
docker rm id_cont
docker images
docker rmi id_img
```

## Running on all addresses (0.0.0.0):

Esto significa que la aplicación Flask está configurada para escuchar en todas las interfaces de red disponibles en el contenedor. La dirección 0.0.0.0 es una dirección especial que indica que la aplicación aceptará conexiones en cualquier dirección IP asignada al contenedor.
## Running on http://127.0.0.1:5000:

127.0.0.1 es la dirección de loopback (localhost) dentro del contenedor. Esto significa que la aplicación está accesible desde dentro del contenedor en http://127.0.0.1:5000.
## Running on http://172.17.0.2:5000:

172.17.0.2 es la dirección IP asignada al contenedor por Docker en la red bridge predeterminada. Esto significa que la aplicación está accesible desde otras máquinas en la misma red Docker en http://172.17.0.2:5000.

### Gestionar Contenedores

1. **Listar Contenedores en Ejecución:**
   ```sh
   docker ps
   ```

2. **Listar Todos los Contenedores (Incluidos los Detenidos):**
   ```sh
   docker ps -a
   ```

3. **Detener un Contenedor:**
   ```sh
   docker stop container_id
   ```
   - `container_id`: ID del contenedor que deseas detener. Puedes obtenerlo con `docker ps`.

4. **Eliminar un Contenedor:**
   ```sh
   docker rm container_id
   ```
   - `container_id`: ID del contenedor que deseas eliminar. Puedes obtenerlo con `docker ps -a`.

### Gestionar Imágenes

1. **Listar Imágenes:**
   ```sh
   docker images
   ```

2. **Eliminar una Imagen:**
   ```sh
   docker rmi image_id
   ```
   - `image_id`: ID de la imagen que deseas eliminar. Puedes obtenerlo con `docker images`.

### Limpiar Recursos

1. **Eliminar Todos los Contenedores Detenidos:**
   ```sh
   docker container prune
   ```

2. **Eliminar Todas las Imágenes No Utilizadas:**
   ```sh
   docker image prune
   ```

3. **Eliminar Todos los Volúmenes No Utilizados:**
   ```sh
   docker volume prune
   ```

4. **Eliminar Todos los Recursos No Utilizados (Contenedores, Imágenes, Volúmenes, Redes):**
   ```sh
   docker system prune -a --volumes
   ```

### Ver Logs y Acceder a Contenedores

1. **Ver Logs de un Contenedor:**
   ```sh
   docker logs container_id
   ```

2. **Acceder a un Contenedor en Ejecución:**
   ```sh
   docker exec -it container_id /bin/bash
   ```
   - `-it`: Ejecuta el contenedor en modo interactivo con una terminal.
   - `/bin/bash`: Abre una sesión de bash en el contenedor.

### Ejemplo Completo

1. **Construir la Imagen:**
   ```sh
   docker build -t miapp-holamundo .
   ```

2. **Ejecutar el Contenedor:**
   ```sh
   docker run -d -p 5000:5000 miapp-holamundo
   ```

3. **Listar Contenedores:**
   ```sh
   docker ps
   ```

4. **Ver Logs del Contenedor:**
   ```sh
   docker logs container_id
   ```

5. **Detener el Contenedor:**
   ```sh
   docker stop container_id
   ```

6. **Eliminar el Contenedor:**
   ```sh
   docker rm container_id
   ```

7. **Eliminar la Imagen:**
   ```sh
   docker rmi miapp-holamundo
   ```

Estos comandos te proporcionan una base sólida para trabajar con Docker en tus proyectos.