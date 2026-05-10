// ============================================================
//  Supabase 설정 — 아래 두 값을 본인 프로젝트 값으로 교체하세요
// ============================================================
const SUPABASE_URL      = 'https://YOUR-PROJECT.supabase.co';
const SUPABASE_ANON_KEY = 'YOUR-ANON-KEY';

// 관리자 대시보드 비밀번호 (admin.html 접근 시 사용)
const ADMIN_PASSWORD = 'admin1234';

// ============================================================
//  Supabase 테이블 생성 SQL (처음 한 번만 실행)
//  Supabase → SQL Editor 에 붙여넣고 실행하세요
// ============================================================
/*
create table submissions (
  id            bigserial primary key,
  created_at    timestamptz default now(),
  visa_type     text,
  stay_duration text,
  enrollment    text,
  grade_status  text,
  topik_level   text,
  semester      text,
  desired_hours text,
  result_status text,
  max_hours_allowed int,
  blocker       text
);

alter table submissions enable row level security;

-- 누구나 insert 가능 (학생 폼 제출)
create policy "anon insert" on submissions
  for insert with check (true);

-- 누구나 select 가능 (관리자 대시보드, 비밀번호는 JS에서 처리)
create policy "anon select" on submissions
  for select using (true);
*/
