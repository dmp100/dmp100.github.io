#!/bin/bash

echo "🧹 Jekyll 클린 빌드 시작..."

# 기존 _site 폴더 제거
if [ -d "_site" ]; then
    echo "📁 기존 _site 폴더 제거 중..."
    rm -rf _site
fi

# Jekyll 캐시 제거
if [ -d ".jekyll-cache" ]; then
    echo "🗑️  Jekyll 캐시 제거 중..."
    rm -rf .jekyll-cache
fi

echo "🔨 Production 환경으로 Jekyll 빌드 시작..."

# Production 환경으로 빌드
JEKYLL_ENV=production bundle exec jekyll build

echo "✅ 빌드 완료!"
echo "🔍 sitemap.xml 확인:"
cat _site/sitemap.xml

echo ""
echo "📝 다음 단계:"
echo "1. git add ."
echo "2. git commit -m 'Fix sitemap.xml - exclude Google verification file'"
echo "3. git push"
echo "4. Google Search Console에서 sitemap 재제출"
