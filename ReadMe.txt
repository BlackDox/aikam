1. Создать схему в MySql: 

CREATE SCHEMA `aikam` DEFAULT CHARACTER SET utf8 ;

2. Скачать файл target/aikamRUN.jar и запустить его;

3. Открыть aikamRUN.jar с помощь WiNRar (или другого архиватора),
 - внутри перейти по пути: "\BOOT-INF\classes",
 - открыть файл "application.properties" с помощью блокнота,
 - исправить в нем настройки базы данных mysql (первые 3 строчки): url, username, password;

4. В браузере перейти на: http://localhost:8888