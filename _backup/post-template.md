# 블로그 포스트 Front Matter 템플릿

## 기본 템플릿 (필수 속성만)
```yaml
---
layout: post
title: "포스트 제목"
description: "포스트에 대한 간단한 설명 (SEO와 소셜 미디어용)"
date: YYYY-MM-DD
image: /assets/images/YYYY-MM-DD-image-name.png
---
```

## 확장 템플릿 (선택적 속성 포함)
```yaml
---
layout: post
title: "포스트 제목"
description: "포스트에 대한 간단한 설명 (SEO와 소셜 미디어용)"
date: YYYY-MM-DD
image: /assets/images/YYYY-MM-DD-image-name.png
lang: ko-KR
---
```

## 각 속성 설명

### 필수 속성
- `layout: post` - 포스트 레이아웃 지정
- `title` - 포스트 제목 (SEO title 태그로 사용)
- `description` - SEO 메타 description, Open Graph description
- `date` - 포스트 작성일 (YYYY-MM-DD 형식)
- `image` - 소셜 미디어 공유 시 표시될 이미지

### 선택적 속성
- `lang` - 특정 포스트의 언어 설정 (기본값: ko-KR)

## 실제 사용 예시

### 개발 관련 포스트
```yaml
---
layout: post
title: "Jekyll 블로그 커스터마이징 가이드"
description: "Jekyll 블로그를 커스터마이징하는 방법과 유용한 팁들을 정리합니다."
date: 2025-07-23
image: /assets/images/2025-07-23-jekyll-customizing.png
project: "service-platform"
---
```

### 개인 노트/생각 정리
```yaml
---
layout: post
title: "최근 개발하면서 느낀 점들"
description: "개발을 하면서 배운 것들과 앞으로의 계획에 대한 개인적인 생각을 정리합니다."
date: 2025-07-23
image: /assets/images/2025-07-23-development-thoughts.png
---
```

## 주의사항

1. **이미지 경로**: `/assets/images/` 폴더에 이미지 파일을 저장하고 올바른 경로 사용
2. **날짜 형식**: YYYY-MM-DD 형식 엄수
3. **설명 길이**: description은 150-160자 이내 권장 (SEO 최적화)
4. **제목**: 한글과 영문 모두 가능, 따옴표로 감싸기

## 제거된 속성들 (사용하지 않음)

현재 테마에서 지원하지 않는 속성들:
- `category` - 테마에서 처리하지 않음
- `project` - 사용자 정의 속성, 테마에서 미지원  
- `tags` - 테마에서 표시하지 않음
- `author` - 전역 설정으로 충분함
