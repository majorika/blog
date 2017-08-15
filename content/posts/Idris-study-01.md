+++
date = "2017-08-16T04:04:03+09:00"
title = "Type-Driven Development with Idris 스터디 1회차"
tags = ["Idris", "함수형", "TDD", "Type-Driven Development", "Type-Driven Development with Idris"]
description = "Type-Driven Development with Idris 스터디 시작"
+++

이상한모임 #dev-fx 채널에서 'Type-Driven Development with Idris' 책으로 Idris 스터디를 시작하신다고 하여서, 덩달아 책을 지르고 스터디에 참여해보기로 결정했다. 8월 15일 광복절 저녁 8시에 첫 스터디 시작으로 준비는 모든 언어의 시작을 알리는 "Hello, World!" 출력을 해보고 오기.

스카이프에 모여서 30분 간격으로 1, 2장을 읽고 궁금하거나 이해가지 않는 부분을 서로 질문하고 대답하고 하는 방식으로 진행되었고, 한 분의 질문 중 답을 찾지 못했던 부분이 있었는데, 공식 사이트 FAQ에서 해당 내용의 답을 찾을 수 있었다. Type은 Type 1, Type 1은 Type 2와 같이 계속 이어지는 *cumulative hierarchy of universes* 라는 것을 가진다는 것에서 실제 repl에서 출력해볼 수 있는가 하는 부분이었는데, 실제 사용자 코드로는 해당 부분을 특정해서 실행해볼 수는 없다는 내용이었다.

참고 : http://docs.idris-lang.org/en/latest/faq/faq.html#does-idris-have-universe-polymorphism-what-is-the-type-of-type