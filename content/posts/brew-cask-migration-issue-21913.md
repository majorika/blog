+++
date = "2016-07-16T05:52:57+09:00"
title = "Homebrew cask install 할 때 Caskroom 마이그레이션 경고 해결하기"
description = "brew cask를 이용하다 최근 업데이트 이후 발생한 경고를 해결하기 위한 방법을 정리해보았습니다."
+++

기본 Caskroom 경로가 변경되어서 발생하는 경고로, 이전 경로를 계속 사용하도록 환경변수에 옵션을 추가해줄 수 있지만, 깔끔하게 옮기기는 방법을 선택했습니다.

```
mv /opt/homebrew-cask/ /usr/local
sudo rm -fr /opt/homebrew-cask
brew cask install --force $(brew cask list)
```

참고 : https://github.com/caskroom/homebrew-cask/issues/21913