// ============================================================
//  Supabase 설정 — 아래 두 값을 본인 프로젝트 값으로 교체하세요
// ============================================================
const SUPABASE_URL      = 'https://jtbcudkyitfkwfgusgph.supabase.co';
const SUPABASE_ANON_KEY = 'sb_publishable_9-oDKxiELH_30sO5C4-_VQ_4xF-FYRD';

// 관리자 대시보드 비밀번호 (admin.html 접근 시 사용)
const ADMIN_PASSWORD = 'Kmom2026';

// ============================================================
//  Supabase 테이블 생성 SQL
//  Supabase → SQL Editor 에 아래 전체를 붙여넣고 실행하세요.
//  이미 일부 테이블을 만든 경우엔 "업그레이드용 SQL" 섹션만 실행하세요.
// ============================================================

/*
=======================================================
  ① 처음 설정하는 경우 — 전체 SQL 한 번에 실행
=======================================================

-- 체커 응답
create table if not exists submissions (
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

-- 매칭 신청 (아르바이트 가능 / 조건부 학생)
create table if not exists job_matching (
  id                 bigserial primary key,
  created_at         timestamptz default now(),
  name               text,
  phone              text,
  city               text,
  district           text,
  region             text,
  industry           text,
  traits             text,
  visa_type          text,
  topik_level        text,
  result_status      text,
  max_hours_allowed  int,
  blocker            text,
  status             text default '대기중'
);
alter table job_matching enable row level security;
create policy "anon insert" on job_matching for insert with check (true);
create policy "anon select" on job_matching for select using (true);
create policy "anon update" on job_matching for update using (true);

-- 예비 등록 (현재 불가 → 자격 갖추면 알림 요청)
create table if not exists pre_register (
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

-- 업주 상담기록지
create table if not exists employer_profiles (
  id               bigserial primary key,
  created_at       timestamptz default now(),
  status           text default '상담중',
  business_name    text,
  industry         text,
  city             text,
  address          text,
  owner_name       text,
  phone            text,
  kakao            text,
  needed_count     int,
  start_date       date,
  preferred_days   text,
  preferred_time   text,
  offered_wage     text,
  weekly_hours     text,
  required_korean  text,
  gender_pref      text,
  age_min          int,
  age_max          int,
  coordinator_memo text
);
alter table employer_profiles enable row level security;
create policy "anon insert" on employer_profiles for insert with check (true);
create policy "anon select" on employer_profiles for select using (true);
create policy "anon update" on employer_profiles for update using (true);

-- 학생 기록부 (관리자가 카톡 상담 후 채우는 상세 정보)
create table if not exists student_profiles (
  id                 bigserial primary key,
  matching_id        bigint unique not null,
  created_at         timestamptz default now(),
  nationality        text,
  age                int,
  gender             text,
  visa_expiry        date,
  university         text,
  major              text,
  korean_speaking    text,
  special_skills     text,
  work_experience    text,
  preferred_days     text,
  preferred_time     text,
  expected_wage      text,
  preferred_district text,
  industry_pref      text,
  start_date         date,
  strengths          text,
  coordinator_memo   text
);
alter table student_profiles enable row level security;
create policy "anon insert" on student_profiles for insert with check (true);
create policy "anon select" on student_profiles for select using (true);
create policy "anon update" on student_profiles for update using (true);

-- 상담 메모 (학생 / 업주 공용, matching_id 음수 = 업주)
create table if not exists student_notes (
  id          bigserial primary key,
  created_at  timestamptz default now(),
  matching_id bigint not null,
  note_text   text
);
alter table student_notes enable row level security;
create policy "anon insert" on student_notes for insert with check (true);
create policy "anon select" on student_notes for select using (true);


=======================================================
  ② 이미 3개 테이블을 만든 경우 — 업그레이드용 SQL만 실행
=======================================================

-- job_matching 누락 컬럼 추가
alter table job_matching
  add column if not exists region            text,
  add column if not exists traits            text,
  add column if not exists result_status     text,
  add column if not exists max_hours_allowed int,
  add column if not exists blocker           text,
  add column if not exists status            text default '대기중';

-- job_matching 수정 권한 추가
create policy "anon update" on job_matching for update using (true);

-- 업주 기록지 테이블
create table if not exists employer_profiles (
  id               bigserial primary key,
  created_at       timestamptz default now(),
  status           text default '상담중',
  business_name    text,
  industry         text,
  city             text,
  address          text,
  owner_name       text,
  phone            text,
  kakao            text,
  needed_count     int,
  start_date       date,
  preferred_days   text,
  preferred_time   text,
  offered_wage     text,
  weekly_hours     text,
  required_korean  text,
  gender_pref      text,
  age_min          int,
  age_max          int,
  coordinator_memo text
);
alter table employer_profiles enable row level security;
create policy "anon insert" on employer_profiles for insert with check (true);
create policy "anon select" on employer_profiles for select using (true);
create policy "anon update" on employer_profiles for update using (true);

-- 학생 기록부 테이블
create table if not exists student_profiles (
  id                 bigserial primary key,
  matching_id        bigint unique not null,
  created_at         timestamptz default now(),
  nationality        text,
  age                int,
  gender             text,
  visa_expiry        date,
  university         text,
  major              text,
  korean_speaking    text,
  special_skills     text,
  work_experience    text,
  preferred_days     text,
  preferred_time     text,
  expected_wage      text,
  preferred_district text,
  industry_pref      text,
  start_date         date,
  strengths          text,
  coordinator_memo   text
);
alter table student_profiles enable row level security;
create policy "anon insert" on student_profiles for insert with check (true);
create policy "anon select" on student_profiles for select using (true);
create policy "anon update" on student_profiles for update using (true);

-- 상담 메모 테이블
create table if not exists student_notes (
  id          bigserial primary key,
  created_at  timestamptz default now(),
  matching_id bigint not null,
  note_text   text
);
alter table student_notes enable row level security;
create policy "anon insert" on student_notes for insert with check (true);
create policy "anon select" on student_notes for select using (true);

*/
