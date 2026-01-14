Flutter Recipes Clean Streams

Flutter Recipes Clean Streams es una aplicación de recetas completa y profesional, desarrollada con Arquitectura Limpia (Clean Architecture) y patrón MVVM, utilizando Streams para una interfaz reactiva, escalable y modular.

🏠 Descripción

Al abrir la aplicación, se cargan automáticamente recetas aleatorias que puedes explorar.
También incluye un buscador de recetas, que permite consultar cualquier receta disponible en la API de Spoonacular.

Dentro de cada receta, el usuario puede acceder a información detallada:

Ingredientes

Preparación paso a paso

Información nutricional

✨ Funcionalidades Clave

Carga automática de recetas aleatorias al iniciar la app

Búsqueda avanzada de recetas por nombre

Visualización completa de cada receta

Interfaz reactiva gracias a Streams

Arquitectura escalable y modular (Clean Architecture + MVVM)

⚙️ Notas Técnicas

API utilizada: Spoonacular (requiere apiKey)

Patrón de arquitectura: MVVM con Clean Architecture

Interfaz: Reactiva con Streams

Versión de Flutter: 3.8.6

🚀 Cómo Ejecutar

Clonar el repositorio:

git clone https://github.com/tu_usuario/flutter_recipes_clean_streams.git


Entrar al proyecto:

cd flutter_recipes_clean_streams


Instalar dependencias:

flutter pub get


Ejecutar en un emulador o dispositivo físico:

flutter run

📂 Estructura del Proyecto (Resumen)

data/ → Modelos y acceso a la API

domain/ → Entidades y casos de uso

presentation/ → UI, ViewModels y Streams
