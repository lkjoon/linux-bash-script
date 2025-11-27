아래는 간단한 C 프로젝트용 Makefile 예제와 사용법 설명을 하나의 README.md 파일 형식으로 통합한 내용입니다.

```markdown
# 간단한 C 프로젝트용 Makefile 사용법

## 프로젝트 구성  
- main.c  
- utils.c  
- Makefile  

## Makefile 예제  

```
CC = gcc
CFLAGS = -Wall -g
TARGET = myprogram
OBJS = main.o utils.o

$(TARGET): $(OBJS)
<Tab>$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

main.o: main.c
<Tab>$(CC) $(CFLAGS) -c main.c

utils.o: utils.c
<Tab>$(CC) $(CFLAGS) -c utils.c

clean:
<Tab>rm -f $(TARGET) *.o
```

> **주의**: `<Tab>`은 반드시 실제 탭(tab) 문자로 입력해야 합니다.

## 설명  
- `CC` : 컴파일러로 gcc 사용  
- `CFLAGS` : 컴파일 옵션, 경고 표시 및 디버그 정보 포함  
- `TARGET` : 최종 실행 파일 이름 (myprogram)  
- `OBJS` : 컴파일할 오브젝트 파일 리스트 (main.o, utils.o)  

Makefile은 타겟(예: `myprogram`)과 의존성(예: `main.o`, `utils.o`), 그리고 타겟을 만들기 위한 명령어들로 구성됩니다.  
`make` 명령어로 전체 프로젝트를 빌드하며 변경된 파일만 다시 컴파일하여 효율적인 빌드가 가능합니다.

## 주요 명령어  
- `make` : 기본 타겟 `myprogram` 빌드  
- `make clean` : 빌드 결과물 및 오브젝트 파일 삭제  

## 사용 방법  
1. 터미널에서 `make`를 실행하여 빌드  
2. 수정된 소스만 재컴파일 후 링크  
3. `make clean`으로 빌드 파일 정리  

---

Makefile을 사용하면 번거로운 컴파일 과정을 자동화하여 개발 효율을 높일 수 있습니다.  
프로젝트가 커져도 의존성 관리가 쉬워 유지보수에 도움이 됩니다.
```

