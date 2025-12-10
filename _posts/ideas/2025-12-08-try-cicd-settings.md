---
layout: post
title: Try CICD Settings
date: 2025-12-08T15:12:36.927Z
categories: ideas
project: patchnote
---

아 씨발

Coderabbit이

 Private인 레포지토리일 경우일때는 강제로 Pro버젼으로 ㄴ머어가서

 한달마다 돈내야한다고해서 Public으로 반강제 오픈;

 ![](/assets/images/2025-12-09-00-16-05.png)

일단 12월 22일에 저거 cancled ㅣ된다고ㅜ하고 카드등록안했으니까

그때까지 기다려야할듯.

---

# 자 오늘 할 것은 무엇이냐 ?

현재 패키지 구조 기반으로 CICD를 짜야하는데,

GithubAction으로 어떻게 `shared` 모듈을 기반으로 CI를 짜야할지,

IOS, App, Web을 어덯게 따로따로 CD를 짜야할지.

혹은 Test를 어떻게 돌릴지 ? (UI라든가 등등..)

여러 레포를 참고하면서 진행을 해볼려고함

> 참고
>> - [Kotlin Multiplatform samples](https://kotlinlang.org/docs/multiplatform/multiplatform-samples.html)
>> - [Github-kotlin-multiplatform-sample](https://github.com/topics/kotlin-multiplatform-sample)


일단 나는 혼자 분석 못하는 좆밥이기때문에 현재 프로젝트의 모듈 구성을 mcp로 만들어봤다

![](/assets/images/2025-12-09-02-26-53.png)

대충 저렇게된다.

개복잡하니까 공식문서를 통해 하나하나 뜯어보자.

