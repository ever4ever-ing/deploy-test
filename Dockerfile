# Usa la imagen oficial de Python 3.12.7 desde Docker Hub
FROM python:3.12.7-slim
# Establece el directorio de trabajo en el contenedor
WORKDIR /app
# Copia el archivo requirements.txt y instala las dependencias
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
# Copia el resto de los archivos de tu aplicación
COPY . .
# Expone el puerto 80 en el que se ejecutará tu aplicación Flask
EXPOSE 80
# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]