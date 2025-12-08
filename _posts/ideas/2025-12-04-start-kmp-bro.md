---
layout: post
title: Start kmp bro
date: 2025-12-04T15:35:50.385Z
categories: ideas
project: patchnote
---


ㅎㅇ

KMP 공부를 하려고함

uml로 게 모듈별로 나누고, 모듈안에서 어떻게 상호작용하는지 plantuml 그리려고했는데

내가 아는게 없어서 패스

그래서 공식문서를 보는중임.

일단 Pieter Levels 이양반은 웹으로 빠르게 만들어서 반응을 봤다고 하는데

나도 그런 전략을 채택해서

웹앱 or pwa로 시작해서 반응을 살펴보는 식으로 진행하볼까 함

어차피 웹공부 필요하기도 했고 서버로직은 뭐 비슷하겟지 ㅅㅂ

일단 모듈이 어떻게 나눠졌는지 분석을 한 후에 웹앱으로 스타를 해볼 예정


대충 찾아본 프레임워크는 다음과같음

---

- 참고 : Kotlin/JS + React 기준임

# Kotlin/JS + React 기반 PWA 및 반응형 웹앱 라이브러리

## 핵심 React 래퍼

| 라이브러리 | 설명 | 링크 |
|---|---|---|
| **kotlin-react** | React 공식 Kotlin 래퍼. 최신 DSL(ChildrenBuilder) 지원 | [GitHub](https://github.com/JetBrains/kotlin-wrappers/tree/master/kotlin-react) |
| **kotlin-react-dom** | React DOM Kotlin 래퍼. HTML 요소 렌더링 | [GitHub](https://github.com/JetBrains/kotlin-wrappers) |
| **kotlin-react-legacy** | 기존 RBuilder DSL 지원 (attrs 사용) | [GitHub](https://github.com/JetBrains/kotlin-wrappers) |

## CSS-in-JS 라이브러리

| 라이브러리 | 설명 | 링크 |
|---|---|---|
| **kotlin-emotion** | Emotion CSS 래퍼. kotlin-react와 함께 사용 권장 | [GitHub](https://github.com/JetBrains/kotlin-wrappers/blob/master/docs/guide/emotion.md) |
| **kotlin-styled-next** | styled-components 대체. kotlin-react-legacy 전용 | [GitHub](https://github.com/JetBrains/kotlin-wrappers/blob/master/kotlin-styled-next/README.md) |
| **kotlinx-html** | HTML/DOM 조작 및 이벤트 핸들링 | [GitHub](https://github.com/Kotlin/kotlinx.html) |

## UI 컴포넌트 라이브러리

| 라이브러리 | 설명 | 링크 |
|---|---|---|
| **kotlin-mui-material** | Material UI (MUI) 공식 래퍼. 타입 세이프한 Material Design | [GitHub](https://github.com/JetBrains/kotlin-wrappers/tree/master/kotlin-mui-material) |
| **kotlin-mui-icons-material** | Material UI Icons 래퍼 | [GitHub](https://jetbrains.github.io/kotlin-wrappers/kotlin-mui-icons-material/) |
| **muirwik** | Material UI 래퍼 (현재 kotlin-mui 권장) | [GitHub](https://github.com/cfnz/muirwik) |

## 라우팅 라이브러리

| 라이브러리 | 설명 | 링크 |
|---|---|---|
| **kotlin-react-router-dom** | React Router DOM 래퍼. BrowserRouter, HashRouter 지원 | [GitHub](https://github.com/JetBrains/kotlin-wrappers/tree/master/kotlin-react-router-dom) |

## PWA 관련 도구

| 도구/라이브러리 | 설명 | 링크 |
|---|---|---|
| **Kotlin-PWA-starter-kit** | Kotlin/JS PWA 템플릿. Service Worker, Push 알림 포함 | [GitHub](https://github.com/grantas33/Kotlin-PWA-starter-kit) |
| **kotlin-pwa-components** | PWA UI 컴포넌트 (Service Worker hooks 등) | [GitHub](https://github.com/grantas33/kotlin-pwa-components) |
| **Workbox** | Google의 Service Worker 라이브러리. 캐싱 전략 제공 | [Docs](https://developer.chrome.com/docs/workbox/) |
| **Workbox Build** | Workbox 빌드 도구. Gradle/Webpack 통합 | [Docs](https://web.dev/learn/pwa/workbox) |

## Compose Multiplatform (웹 타겟)

| 라이브러리 | 설명 | 링크 |
|---|---|---|
| **Compose Multiplatform Web** | Jetpack Compose 스타일 웹 UI. Kotlin/Wasm 기반 | [Docs](https://www.jetbrains.com/compose-multiplatform/) |
| **Composive** | Compose 반응형/적응형 UI 라이브러리. 자동 화면 크기 감지 | [GitHub](https://github.com/Gursimarsingh12/Composive) |


## PWA 필수 구성 요소

| 항목 | 설명 | 참고 |
|---|---|---|
| **manifest.json** | 웹 앱 메타데이터. 설치, 아이콘, 테마 색상 등 | `public/manifest.json`에 배치 |
| **service-worker.js** | 오프라인 캐싱, 푸시 알림 처리 | Workbox 사용 권장 |
| **build task** | `./gradlew jsBrowserDistribution` | PWA 빌드 실행 |

## 반응형 웹 구현 방법

| 방법 | 설명 | 도구 |
|---|---|---|
| **CSS Media Query** | Emotion/styled에서 미디어 쿼리 직접 작성 | kotlin-emotion |
| **Window Size 감지** | `window.innerWidth`로 조건부 렌더링 | Kotlin/JS API |
| **Compose 반응형** | Dp 단위 자동 적응, WindowSizeClass 활용 | Composive 라이브러리 |
| **MUI Breakpoints** | Material UI Grid, Box 반응형 props | kotlin-mui-material |

## 참고 자료

- [JetBrains Kotlin Wrappers](https://github.com/JetBrains/kotlin-wrappers)
- [Kotlin/JS 공식 문서](https://kotlinlang.org/docs/js-overview.html)
- [Compose Multiplatform 가이드](https://www.jetbrains.com/help/kotlin-multiplatform-dev/compose-multiplatform-create-first-app.html)
- [Workbox 공식 문서](https://developer.chrome.com/docs/workbox/)
- [PWA 튜토리얼](https://web.dev/learn/pwa/)