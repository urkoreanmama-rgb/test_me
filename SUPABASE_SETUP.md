# Supabase 연동 설정 가이드 (Safety Korean)

현재 앱은 **localStorage**(기기 한 대)로만 저장됩니다. 아래 5단계를 따라 하면
가입·세션·진도가 **Supabase 서버에도 함께 저장**되어 여러 기기·관리자 집계가 가능해집니다.

> 설정 전까지는 `sk-supabase.js` 의 값이 비어 있어 **아무 일도 일어나지 않습니다**(앱은 지금처럼 정상 동작). 안전합니다.

---

## 1. Supabase 프로젝트 만들기
1. [supabase.com](https://supabase.com) 가입 (무료)
2. **New project** → 이름/비밀번호/리전(Northeast Asia - Seoul 권장) 입력 → 생성 (1~2분 소요)

## 2. 테이블 만들기 (SQL 붙여넣기)
좌측 메뉴 **SQL Editor → New query** 에 아래 전체를 붙여넣고 **Run**:

```sql
-- ── 유저 ──
create table if not exists sk_users (
  id            text primary key,
  username      text unique not null,
  password      text,              -- ⚠️ MVP: 평문 저장. 운영 전 반드시 해시로 교체
  name          text,
  phone         text,
  lang          text,              -- ko | uz | tet ...
  type          text,              -- individual | company
  company_code  text,
  employee_num  text,
  notif_time    text,
  visa_type     text,
  visa_expiry   date,
  registered_at timestamptz default now()
);

-- ── 학습 진도 (유저별 1행) ──
create table if not exists sk_progress (
  user_id    text primary key references sk_users(id) on delete cascade,
  done       int[] default '{}',   -- 완료한 Day 번호 배열
  points     int   default 0,
  streak     int   default 0,
  updated_at timestamptz default now()
);

-- ── 세션 (퀴즈 응시 기록) ──
create table if not exists sk_sessions (
  id           text primary key,
  user_id      text references sk_users(id) on delete cascade,
  day          int,
  score        int,
  total        int,
  pct          int,
  passed       boolean,
  duration     int,                -- 초
  company_code text,
  date         date,
  created_at   timestamptz default now()
);

-- ── RLS (행 수준 보안) ──
-- anon key 는 공개 키라 누구나 접근할 수 있으므로 RLS 가 필수입니다.
-- 아래는 'MVP 테스트용' 정책입니다(누구나 읽기/쓰기). 운영 전 반드시 강화하세요.
alter table sk_users    enable row level security;
alter table sk_progress enable row level security;
alter table sk_sessions enable row level security;

create policy "mvp_all_users"    on sk_users    for all using (true) with check (true);
create policy "mvp_all_progress" on sk_progress for all using (true) with check (true);
create policy "mvp_all_sessions" on sk_sessions for all using (true) with check (true);
```

## 3. URL + anon key 복사
좌측 메뉴 **Project Settings → API**:
- **Project URL** 복사 (예: `https://abcd1234.supabase.co`)
- **Project API keys → `anon` `public`** 복사 (긴 `eyJ...` 문자열)

## 4. `sk-supabase.js` 에 붙여넣기
파일 맨 위 `SK_SUPABASE_CONFIG` 두 줄을 채웁니다:

```js
const SK_SUPABASE_CONFIG = {
  url:     'https://abcd1234.supabase.co',   // ← 3번에서 복사한 Project URL
  anonKey: 'eyJhbGciOi...',                  // ← 3번에서 복사한 anon public key
};
```

## 5. 배포
```bash
git add sk-supabase.js && git commit -m "Supabase 연동 활성화" && \
GIT_TERMINAL_PROMPT=0 git -c credential.helper='' push origin main
```
push 후 Vercel 자동 배포 → 이때부터 가입/학습 데이터가 Supabase 에 쌓입니다.
Supabase 대시보드 **Table Editor** 에서 실시간으로 확인 가능합니다.

---

## ⚠️ 보안 주의 (운영 전 필수)
1. **비밀번호 평문 저장** — 현재 MVP는 비밀번호를 평문으로 보냅니다. 운영 전 해시(예: bcrypt) 또는 Supabase Auth 로 교체하세요.
2. **MVP RLS 정책은 "누구나 접근"** — 위 정책은 테스트용입니다. 운영 시 본인 데이터만 접근하도록 정책을 좁히고, 비밀번호 컬럼은 클라이언트에서 못 읽게 하세요.
3. **anon key 는 공개됨** — 클라이언트에 노출되는 게 정상이지만, 그래서 RLS 가 보안의 핵심입니다.

## 다음 단계 (선택)
- **관리자 대시보드(admin.html)도 Supabase 읽기로 전환** → 여러 기기·전체 업체 집계. (현재 admin은 localStorage만 읽음)
- **양방향 동기화** → 다른 기기에서 로그인 시 서버 진도를 불러오기.
이 두 가지는 계정 연결이 끝난 뒤 요청하시면 진행합니다.
