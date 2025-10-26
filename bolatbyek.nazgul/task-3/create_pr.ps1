# PowerShell скрипт для создания Pull Request

Write-Host "🚀 Создание Pull Request для task-3" -ForegroundColor Green

# Проверяем, что мы в правильной директории
$currentPath = Get-Location
Write-Host "Текущая директория: $currentPath" -ForegroundColor Yellow

# Проверяем статус git
Write-Host "`n📋 Проверка статуса git..." -ForegroundColor Cyan
try {
    $gitStatus = git status --porcelain
    if ($gitStatus) {
        Write-Host "Найдены изменения:" -ForegroundColor Yellow
        Write-Host $gitStatus
    } else {
        Write-Host "Нет изменений для коммита" -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host "Ошибка при проверке git статуса: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# Добавляем все изменения
Write-Host "`n➕ Добавление изменений..." -ForegroundColor Cyan
try {
    git add .
    Write-Host "Изменения добавлены успешно" -ForegroundColor Green
} catch {
    Write-Host "Ошибка при добавлении изменений: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# Создаем коммит
Write-Host "`n💾 Создание коммита..." -ForegroundColor Cyan
$commitMessage = @"
Fix deprecated imports and add test data for task-3

- Update io/ioutil imports to os package
- Add config.yaml with input/output file paths
- Add test XML data with currency information
- Add README.md with project documentation
- Add test.go for functionality testing
"@

try {
    git commit -m $commitMessage
    Write-Host "Коммит создан успешно" -ForegroundColor Green
} catch {
    Write-Host "Ошибка при создании коммита: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# Отправляем изменения
Write-Host "`n📤 Отправка изменений..." -ForegroundColor Cyan
try {
    git push origin TASK-3
    Write-Host "Изменения отправлены успешно" -ForegroundColor Green
} catch {
    Write-Host "Ошибка при отправке изменений: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

Write-Host "`n✅ Все готово!" -ForegroundColor Green
Write-Host "Теперь перейдите на GitHub и создайте Pull Request:" -ForegroundColor Yellow
Write-Host "1. Откройте репозиторий в браузере" -ForegroundColor White
Write-Host "2. Нажмите 'Compare & pull request'" -ForegroundColor White
Write-Host "3. Заполните заголовок и описание" -ForegroundColor White
Write-Host "4. Создайте Pull Request" -ForegroundColor White

Write-Host "`n📝 Заголовок PR:" -ForegroundColor Cyan
Write-Host "Fix deprecated imports and add test data for task-3" -ForegroundColor White

Write-Host "`n📄 Описание PR:" -ForegroundColor Cyan
Write-Host "См. файл FINAL_PR_GUIDE.md для полного описания" -ForegroundColor White
