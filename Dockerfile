# Utiliza una imagen base que incluya Python y OpenCV
FROM python:3.9.0

# Instala las dependencias
RUN apt-get update && apt-get install -y libgl1-mesa-glx

# Configura el directorio de trabajo
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . .

# Instala las bibliotecas de Python
RUN pip install -r requirements.txt

# Ejecuta tu aplicación Flask
CMD ["sh", "-c", "python main.py &" ]

