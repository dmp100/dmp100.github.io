#!/bin/bash

echo "📋 현재 Git 상태 확인"
git status

echo ""
echo "🔧 해결 단계:"
echo "1. rm -rf _site .jekyll-cache"
echo "2. JEKYLL_ENV=production bundle exec jekyll build" 
echo "3. git add ."
echo "4. git commit -m 'Fix sitemap.xml - exclude Google verification file'"
echo "5. git push"
echo "6. Google Search Console에서 sitemap 재제출"

echo ""
echo "📝 수정 내용:"
echo "- _config.yml에 exclude 설정 추가"
echo "- google2b89ef6982bc2057.html 파일을 sitemap에서 제외"
echo "- & 문자가 포함된 잘못된 빌드 파일 제거"
