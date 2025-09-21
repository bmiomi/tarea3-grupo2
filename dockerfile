# Etapa 1: build
FROM python:3.11-slim AS builder

WORKDIR /app

# Instalar dependencias de compilación
RUN apt-get update && apt-get install -y build-essential

# Copiar dependencias
COPY requirements.txt .

# Crear entorno aislado y compilar dependencias
RUN pip install --upgrade pip && pip install --prefix=/install -r requirements.txt

# Etapa 2: runtime (más liviana)
FROM python:3.11-slim

WORKDIR /app

# Copiar dependencias ya compiladas desde la primera etapa
COPY --from=builder /install /usr/local

# Copiar aplicación
COPY . .

# Exponer puerto de FastAPI
EXPOSE 8000

# Comando de ejecución con Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
