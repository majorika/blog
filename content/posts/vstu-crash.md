+++
date = "2017-02-01T21:16:03+09:00"
title = "Visual Studio 2015 Tools for Unity Crash"
tags = ["Unity3d", "vstu crash"]
description = "어느날 갑자기 VS2015가 크래시가 나기 시작했다면,"
+++

회사에서는 주로 윈도우에서 Visual Studio 2015를 사용해서 작업을 하고 있습니다. VSTU (Visual Studio 2015 Tools for Unity) 2.8.2.0 버전이 업데이트 나와서 설치하고 설 연휴를 쉬고 돌아와서 코딩을 시작하려는데 `public`을 치려고 `pub`까지 타이핑되고 자동완성을 시도하면서 크래시가 발생했습니다. 귀찮음에 팝업 내용은 자세히 읽지 않고 여러번 재시도 해봤지만, 같은 메시지를 내뱉고는 계속 크래시가 발생해서 오류 로그 파일을 찾아보니,

```
"System.IO.FileLoadException: Could not load file or assembly SyntaxTree.VisualStudio.Unity, Version=2.8.1.0..."
```

위와 같은 로그가 남아 있었습니다. VSTU가 업데이트 되어서 생긴 문제인 줄 알고 삭제했다가 다시 이전 버전을 깔아보았지만, 계속 크래시는 발생했고, 구글링 해보니 VSTU 다운로드 페이지 댓글에 해결법이 적혀 있었습니다. 이유는 MEF 캐시가 손상되어서 발생한 것이었고, 확장 기능을 설치할 때 종종 발생한다는 내용이었습니다. 해결 방법은 `%localappdata%\Microsoft\VisualStudio\14.0\ComponentModelCache` 경로에 있는 캐시를 삭제해주는 것. 해당 경로로 들어가 파일을 전부 삭제하고 재실행해보니 캐시를 재생성하고 정상 동작 되었습니다.

혹시라도 이 방법으로 해결되지 않는다면,

1. `Developer Command Prompt for VS201`을 관리자 권한으로 실행
2. `devenv /setup` 실행

참고 : https://marketplace.visualstudio.com/items?itemName=SebastienLebreton.VisualStudio2015ToolsforUnity