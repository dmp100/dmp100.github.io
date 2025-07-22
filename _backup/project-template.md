# 프로젝트 페이지 Front Matter 템플릿

## 기본 템플릿 (필수 속성만)
```yaml
---
layout: project
title: "프로젝트 제목"
description: "프로젝트에 대한 간단한 설명"
project_id: "project-id"
order: 1
---
```

## 확장 템플릿 (모든 기능 포함)
```yaml
---
layout: project
title: "프로젝트 제목"
description: "프로젝트에 대한 상세 설명"
emoji: "💼"  # 또는 icon_image 사용
icon_image: "/assets/images/icons/project-icon.png"  # emoji 대신 사용 가능
project_id: "unique-project-id"
order: 1
demo_url: "https://your-demo-url.com"
github_url: "https://github.com/username/repo"
screenshots:
  - youtube: "VIDEO_ID"
    title: "Live Demo"
    description: "Interactive demo showing key features"
    type: "video"
  - image: "/assets/images/screenshots/screenshot1.png"
    title: "Main Dashboard"
    description: "Overview of the main application interface"
    type: "image"
notion_landing:
  url: "https://notion-page-url.com"
  title: "자세한 내용 보기"
  description: "프로젝트의 상세 정보와 진행 상황을 확인하세요."
  type: "notion"  # notion, landing, docs, website, github, demo 등
---
```

## 각 속성 설명

### 필수 속성
- `layout: project` - 프로젝트 레이아웃 지정
- `title` - 프로젝트 제목
- `description` - 프로젝트 설명
- `project_id` - 유니크한 프로젝트 식별자 (개발 로그 연결용)
- `order` - 홈페이지 프로젝트 목록 표시 순서

### 아이콘 설정 (둘 중 하나)
- `emoji` - 이모지 아이콘 (간단한 방법)
- `icon_image` - 실제 이미지 파일 (더 전문적)

### 링크 설정
- `demo_url` - 라이브 데모 URL
- `github_url` - GitHub 저장소 URL

### 스크린샷/데모 설정
- `screenshots` - 이미지나 동영상 목록
  - `youtube: "VIDEO_ID"` - 유튜브 동영상 ID
  - `image: "path"` - 이미지 경로
  - `title` - 스크린샷 제목
  - `description` - 스크린샷 설명
  - `type` - video, image, gif 등

### Notion/외부 링크 설정
- `notion_landing` - 외부 링크 카드
  - `url` - 링크 URL
  - `title` - 카드 제목
  - `description` - 카드 설명
  - `type` - 아이콘 타입 (notion, landing, docs, website, github, demo)

## 실제 사용 예시

### 웹 애플리케이션 프로젝트
```yaml
---
layout: project
title: "Todo Manager Pro"
description: "효율적인 작업 관리를 위한 웹 애플리케이션입니다."
icon_image: "/assets/images/icons/todo-icon.png"
project_id: "todo-manager"
order: 1
demo_url: "https://todo-demo.example.com"
github_url: "https://github.com/username/todo-manager"
screenshots:
  - image: "/assets/images/screenshots/todo-main.png"
    title: "메인 대시보드"
    description: "직관적인 인터페이스로 모든 작업을 한눈에 확인"
    type: "image"
  - youtube: "dQw4w9WgXcQ"
    title: "기능 데모"
    description: "주요 기능들의 실시간 사용 모습"
    type: "video"
notion_landing:
  url: "https://notion.so/project-details"
  title: "프로젝트 상세 정보"
  description: "개발 과정, 기술 스택, 향후 계획 등을 자세히 확인하세요."
  type: "notion"
---
```

### 모바일 앱 프로젝트  
```yaml
---
layout: project
title: "Fitness Tracker"
description: "건강한 생활을 위한 피트니스 트래킹 앱"
emoji: "🏃‍♂️"
project_id: "fitness-tracker"
order: 2
demo_url: "https://app-store-link.com"
screenshots:
  - image: "/assets/images/screenshots/fitness-home.png"
    title: "홈 화면"
    description: "오늘의 운동 목표와 진행 상황"
    type: "mobile"
  - image: "/assets/images/screenshots/fitness-workout.gif"
    title: "운동 기록"
    description: "실시간 운동 트래킹 화면"
    type: "gif"
notion_landing:
  url: "https://app-landing-page.com"
  title: "앱 다운로드"
  description: "iOS와 Android에서 지금 바로 사용해보세요."
  type: "landing"
---
```

### 오픈소스/라이브러리 프로젝트
```yaml
---
layout: project
title: "React Component Library"
description: "재사용 가능한 React 컴포넌트 라이브러리"
emoji: "📦"
project_id: "react-components"
order: 3
github_url: "https://github.com/username/react-components"
demo_url: "https://storybook-demo.example.com"
screenshots:
  - image: "/assets/images/screenshots/storybook.png"
    title: "Storybook 문서"
    description: "모든 컴포넌트의 사용법과 예시"
    type: "image"
notion_landing:
  url: "https://component-docs.com"
  title: "API 문서"
  description: "상세한 API 레퍼런스와 사용 가이드"
  type: "docs"
---
```

## 개발 로그 연결

프로젝트와 관련된 블로그 포스트는 front matter에 `project` 속성을 추가하면 자동으로 연결됩니다:

```yaml
# _posts/2025-07-23-project-update.md
---
layout: post
title: "프로젝트 진행 상황 업데이트"
description: "최근 개발 진행 상황과 다음 계획"
date: 2025-07-23
project: "todo-manager"  # project_id와 일치해야 함
---
```

## type별 아이콘 매핑

notion_landing의 type에 따른 자동 아이콘:
- `notion`: 📋
- `landing`: 🌐
- `docs`: 📚
- `website`: 🔗
- `github`: 💻
- `demo`: 🎮

## 주의사항

1. **project_id**: 소문자, 하이픈만 사용 (URL 안전)
2. **order**: 홈페이지 표시 순서 (숫자가 작을수록 위에 표시)
3. **이미지 경로**: `/assets/images/` 폴더 사용 권장
4. **유튜브 ID**: 전체 URL이 아닌 동영상 ID만 입력
5. **스크린샷 type**: video, image, gif, mobile 등으로 구분 가능
