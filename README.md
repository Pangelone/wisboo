\*API Rest para la gestión de productos y compras.

\*Requisitos
Ruby 2.6.6
Rails 6.0.3
PostgreSQL 12
Bundler 2.1.4

\*Instalación
Instalar las dependencias del proyecto ejecutando bundle install
Crear la base de datos con rails db:create
Ejecutar las migraciones con rails db:migrate
Crear data de prueba rails db:seed
Iniciar el servidor de desarrollo con rails s

\*Endpoints
La API cuenta con los siguientes endpoints:

Productos
GET /products: Obtiene un listado de todos los productos registrados en el sistema.
Ejemplo:
curl -X GET http://localhost:3000/products

GET /products/:id: Obtiene los datos del producto correspondiente al id enviado en los parámetros.
Ejemplo:
curl -X GET http://localhost:3000/products/1

POST /products: Crea un nuevo producto con los datos enviados en el cuerpo de la petición.
Ejemplo
curl -X POST \
 http://localhost:3000/products \
 -H 'Content-Type: application/json' \
 -d '{
"name": "Producto de prueba",
"image": "https://images.com/producto-prueba.jpg",
"price": 99.99
}'

Compras
POST /purchases: Crea una nueva compra con los datos enviados en el cuerpo de la petición.
Ejemplo:
curl -X POST \
 http://localhost:3000/purchases \
 -H 'Content-Type: application/json' \
 -d '{
"product_id": 1,
"quantity": 2,
"user_id: 1"
}'
