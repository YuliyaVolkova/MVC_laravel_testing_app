Тестовое задание на PHP для компании "Волекс": "мини приложение на php для тестирования (использовала фреймворк Laravel)"
================================================================================

*Выполнила*:  Волкова Юлия

Задание:
========
 Должны быть страница формы теста  и страница с просмотром вариантов ответов.
 
 Страница с формой:
 
 На странице расположена форма из трёх вопросов с 5 вариантами ответа.
 Чекбоксы , радио кнопки, текстовые полем(вариантами ответа) и т.д.. 
 Пользователь заполняет форму нажимает кнопку отправить для получения 
 результатов тестирования.
 Форма сохраняется в базе данных (Необходимо предусмотреть сохранение всех результатов теста)
 
 Страница с вариантами ответов:
 
 Показывается общая статистика по всем заполненным формам.
 Статистика должна выводится в удобочитаемом виде, как можно больше информации
  должно быть показано. 
 Проект должен быть масштабируемым, т.е. он должен правильно работать как с
  одним вопросом и одним ответом на него, так и с сотней вопросов и различным
   количеством ответов в каждом из них. 
 
 В проекте  желательно реализовать шаблон MVC. Данные для теста должны
  храниться в БД. За основу макета страницы можно взять(но не обязательно)
   следующий шаблон http://mybootstrap.ru/examples/marketing-narrow.html и
    использовать в проекте типовые элементы шаблона (кнопки, шрифты, чекбоксы, заголовки,
    поля для ввода текста http://mybootstrap.ru/base-css/). 

### Main Setup
===============

``` console
# install dependencies
composer install
```

Configuration
=============

Перед запуском проекта нужно поменять настройки в файле .env.example (доступ к бд на свои) и переименовать файл
в: .env

Дамп базы данных приложен в директории database/.
Или же можно использовать консоль Laravel для создания таблиц и заполнения
их фейковыми данными:

Для создания таблиц: php artisan migrate

Для заполнения фейковыми данными: php artisan db:seed

==========================================================

Для запуска проекта в консоли: php artisan serve

запустит проект на порту:8000

Страница тестирования - корневая,
Страница результатов доступна по ссылке: /path/to/<host_name>/result
или по ссылке с страницы тестирования

=================================================================================
Обработка формы тестирования реализована ajax - запросами.

Добрый день, Наталья.

Высылаю выполненное тестовое задание по PHP: мини-app по тестированию пользователей. 
Выполнено в соответствии с заданием, реализован шаблон MVC, использовала фреймворк Laravel, обработку формы сделала через Ajax - запрос .
В приложении архив с работой, gmail  заблокировал, описание: readme.md.
Скриншоты работающего приложения:
http://joxi.net/ZrJ9DENt960wjA
http://joxi.net/YmEBEq8i03aw82
http://joxi.net/4AknbZvUyRBoJ2

С уважением, Юлия Волкова
