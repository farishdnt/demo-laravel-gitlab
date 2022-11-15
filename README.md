## how to run this app

### $ sudo cp env.example .env
### setelah itu edit file envnya
### $ sudo vim .env
### Edit di bagian ini 

# SEBELUM
#### DB_CONNECTION=mysql
#### DB_HOST=127.0.0.1
#### DB_PORT=3306
#### DB_DATABASE=laravel
#### DB_USERNAME=root
#### DB_PASSWORD=


# SESUDAH
#### DB_CONNECTION=mysql
#### DB_HOST=localhost
#### DB_PORT=3309
#### DB_DATABASE=demo
#### DB_USERNAME=root
#### DB_PASSWORD=password

#### kemudian jalan
#### $ sudo php artisan serve