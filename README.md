## INTEGRANTES.
| Nombre | Cargo | URL GitHub |
|---|:---:|---:|
| Daniel Alquinga | :technologist: Desarrollador | https://github.com/superdavi/Practica3_Grupo2 |
| Daniel Baldeon | :technologist: Desarrollador | https://github.com/debpdhs/Practica3_Grupo2 |
| Bryan Miño | :technologist: Desarrollador | https://github.com/bmiomi/tarea3-grupo2.git |
| Wilson Segovia | :technologist: Desarrollador | https://github.com/segoviawilson/Practica3_Grupo2.git |
| Leonardo Tuguminago | :technologist: Desarrollador | https://github.com/ltuguminago/fastapi-app.git |

# 1. Análisis de vulnerabilidades con docker scout mediante un flujo de github actions

Con base en el laboratorio de fastapi-app, deberan subir la imagen que le corresponde a su grupo y las aplicaciones a su repositorio de github. Construir la imagen, subir a docker hub y realizar el análisis de vulnerabilidades con docker scout mediante un flujo de github actions.

# 2. Configuración e Instalación

### PASO 1: 📂 Estructura de Archivos

<img width="222" height="185" alt="structura fastapi" src="https://github.com/user-attachments/assets/329d6d04-8b21-431d-94f7-4371d3b6726f" />

### PASO 2: Iniciar sessión en DockerHub y crear repositorio



### PASO 3: En la termina, iniciar sessión con las credenciales de DockerHub

```bash
docker login -u superdavi1411
```

**Salida Esperada**



### PASO 4: Construir imagen de Docker MultiStage

```bash
docker build -t hello-multistage -f Dockerfile .
```

**Salida Esperada**



### PASO 5: Revisamos la imagen construida

```bash
docker images
```

**Salida Esperada**



### PASO 6: Tagear la imagen "usuario_DockerHub/repositorio"

```bash
docker tag hello-multistage:latest superdavi1411/practica3_grupo2:v1
```

**Salida Esperada**



### PASO 7: Subir imagen al DockerHub

```bash
docker push superdavi1411/practica3_grupo2:v1
```

**Salida Esperada**




### PASO 8: Revizar la imagen subida en el repositorio de DockerHub



### PASO 9: Iniciar sessión en GitHub y crear repositorio



### PASO 10: El repositorio debe contener los siguientes archivos



### PASO 11: Ingresar al siguiente directorio

- Setting/secrets and variables/Actions

### PASO 12. Crear las variables con las credenciales deL DockerHub

```bash
DOCKERHUB_USERNAME
DOCKERHUB_TOKEN
```

**Salida Esperada**



### PASO 13: Ingresar al siguiente directorio

- Action/Docker image/ Configure

**Salida Esperada**




### PASO 14: Reemplazar el contenido del workflows actual por el contenido del archivo fastapi.ylm

- Modificar el parametro IMAGE_NAME con el usuario del DockerHub + el nombre del repositorio.

```bash
IMAGE_NAME: superdavi1411/scout
```

- Modificar el parametro push con el valor de true, para que la imagen suba al DockerHub

```bash
push: true
```

- Guardar el archivo con el nombre "scout.yml"




### PASO 15: Ingresar al siguiente directorio "Action", para ver ejecutandose el workflows.



### PASO 16: Terminada la ejecución workflows, finalmente se puede revisar el reporte docker-scout-report, descargando el archivo.



## PASO 17. Visualizar el reporte



## PASO 18. Revisar en DockerHub, la imagen subida.


# 3. Conclusiones

- La implementación de Docker Scout dentro de GitHub Actions permite automatizar completamente el análisis de vulnerabilidades en imágenes Docker, integrando la seguridad directamente en el pipeline de CI/CD.

- Al ejecutar el análisis en cada push al repositorio, se identifica proactivamente vulnerabilidades en etapas tempranas del desarrollo, reduciendo riesgos de seguridad en producción.

- Docker Scout proporciona visibilidad completa sobre las vulnerabilidades en todas las capas de la imagen, facilitando la identificación de dependencias problemáticas en la aplicación FastAPI.

- GitHub Actions proporciona registros detallados de cada ejecución, creando un historial auditable de los estados de seguridad de la aplicación a lo largo del tiempo.

