#!/bin/bash

cd /Users/asselkubasheva/Projects/investudy-roadmap

# Читаем токен
GITHUB_TOKEN=$(cat ~/.github_token)

echo "🚀 Инициализация Git репозитория..."

# Инициализация
/usr/bin/git init

# Настройка пользователя
/usr/bin/git config user.name "asselkuba"
/usr/bin/git config user.email "asselkubasheva@gmail.com"

# Добавляем файлы
echo "📝 Добавляем файлы..."
/usr/bin/git add .

# Коммит
echo "💾 Создаём коммит..."
/usr/bin/git commit -m "Initial commit: Investudy Roadmap с графиком Ганта"

# Создаём репозиторий на GitHub через API
echo "🌐 Создаём репозиторий на GitHub..."
curl -H "Authorization: token ${GITHUB_TOKEN}" \
     -H "Content-Type: application/json" \
     https://api.github.com/user/repos \
     -d '{
       "name": "investudy-roadmap",
       "description": "Интерактивный график Ганта для проекта Investudy",
       "private": false,
       "auto_init": false
     }'

# Добавляем remote
echo "🔗 Добавляем remote..."
/usr/bin/git remote add origin "https://${GITHUB_TOKEN}@github.com/asselkuba/investudy-roadmap.git"

# Переименовываем ветку в main
/usr/bin/git branch -M main

# Пушим
echo "🚀 Отправляем в GitHub..."
/usr/bin/git push -u origin main

echo "✅ Готово! Репозиторий создан и опубликован!"
echo "🔗 https://github.com/asselkuba/investudy-roadmap"
