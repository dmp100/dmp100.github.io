#!/bin/bash

# 사용법: ./new-category.sh 카테고리명 "카테고리 제목" "설명"

if [ -z "$1" ]; then
  echo "사용법: ./new-category.sh 카테고리명 \"카테고리 제목\" \"설명\""
  exit 1
fi

CATEGORY_SLUG=$1
CATEGORY_TITLE=${2:-$1}
CATEGORY_DESC=${3:-"Posts in $1"}

# 폴더 생성
mkdir -p "_posts/$CATEGORY_SLUG"

# 페이지 생성
cat > "pages/$CATEGORY_SLUG.md" << EOF
---
layout: category
title: "$CATEGORY_TITLE"
category: $CATEGORY_SLUG
description: "$CATEGORY_DESC"
permalink: /$CATEGORY_SLUG/
---
EOF

echo "✅ 카테고리 '$CATEGORY_SLUG' 생성 완료!"
echo "📁 폴더: _posts/$CATEGORY_SLUG/"
echo "📄 페이지: pages/$CATEGORY_SLUG.md"
