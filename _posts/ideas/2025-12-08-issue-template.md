---
layout: post
title: config ISSUE,PR_TEMPLATE
date: 2025-12-08T06:09:42.869Z
categories: ideas
project: patchnote
---


지금 해야할 건 두가지임

- ISSUE_TEMPLATE
- PR_TEMPLATE
- ~~coderabbit으로 코드리뷰~~


정도 ??

일단 어떤걸 참고했냐면,

대 따 거 형님들이 만드신


![](/assets/images/2025-12-08-15-16-01.png)

[Animeko](https://animeko.org/) 라고 

> Animeko는 애니메이션을 한 곳에서 검색, 추적, 시청할 수 있는 일체형 플랫폼으로, Bangumi와 연동된 클라우드 동기화, 다중 비디오 소스, 오프라인 캐싱, 댓(弹幕) 기능을 제공합니다. 안드로이드, iOS, Windows, macOS, Linux 등 모든 주요 플랫폼을 지원하며, Kotlin 멀티플랫폼과 Compose UI를 기반으로 제작되었습니다.

![](/assets/images/2025-12-08-15-17-52.png)

[bangumi](https://bangumi.tv/)라고

> 애니메이션, 만화, 게임, 책, 음악 등 오타쿠 문화 콘텐츠를 중심으로 한 중국 기반의 커뮤니티 및 데이터베이스 사이트입니다. 사용자가 작품을 검색, 평가, 리뷰하며 일정을 추적할 수 있도록 설계되었으며, 매일 방송 시간표와 태그 기반 탐색 기능을 제공합니다.


이거랑 클라우드 연결되어있는 앱인거같음


나도 뭔지모름 따거햄 언어로되어있어서;

[about](https://animeko.org/about) 페이지에 보면 알다시피

![](/assets/images/2025-12-08-15-21-04.png)
![](/assets/images/2025-12-08-15-21-18.png)

연동이 잘 되어있는걸 알 수 있음 Material3 기반인가 UI는 꽤 투박한듯

아무튼 오늘은 여기서 ISSUE_TEMPLATE이랑 PR_TEMPLETE을 만들어보도록하자.

---

# ISSUE_TEMPLATE 만들기

> 참고 :
>> [다양한이슈템플릿 모음](https://github.com/stevemao/github-issue-templates)
>> [공식문서](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository)

![](/assets/images/2025-12-08-15-24-56.png)

따거햄은 저런식으로 저장을 해놓았다.

각각 설명을 간단히 붙이자면,

- bug.yml: 버그 리포트 템플릿
- feature.yml: 기능 요청 템플릿
- new-source.yml: 새 소스 추가 요청 템플릿 (프로젝트 특화)
- config.yml: 템플릿 설정 및 외부 링크

등으로 되어있다. 커밋기록을 보면 config.yml이 먼저이니 한번 살펴보자

```yml
# .github/ISSUE_TEMPLATE/config.yml
blank_issues_enabled: true

contact_links:
  - name: GitHub Discussions
    url: https://github.com/open-ani/ani/discussions
    about: 欢迎进行相对比较正式的讨论
  - name: QQ 闲聊群 927170241
    url: http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=2EbZ0Qxe-fI_AHJLCMnSIOnqw-nfrFH5&authKey=L31zTMwfbMG0FhIgt8xNHGOFPHc531mSw2YzUVupHLRJ4L2f8xerAd%2ByNl4OigRK&noverify=0&group_code=927170241
    about: 欢迎反馈问题与闲聊
  - name: Telegram 闲聊群
    url: https://t.me/+afDaMsCSIcsyNDVk
    about: 欢迎反馈问题与闲聊
```

GitHub Discussions, QQ 그룹(나도모름 따거햄 오픈톡방같은거일듯),Telegram

으로 나뉘어서 보여주고 있다.

나는 혼자 만드니까 일단 이메일만 집어넣도록 하자


간단한 형식은 다음과 같다

```yml
blank_issues_enabled: true
contact_links:
  - name: [링크 이름]
    url: [URL 주소]
    about: [설명]
```

나는 혼자 처 만드니까, 일단 이메일만 집어넣도록 하자.

아 참고로 `blank_issues_enabled`는 자유롭게 이슈쓸수있냐 없냐 그거 제한거는거임

나는 어쨋든 개발만하니까, false로 걸고 시작하도록 하겠다.

```yml
blank_issues_enabled: false
contact_links:
  - name: Contact me
    url: mailto:kyuhyunsung2002@gmail.com
    about: Contact me if any issues occur
```

다음은 `feature_request.yml`을 만들어보도록 하자

![](/assets/images/2025-12-08-15-46-39.png)

따거햄은 저렇게되어있어서 형식갖고와봄


```yml
name: Feature Request
description: Request a new feature or suggestion
labels: []
body:
  - type: markdown
    attributes:
      value: |
        Please search existing issues before submitting.
        ## One request per issue
        Multiple requests should be submitted as separate issues.
  
  - type: textarea
    id: description
    attributes:
      label: Feature Description
      description: Describe your feature request and why you need it
      placeholder: |
        Example:
        Add a dark mode toggle in settings for better nighttime viewing.
    validations:
      required: true
  
  - type: input
    id: version
    attributes:
      label: Version
      description: Current version you are using
      placeholder: "e.g. 1.0.0"
    validations:
      required: true
  
  - type: dropdown
    id: platform
    attributes:
      label: Platform
      multiple: true
      description: Select applicable platforms (optional)
      options:
        - Web
        - Android
        - iOS
    validations:
      required: false
```

일단 `name`,`description`은 필수니까 정하면 될 것 같고

`label` 은 빈칸으로 둬서 컨벤션에 맞게끔 설정하면 될 것 같고

이제 `body` 안에는 `type` 을 어떻게해야할지 생각해야하는데,
어떤내용을 넣을지.

나는 일단 당장 생각나는거는

1. 간단한 설명
2. 어떤 이슈인지 (Test,Spike등등..)
3. 담당자 등록
4. 드롭다운 (플랫폼 선택 or 공통로직 or 배포 등등..)

뭐 이정도면 되지않을듯 싶다. 개발권한 있는사람 없는사람 나뉘어서 뭐어쩌구저쩌구

솔직히 좀 그럼 귀찮음


```yml
name: Feature_Request
description: Request a new feature or suggestion
labels: []
assignees:
  - your-username
body:
  - type: markdown
    attributes:
      value: |
        ## Development Task
        Please provide details about the task.

  - type: textarea
    id: description
    attributes:
      label: Task Description
      description: Describe what needs to be done
      placeholder: "Example: Implement user authentication"
    validations:
      required: true

  - type: textarea
    id: todo
    attributes:
      label: Todo List
      description: List of tasks to complete
      placeholder: |
        - [ ]
    validations:
      required: false

  - type: dropdown
    id: scope
    attributes:
      label: Development Scope
      description: Select the scope of this task
      options:
        - Android Platform
        - iOS Platform
        - Desktop (JVM)
        - Web Platform
        - Common/Shared Logic
        - Build & Deployment
        - Documentation
        - Testing
        - Spike (new imple)
    validations:
      required: true
```

대충 만들어진 내용들


bug는 귀찮아서 나중에 만들도록 하자.

---
# workflows 생성


왜 workflows로 했냐면,

나중에 여기다 CICD 넣고 그럴거고 완성된 걸 merge하는 단계니까

여기다가 `PULL_REQUEST_TEMPLATE.yml`이랑
`auto_assign.yml`을 넣으면 될 거같아서 이렇게함

- `auto_assign.yml` 는 먼가여 ?

자동으로 채워주는 거임 귀찮잖아 딸깍하기
> 참고 : [GitHub - Auto Assign 사용하기](https://green1229.tistory.com/477)


```yml
addReviewers: false
addAssignees: author
```

근데 이부분은 난 아는게 없어서 GithubAction
부분이라 다음에 할거임 

아무튼 대충 만들어서

```markdown
## Related issue 
- closed #IssueNumbers

## Work Description
- 

## Screenshot
<img src="" width="360"/>

## Uncompleted Tasks 
- [ ] Task1

## Reference
- [LinkName](Linkhere)
````

이정도 만들어서 올려보자

Coderabbit은 GithubAction이랑

같이 하는게 나을거같아서 나중에하도록하겠음

그렇게해서 라벨도 어느정도 매칭되게 만들었음

![](/assets/images/2025-12-08-18-30-35.png)

**사용 예시:**
- `feat` + `platform: android` → Android 기능 추가
- `bug` + `platform: server` → 서버 버그 수정
- `docs` + `platform: common` → 공통 문서 작업


뭐 이렇게 대충 쓰면 될거같고

Milestone만 간단하게 설정해보자.

올인원으로 관리하는게 편함

![](/assets/images/2025-12-08-19-06-32.png)

대충 저렇게 진행해보자

기간이랑 MVP로 ㅜ멀만들지 구체적으로는 나중에 설정하도록하고

일단 여기서ㄱㄱ

다음은 CICD랑 AI코드리뷰 달고, PRreqeust 자동설정까지 가능하면 해볼 예정.


