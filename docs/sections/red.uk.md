# Red `red`

!!! important "Типово ця секція обробляється асинхронно"

!!! info
[**Red**](https://www.red-lang.org/) — це мова програмування наступного покоління, створена під сильним впливом від REBOL.

Секція `red` показує версію Red.

Ця секція показується лише тоді, коли поточна тека знаходиться в проєкті Red, тобто:

- Пошук знаходить `red.rc`, або `redbol` файл
- Поточна тека містить файли `.red` чи `.reds`

## Параметри

| Змінна                 |               Типово               | Опис                                     |
| :--------------------- | :--------------------------------: | ---------------------------------------- |
| `SPACESHIP_RED_SHOW`   |               `true`               | Показувати секцію                        |
| `SPACESHIP_RED_ASYNC`  |               `true`               | Обробляти секцію асинхронно              |
| `SPACESHIP_RED_PREFIX` | `$SPACESHIP_PROMPT_DEFAULT_PREFIX` | Префікс секції                           |
| `SPACESHIP_RED_SUFFIX` | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Суфікс секції                            |
| `SPACESHIP_RED_SYMBOL` |                `🔺·`               | Символ, що показується на початку секції |
| `SPACESHIP_RED_COLOR`  |                `red`               | Колір секції                             |
