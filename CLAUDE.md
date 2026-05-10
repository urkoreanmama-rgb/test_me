# 워크숍 실습 — 프로젝트 컨텍스트

## 프로젝트 개요
Claude Code 워크숍 실습 프로젝트. 로컬 파일 관리 + 웹 대시보드 + GitHub/Vercel 배포까지 진행.

---

## 로컬 폴더 구조
```
/Users/jiwonha/Desktop/워크숍-실습/
├── CLAUDE.md               ← 이 파일
├── .env                    ← GitHub 토큰 (TEST_ME), git 제외
├── .gitignore
├── vercel.json             ← 정적 사이트 설정
├── index.html              ← 김비서 대시보드 (메인 페이지)
├── report.html             ← subtrac.kr 사이트 분석 리포트
├── 김비서-데이터/           ← 원본 데이터 (git 제외)
│   ├── dashboard.html      ← 원본 (index.html로 복사됨)
│   ├── 매출데이터.csv
│   ├── 업무목록.csv
│   ├── 주간일정.txt
│   ├── 프로젝트현황.csv
│   └── 회의록.txt
└── 정리해줘/               ← 정리된 메모 폴더 (git 제외)
    ├── 보고서/
    ├── 메모/
    ├── 업무/
    └── 기타/
```

---

## GitHub 레포
- **URL**: https://github.com/urkoreanmama-rgb/test_me
- **브랜치**: main
- **토큰**: `.env`의 `TEST_ME` 값 (classic PAT, repo 스코프)
- **push 명령어**:
  ```bash
  TOKEN=$(grep TEST_ME .env | cut -d= -f2)
  git remote set-url origin "https://${TOKEN}@github.com/urkoreanmama-rgb/test_me.git"
  GIT_TERMINAL_PROMPT=0 git -c credential.helper='' push origin main
  ```

## Vercel 배포
- **URL**: https://test-me-ecru.vercel.app
- **연결**: GitHub test_me 레포 자동 배포 (main 브랜치 push → 자동 반영)
- **설정**: `vercel.json` — 순수 정적 사이트

---

## 배포된 파일 구조 (GitHub 레포)
```
test_me/
├── index.html                          ← 김비서 대시보드 (메인)
├── report.html                         ← subtrac.kr 사이트 분석
├── vercel.json
├── .gitignore
└── 유학생-아르바이트-체커/
    ├── index.html                      ← 학생용 7단계 체커
    ├── admin.html                      ← 관리자 대시보드
    └── config.js                       ← Supabase 설정 (현재 미연결)
```

---

## 유학생 아르바이트 체커 서비스 (2026-05-11 제작)

### 서비스 목적
외국인 유학생이 카톡 링크로 접근 → 7가지 질문 응답 → 합법적 아르바이트 가능여부 즉시 확인.
관리자는 별도 비밀번호 보호 대시보드에서 전체 응답 데이터를 분석.

### 배포 URL
- **학생용**: https://test-me-ecru.vercel.app/유학생-아르바이트-체커/index.html
- **관리자용**: https://test-me-ecru.vercel.app/유학생-아르바이트-체커/admin.html

### Supabase 연동 (현재 미연결 — 이것만 하면 데이터 저장 시작)
1. [supabase.com](https://supabase.com) 무료 계정 생성 → 새 프로젝트 만들기
2. SQL Editor에 `config.js` 안의 CREATE TABLE SQL 붙여넣기 실행
3. Project Settings → API → URL + anon public key 복사
4. `유학생-아르바이트-체커/config.js` 수정:
   ```js
   const SUPABASE_URL      = 'https://xxxx.supabase.co';
   const SUPABASE_ANON_KEY = 'eyJhbGciOi...';
   const ADMIN_PASSWORD    = '원하는비밀번호';  // 현재 기본값: admin1234
   ```
5. git add + commit + push → 완료

### Supabase 테이블 컬럼 (submissions)
visa_type / stay_duration / enrollment / grade_status / topik_level /
semester / desired_hours / result_status / max_hours_allowed / blocker

### 7단계 질문
1. 비자 종류 (D-2 학사/석박사/방문학생, D-4, 기타)
2. 체류 기간 (3개월 미만 / 3~6개월 / 6개월 이상)
3. 재학 상태 (재학중 / 휴학 / 졸업예정)
4. 성적·출석률 (기준충족 / 미충족 / 첫학기)
5. TOPIK 수준 (5급↑ / 4급 / 1~3급 / 없음)
6. 학기 중 / 방학 중
7. 희망 주당 근무시간

### 판정 로직
- D-2/D-4 아닌 경우 → 불가
- D-4·방문학생이고 체류 6개월 미만 → 불가
- 휴학·졸업예정 → 불가
- 성적 미충족 → 조건부
- 희망시간 > 허용시간 → 조건부
- 위 모두 통과 → 가능

### 허용 근무시간 기준 (학기 중)
| 비자 | TOPIK 없음/만료 | TOPIK 4급 | TOPIK 5급↑ |
|------|----------------|-----------|-----------|
| D-4 | 15h | 20h | 25h |
| D-2 학사·방문 | 15h | 25h | 30h |
| D-2 석·박사 | 15h | 30h | 35h |
※ 방학 중 + TOPIK 4급↑ → 무제한

### 관리자 대시보드 기능
- 비밀번호 잠금 진입
- 요약 카드: 전체/가능/조건부/불가
- 차트 5종: 결과·비자·TOPIK·희망시간·재학상태
- 서비스 니즈 분석 인사이트 카드 6개
- 불가 사유 TOP 분석
- 일별 응답 추이 (14일)
- 응답 테이블 + CSV 내보내기

### 고도화 아이디어 (다음에 할 것들)
1. **다국어 지원** — 영어/베트남어/우즈베크어 등 버튼으로 전환
2. **결과 공유** — 결과 카드 이미지 저장 / 카톡 공유 버튼
3. **알림 서비스** — 체류 6개월 도달 시 알림 (Supabase Edge Function)
4. **학교별 필터** — 응답 시 학교 선택 → 대시보드에서 학교별 분석
5. **국적 항목 추가** — 어느 나라 학생이 많이 쓰는지 파악
6. **허용 직종 목록** — 판정 후 가능한 직종 상세 안내 (식당보조, 번역 등)
7. **관리자 메모** — 개별 응답에 상담 메모 추가
8. **카카오 로그인** — 재방문 시 이전 결과 조회
9. **Supabase Realtime** — 새 응답 시 대시보드 자동 새로고침
10. **다음 단계 안내 강화** — 근처 출입국관리소 찾기 링크 자동 연결

### 법적 근거 (공공기관 출처)
- 출입국관리법 제20조 (체류자격 외 활동허가)
- 법무부 출입국·외국인정책본부 (immigration.go.kr)
- HiKorea (hikorea.go.kr)
- 찾기쉬운 생활법령정보 (easylaw.go.kr)
- 한국유학종합시스템 Study in Korea (studyinkorea.go.kr)

---

## 작업 이력

### 1. 파일 정리
- `정리해줘/` 폴더 15개 파일을 용도별 하위 폴더로 분류
- 기준: 보고서 / 메모 / 업무 / 기타

### 2. 사이트 분석 리포트
- 대상: https://www.subtrac.kr
- 결과: `report.html` 생성
- 내용: 사이트 구조, 디자인, 주요 기능, 잘한점/개선점 카드 레이아웃

### 3. 대시보드 내비게이션 추가
- `김비서-데이터/dashboard.html` (→ 현재 `index.html`) 상단에 탭 메뉴 추가
- 탭 구성: 대시보드 / 회의록 / 매출 현황 / 업무 프로세스 / 사이트 분석
- 글래스모피즘 스타일, 다크/라이트 모드 자동 대응

### 4. GitHub 연결 & 배포
- `.env` 파일에 `TEST_ME` 토큰 저장
- fine-grained PAT → classic PAT (repo 스코프) 으로 교체
- `git init` → remote 설정 → push

### 5. Vercel 403 오류 해결 과정
| 시도 | 원인 | 해결 |
|------|------|------|
| 1차 | `index.html` 없음 | index.html 추가 (리다이렉트) |
| 2차 | 한글 폴더명 (`김비서-데이터`) | `data/`로 변경 |
| 3차 | 불필요 파일/폴더로 구조 복잡 | index.html = 대시보드 직접 |
| 해결 | 불필요한 폴더 git 제거, 웹 파일만 유지 | ✅ |

---

## 다음 작업 아이디어 (준비된 것들)
내비게이션 탭에 링크만 있고 실제 파일 없는 것들:
- `meeting-result.html` — 회의록 페이지
- `chart.html` — 매출 현황 차트
- `diagram.svg` — 업무 프로세스 다이어그램

위 파일 만들어달라고 하면 바로 진행 가능.
새 파일 만든 후 push:
```bash
git add 파일명 && git commit -m "메시지" && GIT_TERMINAL_PROMPT=0 git -c credential.helper='' push origin main
```

---

## 주의사항
- `.env`는 절대 git에 올리지 않음 (`.gitignore`에 포함)
- `data/`, `정리해줘/`, `.claude/`도 git 제외
- macOS 키체인이 git 인증을 가로채므로 push 시 항상 `credential.helper=''` 옵션 필요
