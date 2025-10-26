# Пошаговые инструкции для создания Pull Request

## Шаг 1: Откройте терминал/командную строку

Откройте PowerShell или Command Prompt в корневой директории проекта:
```
C:\Users\nazgv\OneDrive\Documents\GitHub\lets-go-programming-v2025-autumn-spbstu-40002\lets-go-programming-v2025-autumn-spbstu-40002
```

## Шаг 2: Выполните команды git

Выполните следующие команды по порядку:

```bash
# 1. Проверить статус
git status

# 2. Добавить все изменения
git add .

# 3. Создать коммит
git commit -m "Fix deprecated imports and add test data for task-3

- Update io/ioutil imports to os package
- Add config.yaml with input/output file paths  
- Add test XML data with currency information
- Add README.md with project documentation
- Add test.go for functionality testing"

# 4. Отправить изменения
git push origin TASK-3
```

## Шаг 3: Создать Pull Request через GitHub

1. Откройте браузер и перейдите на GitHub
2. Найдите репозиторий: `lets-go-programming-v2025-autumn-spbstu-40002`
3. Убедитесь, что вы находитесь на ветке `TASK-3`
4. Нажмите кнопку **"Compare & pull request"** (если она появилась)
5. Или перейдите в раздел **"Pull requests"** и нажмите **"New pull request"**

## Шаг 4: Настройка Pull Request

### Заголовок:
```
Fix deprecated imports and add test data for task-3
```

### Описание:
```markdown
## Изменения

### Исправления
- ✅ Обновлены устаревшие импорты `io/ioutil` на `os` во всех файлах
- ✅ Исправлена совместимость с Go 1.21+

### Добавления
- ✅ Конфигурационный файл `config.yaml`
- ✅ Тестовые данные валют `data/input.xml`
- ✅ Документация проекта `README.md`
- ✅ Тестовый скрипт `test.go`

### Структура проекта
```
task-3/
├── cmd/service/main.go          # Основное приложение
├── internal/
│   ├── config/config.go         # Конфигурация (исправлен)
│   ├── cbr/xml.go              # Парсинг XML (исправлен)
│   ├── convert/convert.go      # Конвертация валют
│   └── output/json.go          # JSON вывод (исправлен)
├── data/
│   └── input.xml               # Тестовые данные валют
├── config.yaml                 # Конфигурация
├── test.go                     # Тестовый скрипт
├── README.md                   # Документация
└── go.mod                      # Go модуль
```

## Тестирование

Для тестирования выполните:
```bash
cd bolatbyek.nazgul/task-3
go run test.go
```

## Функциональность

- Парсинг XML данных о валютах от ЦБ РФ
- Конвертация строковых значений в числовые
- Сортировка валют по убыванию курса
- Сохранение результата в JSON файл
```

### Настройки:
- **Base branch**: `main` или `master` (основная ветка)
- **Compare branch**: `TASK-3` (ваша ветка)
- **Reviewers**: назначьте ревьюеров
- **Labels**: добавьте соответствующие метки

## Шаг 5: Создать Pull Request

Нажмите кнопку **"Create pull request"**

## Проверка

После создания PR проверьте:
- [ ] Все файлы добавлены корректно
- [ ] Коммит создан с правильным сообщением
- [ ] PR создан с правильным заголовком и описанием
- [ ] Назначены ревьюеры
- [ ] Добавлены соответствующие метки

## Альтернативный способ (если команды git не работают)

1. Откройте GitHub Desktop или другой Git GUI
2. Выберите репозиторий
3. Убедитесь, что вы на ветке `TASK-3`
4. Добавьте все изменения
5. Создайте коммит с сообщением выше
6. Отправьте изменения
7. Создайте PR через веб-интерфейс GitHub
