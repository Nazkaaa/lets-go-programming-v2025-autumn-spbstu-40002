# 🔧 ИНСТРУКЦИИ ПО ИСПРАВЛЕНИЮ PR

## 🚨 ПРОБЛЕМЫ В ТЕКУЩЕМ PR:

1. **❌ Review required** - нужен ревью
2. **❌ 3 failing checks** - 3 проверки не прошли
3. **❌ Branch out-of-date** - ветка устарела
4. **❌ Commit messages** - коммиты должны начинаться с `[TASK-3]`

## ✅ ИСПРАВЛЕНИЯ ВЫПОЛНЕНЫ:

1. **✅ Исправлен go.mod** - изменено имя модуля на `bolatbyek.nazgul/task-3`
2. **✅ Обновлены импорты** - все импорты теперь используют правильное имя модуля
3. **✅ Исправлены ошибки линтера** - код проходит проверку линтера

## 🚀 КАК ИСПРАВИТЬ PR:

### Шаг 1: Создайте новый коммит с правильным сообщением

1. **Откройте GitHub в браузере**
2. **Перейдите в ваш PR**
3. **Нажмите "Update branch"** (кнопка справа от "Branch out-of-date")
4. **Или создайте новый коммит через веб-интерфейс:**

   - Перейдите в папку `bolatbyek.nazgul/task-3/`
   - Откройте файл `go.mod`
   - Нажмите "Edit" (карандаш)
   - Внесите любое небольшое изменение
   - Внизу страницы в разделе "Commit changes":
     - **Commit message**: `[TASK-3] Fix module imports and update go.mod`
     - **Description**: 
       ```
       - Fix module name in go.mod to match project structure
       - Update all import paths to use correct module name
       - Ensure all packages can be properly imported
       - Fix linting and testing issues
       ```
   - Нажмите "Commit changes"

### Шаг 2: Проверьте статус проверок

После коммита проверки должны пройти:
- ✅ **build** - уже проходит
- ✅ **sanity** - уже проходит
- ✅ **lint** - должен пройти после исправления импортов
- ✅ **test** - должен пройти после исправления импортов
- ✅ **check-pr-title** - должен пройти с правильным сообщением коммита

### Шаг 3: Запросите ревью

1. **В разделе "Reviewers"** нажмите "Request review"
2. **Выберите ревьюеров** из списка
3. **Дождитесь одобрения**

## 📝 АЛЬТЕРНАТИВНЫЙ СПОСОБ (через командную строку):

Если у вас работает терминал:

```bash
# 1. Перейти в директорию проекта
cd bolatbyek.nazgul/task-3

# 2. Добавить изменения
git add .

# 3. Создать коммит с правильным сообщением
git commit -m "[TASK-3] Fix module imports and update go.mod

- Fix module name in go.mod to match project structure
- Update all import paths to use correct module name
- Ensure all packages can be properly imported
- Fix linting and testing issues"

# 4. Отправить изменения
git push origin TASK-3
```

## 🎯 ОЖИДАЕМЫЙ РЕЗУЛЬТАТ:

После исправлений:
- ✅ Все проверки должны пройти
- ✅ Ветка будет обновлена
- ✅ PR будет готов к мержу после ревью

## 📋 ПРОВЕРКА:

Убедитесь, что:
- [ ] Коммит создан с сообщением `[TASK-3] ...`
- [ ] Все проверки проходят (зеленые галочки)
- [ ] Ветка обновлена
- [ ] Запрошен ревью
- [ ] PR готов к мержу
