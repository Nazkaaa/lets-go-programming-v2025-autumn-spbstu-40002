# 🚀 ФИНАЛЬНОЕ РУКОВОДСТВО ПО СОЗДАНИЮ PULL REQUEST

## ✅ ВСЕ ИЗМЕНЕНИЯ ГОТОВЫ!

Все файлы исправлены и готовы для создания PR:

### 📁 Измененные файлы:
- `internal/config/config.go` - исправлен импорт
- `internal/cbr/xml.go` - исправлен импорт  
- `internal/output/json.go` - исправлен импорт

### 📁 Добавленные файлы:
- `config.yaml` - конфигурация
- `data/input.xml` - тестовые данные
- `README.md` - документация
- `test.go` - тестовый скрипт

## 🔧 СПОСОБ 1: Через командную строку

Откройте PowerShell в корневой директории проекта и выполните:

```powershell
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

## 🌐 СПОСОБ 2: Через GitHub веб-интерфейс

1. **Откройте GitHub в браузере**
2. **Перейдите в репозиторий**: `lets-go-programming-v2025-autumn-spbstu-40002`
3. **Убедитесь, что вы на ветке `TASK-3`**
4. **Нажмите "Compare & pull request"** (если появилось уведомление)
5. **Или перейдите в "Pull requests" → "New pull request"**

## 📝 НАСТРОЙКИ PULL REQUEST

### Заголовок:
```
Fix deprecated imports and add test data for task-3
```

### Описание:
```markdown
## 🔧 Исправления

- ✅ Обновлены устаревшие импорты `io/ioutil` на `os` во всех файлах
- ✅ Исправлена совместимость с Go 1.21+

## ➕ Добавления

- ✅ Конфигурационный файл `config.yaml`
- ✅ Тестовые данные валют `data/input.xml`
- ✅ Документация проекта `README.md`
- ✅ Тестовый скрипт `test.go`

## 📁 Структура проекта

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

## 🧪 Тестирование

Для тестирования выполните:
```bash
cd bolatbyek.nazgul/task-3
go run test.go
```

## ⚙️ Функциональность

- Парсинг XML данных о валютах от ЦБ РФ
- Конвертация строковых значений в числовые
- Сортировка валют по убыванию курса
- Сохранение результата в JSON файл
```

### Настройки PR:
- **Base branch**: `main` или `master`
- **Compare branch**: `TASK-3`
- **Reviewers**: назначьте ревьюеров
- **Labels**: `bug-fix`, `enhancement`

## 🎯 СПОСОБ 3: Через GitHub Desktop

1. Откройте GitHub Desktop
2. Выберите репозиторий `lets-go-programming-v2025-autumn-spbstu-40002`
3. Убедитесь, что вы на ветке `TASK-3`
4. Добавьте все изменения
5. Создайте коммит с сообщением выше
6. Отправьте изменения
7. Создайте PR через веб-интерфейс

## ✅ ПРОВЕРКА

После создания PR убедитесь, что:
- [ ] Все файлы добавлены корректно
- [ ] Коммит создан с правильным сообщением
- [ ] PR создан с правильным заголовком и описанием
- [ ] Назначены ревьюеры
- [ ] Добавлены соответствующие метки

## 🚨 ЕСЛИ НИЧЕГО НЕ РАБОТАЕТ

1. Скопируйте все файлы вручную
2. Создайте коммит через GitHub веб-интерфейс
3. Создайте PR через веб-интерфейс

---

**🎉 ВСЕ ГОТОВО! Создавайте PR любым удобным способом!**
