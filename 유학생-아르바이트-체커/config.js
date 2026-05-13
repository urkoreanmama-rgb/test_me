// ============================================================
//  Supabase 설정 — 아래 두 값을 본인 프로젝트 값으로 교체하세요
// ============================================================
const SUPABASE_URL      = 'https://jtbcudkyitfkwfgusgph.supabase.co';
const SUPABASE_ANON_KEY = 'sb_publishable_9-oDKxiELH_30sO5C4-_VQ_4xF-FYRD';

// 관리자 대시보드 비밀번호 (admin.html 접근 시 사용)
const ADMIN_PASSWORD = 'admin1234';

// ============================================================
//  Supabase 테이블 생성 SQL (처음 한 번만 실행)
//  Supabase → SQL Editor 에 붙여넣고 실행하세요
// ============================================================
/*
-- ① 체커 응답 테이블
create table submissions (
  id                bigserial primary key,
  created_at        timestamptz default now(),
  visa_type         text,
  stay_duration     text,
  enrollment        text,
  grade_status      text,
  topik_level       text,
  semester          text,
  desired_hours     text,
  industry          text,
  result_status     text,
  max_hours_allowed int,
  blocker           text
);
alter table submissions enable row level security;
create policy "anon insert" on submissions for insert with check (true);
create policy "anon select" on submissions for select using (true);

-- ② 매칭 신청 테이블 (아르바이트 가능/조건부 학생)
create table job_matching (
  id          bigserial primary key,
  created_at  timestamptz default now(),
  name        text,
  phone       text,
  city        text,
  district    text,
  industry    text,
  visa_type   text,
  topik_level text
);
alter table job_matching enable row level security;
create policy "anon insert" on job_matching for insert with check (true);
create policy "anon select" on job_matching for select using (true);

-- ③ 예비 등록 테이블 (현재 불가 → 자격 갖추면 알림 요청)
create table pre_register (
  id          bigserial primary key,
  created_at  timestamptz default now(),
  name        text,
  phone       text,
  visa_type   text,
  topik_level text,
  blocker     text
);
alter table pre_register enable row level security;
create policy "anon insert" on pre_register for insert with check (true);
create policy "anon select" on pre_register for select using (true);
*/
