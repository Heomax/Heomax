#HeoTag

Instalar RVM

https://rvm.io/rvm/install

para windows si no funciona lo que figura en la pagina usar chocolatey (https://chocolatey.org/)

una ves instalado

hay que crear el gemset que es basicamente la librerias de ruby a usar en la app 
 
en la ruta de la aplicacion ponen en la consola.

`rvm install 2.4.1`

`rvm use 2.4.1@heotag --create` 
heotag es simbolico se puede poner el nombre que quieran

bueno eso crea el gemset

despues de creado basta con poner para usar ese gemset 
`rvm use 2.4.1@heotag`

hecho eso hay que instalar el manejador de paquetes

`gem install bunlder`

luego instalar las librerias

`bundle install`

hecho eso hay que crear las bases de datos

`rake db:create`

una ves hecho esto hay que correr las migraciones (que son basicamente las tablas y las modificaciones sobre ellas)

`rake db:migrate`

una ves terminado eso para levantar el server es 
`rails s` o `rails server`
