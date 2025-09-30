#!/bin/bash

# Быстрый скрипт для коммита и пуша изменений

cd /Users/asselkubasheva/Projects/investudy-roadmap

# Читаем токен
GITHUB_TOKEN=$(cat ~/.github_token)

# Получаем сообщение коммита из аргумента или используем дефолтное
COMMIT_MSG="${1:-Update roadmap}"

echo "📝 Добавляем все изменения..."
/usr/bin/git add .

echo "💾 Создаём коммит: $COMMIT_MSG"
/usr/bin/git commit -m "$COMMIT_MSG"

echo "🚀 Отправляем в GitHub..."
/usr/bin/git push origin main

echo "✅ Изменения успешно отправлены!"
echo "🔗 https://github.com/asselkuba/investudy-roadmap"
