# PowerShell скрипт для создания коммита с исправлениями

Write-Host "🚀 Создание коммита с исправлениями для PR" -ForegroundColor Green

# Переходим в директорию проекта
Set-Location "bolatbyek.nazgul\task-3"

Write-Host "📁 Текущая директория: $(Get-Location)" -ForegroundColor Yellow

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
    Write-Host "Попробуйте создать коммит через GitHub веб-интерфейс" -ForegroundColor Yellow
    exit 1
}

# Добавляем все изменения
Write-Host "`n➕ Добавление изменений..." -ForegroundColor Cyan
try {
    git add .
    Write-Host "Изменения добавлены успешно" -ForegroundColor Green
} catch {
    Write-Host "Ошибка при добавлении изменений: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Попробуйте создать коммит через GitHub веб-интерфейс" -ForegroundColor Yellow
    exit 1
}

# Создаем коммит
Write-Host "`n💾 Создание коммита..." -ForegroundColor Cyan
$commitMessage = "[TASK-3] Fix module imports and update go.mod

- Fix module name in go.mod to match project structure
- Update all import paths to use correct module name
- Ensure all packages can be properly imported
- Fix linting and testing issues"

try {
    git commit -m $commitMessage
    Write-Host "Коммит создан успешно" -ForegroundColor Green
} catch {
    Write-Host "Ошибка при создании коммита: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Попробуйте создать коммит через GitHub веб-интерфейс" -ForegroundColor Yellow
    exit 1
}

# Отправляем изменения
Write-Host "`n📤 Отправка изменений..." -ForegroundColor Cyan
try {
    git push origin TASK-3
    Write-Host "Изменения отправлены успешно" -ForegroundColor Green
} catch {
    Write-Host "Ошибка при отправке изменений: $($_.Exception.Message)" -ForegroundColor Red
    Write-Host "Попробуйте создать коммит через GitHub веб-интерфейс" -ForegroundColor Yellow
    exit 1
}

Write-Host "`n✅ ВСЕ ГОТОВО!" -ForegroundColor Green
Write-Host "PR исправлен и готов к мержу!" -ForegroundColor Yellow
Write-Host "Проверьте статус проверок в GitHub" -ForegroundColor White
