# Usa una imagen base de Python
FROM python:alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de requisitos y el código fuente al contenedor
COPY requirements.txt requirements.txt
COPY . .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expon el puerto en el que Flask correrá
EXPOSE 8000

# Establece la variable de entorno para el entorno de Flask
ENV FLASK_APP=src/app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Comando para ejecutar la aplicación
CMD ["flask", "run"]