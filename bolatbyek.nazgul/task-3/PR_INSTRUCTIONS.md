# Инструкции для создания Pull Request

## Изменения в проекте

### Исправленные файлы:
1. **internal/config/config.go** - обновлен устаревший импорт `io/ioutil` на `os`
2. **internal/cbr/xml.go** - обновлен устаревший импорт `io/ioutil` на `os`
3. **internal/output/json.go** - обновлен устаревший импорт `io/ioutil` на `os`

### Добавленные файлы:
1. **config.yaml** - конфигурационный файл с настройками входного и выходного файлов
2. **data/input.xml** - тестовый XML файл с данными валют от ЦБ РФ
3. **README.md** - документация проекта
4. **test.go** - тестовый скрипт для проверки функциональности

## Команды для создания PR:

```bash
# 1. Добавить все изменения
git add .

# 2. Создать коммит
git commit -m "Fix deprecated imports and add test data for task-3

- Update io/ioutil imports to os package
- Add config.yaml with input/output file paths
- Add test XML data with currency information
- Add README.md with project documentation
- Add test.go for functionality testing"

# 3. Отправить изменения
git push origin TASK-3

# 4. Создать Pull Request через GitHub веб-интерфейс
```

## Описание Pull Request:

**Заголовок:** `Fix deprecated imports and add test data for task-3`

**Описание:**
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

## Следующие шаги:

1. Выполните команды git выше
2. Перейдите на GitHub в репозиторий
3. Создайте Pull Request с заголовком и описанием выше
4. Назначьте ревьюеров
5. Дождитесь одобрения и мержа
