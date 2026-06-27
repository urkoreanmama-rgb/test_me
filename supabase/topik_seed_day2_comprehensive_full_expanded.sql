-- ============================================================
-- TOPIK II 4급 종합반 — Day 2: 비교와 대조 표현
-- Part 1: DELETE + Vocabulary + Grammar
-- course_id = 'topik2_level4_comprehensive'
-- week_number = 1, day_number = 2
-- ============================================================

-- ─────────────────────────────────────────────────
-- SECTION 0: DELETE (narrow scope)
-- ─────────────────────────────────────────────────
DELETE FROM topik_vocabulary WHERE course_id = 'topik2_level4_comprehensive' AND week_number = 1 AND day_number = 2;
DELETE FROM topik_grammar WHERE course_id = 'topik2_level4_comprehensive' AND week_number = 1 AND day_number = 2;
DELETE FROM topik_grammar_quiz_questions WHERE course_id = 'topik2_level4_comprehensive' AND week_number = 1 AND day_number = 2;
DELETE FROM topik_reading_questions WHERE course_id = 'topik2_level4_comprehensive' AND week_number = 1 AND day_number = 2;
DELETE FROM topik_writing_questions WHERE course_id = 'topik2_level4_comprehensive' AND week_number = 1 AND day_number = 2;


-- ─────────────────────────────────────────────────
-- SECTION 1: VOCABULARY (45 words)
-- ─────────────────────────────────────────────────
INSERT INTO topik_vocabulary
  (id, course_id, week_number, day_number, display_order, word, word_class, meaning_ko, meaning_en, example_sentence, example_translation, is_review)
VALUES

-- 01
('W1D2V001', 'topik2_level4_comprehensive', 1, 2, 1,
 '비교하다', '동사',
 '둘 이상의 것을 서로 견주어 살피다',
 'to compare',
 '두 제품의 가격을 비교하면 차이가 분명히 나타난다.',
 'When you compare the prices of the two products, the difference becomes clear.',
 false),

-- 02
('W1D2V002', 'topik2_level4_comprehensive', 1, 2, 2,
 '대조', '명사',
 '둘 이상의 것을 맞대어 같고 다름을 살핌; 뚜렷한 차이',
 'contrast; comparison',
 '두 작품을 대조해 보면 작가의 관점 차이가 드러난다.',
 'When you contrast the two works, the difference in the authors'' perspectives is revealed.',
 false),

-- 03
('W1D2V003', 'topik2_level4_comprehensive', 1, 2, 3,
 '차이', '명사',
 '서로 같지 아니하고 다른 점',
 'difference',
 '도시와 농촌 사이에는 생활 수준의 차이가 크다.',
 'There is a large difference in living standards between urban and rural areas.',
 false),

-- 04
('W1D2V004', 'topik2_level4_comprehensive', 1, 2, 4,
 '반면', '명사/부사',
 '그와는 반대 또는 다른 한편',
 'on the other hand; whereas',
 '이 방법은 비용이 적게 드는 반면 시간이 많이 걸린다.',
 'This method costs less, whereas it takes a lot of time.',
 false),

-- 05
('W1D2V005', 'topik2_level4_comprehensive', 1, 2, 5,
 '공통점', '명사',
 '둘 이상의 대상에서 서로 같은 점',
 'common point; similarity',
 '두 나라의 문화에는 생각보다 많은 공통점이 있다.',
 'The cultures of the two countries have more common points than expected.',
 false),

-- 06
('W1D2V006', 'topik2_level4_comprehensive', 1, 2, 6,
 '특징', '명사',
 '다른 것과 구별되는 두드러진 점',
 'characteristic; feature',
 '이 지역 음식의 특징은 매운맛이 강하다는 것이다.',
 'The characteristic of this region''s food is that it is very spicy.',
 false),

-- 07
('W1D2V007', 'topik2_level4_comprehensive', 1, 2, 7,
 '장점', '명사',
 '다른 것보다 좋거나 뛰어난 점',
 'advantage; strength',
 '재택근무의 장점은 출퇴근 시간을 절약할 수 있다는 점이다.',
 'The advantage of working from home is that commuting time can be saved.',
 false),

-- 08
('W1D2V008', 'topik2_level4_comprehensive', 1, 2, 8,
 '단점', '명사',
 '다른 것보다 못하거나 부족한 점',
 'disadvantage; weakness',
 '이 제품의 단점은 배터리 수명이 짧다는 것이다.',
 'The disadvantage of this product is that the battery life is short.',
 false),

-- 09
('W1D2V009', 'topik2_level4_comprehensive', 1, 2, 9,
 '경향', '명사',
 '현상이나 생각, 행동 등이 어느 방향으로 기울어짐',
 'tendency; trend',
 '요즘 젊은 세대는 결혼을 미루는 경향이 있다.',
 'These days, the younger generation tends to delay marriage.',
 false),

-- 10
('W1D2V010', 'topik2_level4_comprehensive', 1, 2, 10,
 '추세', '명사',
 '어떤 현상이 일정한 방향으로 나아가는 흐름',
 'trend; tendency',
 '온라인 쇼핑 이용자가 늘어나는 추세이다.',
 'The number of online shopping users is on an increasing trend.',
 false),

-- 11
('W1D2V011', 'topik2_level4_comprehensive', 1, 2, 11,
 '통계', '명사',
 '집단 현상을 수량으로 파악하여 정리한 수치',
 'statistics',
 '통계에 따르면 한국의 출산율이 계속 감소하고 있다.',
 'According to statistics, South Korea''s birth rate continues to decline.',
 false),

-- 12
('W1D2V012', 'topik2_level4_comprehensive', 1, 2, 12,
 '조사', '명사',
 '사실이나 사정을 알기 위하여 살펴보거나 묻는 것',
 'survey; investigation',
 '이번 조사에서 응답자의 60%가 환경 문제에 관심이 있다고 답했다.',
 'In this survey, 60% of respondents said they are interested in environmental issues.',
 false),

-- 13
('W1D2V013', 'topik2_level4_comprehensive', 1, 2, 13,
 '분석', '명사',
 '복잡한 현상, 대상, 개념 등을 요소나 성질로 나누어 살핌',
 'analysis',
 '데이터 분석을 통해 소비자 행동 패턴을 파악할 수 있다.',
 'Through data analysis, consumer behavior patterns can be identified.',
 false),

-- 14
('W1D2V014', 'topik2_level4_comprehensive', 1, 2, 14,
 '비율', '명사',
 '한 수가 다른 수에 대한 비의 값; 전체에 대한 부분의 크기',
 'ratio; rate; percentage',
 '여성 직장인의 비율이 점점 높아지고 있다.',
 'The ratio of female workers is gradually increasing.',
 false),

-- 15
('W1D2V015', 'topik2_level4_comprehensive', 1, 2, 15,
 '수치', '명사',
 '수로 나타낸 값; 계량화된 데이터',
 'numerical value; figure',
 '최근 실업률 수치가 예상보다 낮게 나왔다.',
 'The recent unemployment rate figures came out lower than expected.',
 false),

-- 16
('W1D2V016', 'topik2_level4_comprehensive', 1, 2, 16,
 '비중', '명사',
 '전체에서 차지하는 중요성이나 분량의 비율',
 'weight; proportion; share',
 '서비스업이 경제에서 차지하는 비중이 커지고 있다.',
 'The proportion of the service industry in the economy is growing.',
 false),

-- 17
('W1D2V017', 'topik2_level4_comprehensive', 1, 2, 17,
 '현황', '명사',
 '현재의 상황이나 형편',
 'current status; present situation',
 '보고서는 청년 실업의 현황을 자세히 설명하고 있다.',
 'The report explains the current status of youth unemployment in detail.',
 false),

-- 18
('W1D2V018', 'topik2_level4_comprehensive', 1, 2, 18,
 '실태', '명사',
 '실제의 형편이나 상태',
 'actual condition; real state of affairs',
 '복지 사각지대의 실태를 파악하기 위한 조사가 실시되었다.',
 'A survey was conducted to understand the actual conditions of welfare blind spots.',
 false),

-- 19
('W1D2V019', 'topik2_level4_comprehensive', 1, 2, 19,
 '차별화', '명사',
 '다른 것과 구별되도록 특성을 두드러지게 함',
 'differentiation',
 '이 회사는 품질로 경쟁사와 차별화를 꾀하고 있다.',
 'This company seeks differentiation from competitors through quality.',
 false),

-- 20
('W1D2V020', 'topik2_level4_comprehensive', 1, 2, 20,
 '유사하다', '형용사',
 '서로 비슷하다',
 'to be similar',
 '두 언어의 문법 구조가 유사해서 배우기가 쉬웠다.',
 'The grammatical structures of the two languages are similar, so it was easy to learn.',
 false),

-- 21
('W1D2V021', 'topik2_level4_comprehensive', 1, 2, 21,
 '다르다', '형용사',
 '비교가 되는 두 대상이 서로 같지 않다',
 'to be different',
 '같은 사건을 보는 시각이 사람마다 다를 수 있다.',
 'The perspective of looking at the same event can be different for each person.',
 false),

-- 22
('W1D2V022', 'topik2_level4_comprehensive', 1, 2, 22,
 '뛰어나다', '형용사',
 '보통보다 훨씬 낫거나 앞서 있다',
 'to be outstanding; excellent',
 '그 선수는 체력이 뛰어나 마라톤에서 항상 좋은 성적을 낸다.',
 'That athlete has outstanding stamina and always achieves good results in marathons.',
 false),

-- 23
('W1D2V023', 'topik2_level4_comprehensive', 1, 2, 23,
 '우수하다', '형용사',
 '여럿 중에서 특별히 더 뛰어나다',
 'to be excellent; superior',
 '우리 팀의 기술력이 경쟁사보다 우수하다고 평가받고 있다.',
 'Our team''s technical capability is evaluated as superior to that of competitors.',
 false),

-- 24
('W1D2V024', 'topik2_level4_comprehensive', 1, 2, 24,
 '효율적', '관형사/부사',
 '들인 노력과 얻는 결과 사이의 비율이 높은',
 'efficient',
 '시간을 효율적으로 사용하면 같은 시간에 더 많은 일을 할 수 있다.',
 'If you use time efficiently, you can do more work in the same amount of time.',
 false),

-- 25
('W1D2V025', 'topik2_level4_comprehensive', 1, 2, 25,
 '합리적', '관형사',
 '이론이나 이치에 합당한; 가격이나 조건이 적절한',
 'reasonable; rational',
 '합리적인 가격에 좋은 서비스를 제공하는 것이 이 가게의 원칙이다.',
 'Providing good service at a reasonable price is this store''s principle.',
 false),

-- 26
('W1D2V026', 'topik2_level4_comprehensive', 1, 2, 26,
 '선호하다', '동사',
 '여럿 중에서 특별히 더 좋아하다',
 'to prefer',
 '젊은 층은 전통적인 방식보다 디지털 방식을 선호하는 편이다.',
 'Young people tend to prefer digital methods over traditional methods.',
 false),

-- 27
('W1D2V027', 'topik2_level4_comprehensive', 1, 2, 27,
 '비슷하다', '형용사',
 '두 대상이 완전히 같지는 않으나 거의 같다',
 'to be similar; alike',
 '두 회사의 제품 디자인이 너무 비슷해서 구분하기 어렵다.',
 'The product designs of the two companies are so similar that it is difficult to tell them apart.',
 false),

-- 28
('W1D2V028', 'topik2_level4_comprehensive', 1, 2, 28,
 '반대', '명사',
 '방향, 위치, 성질 등이 정반대인 것; 찬성하지 않는 것',
 'opposite; opposition',
 '두 사람의 의견이 정반대여서 결론을 내리기 어려웠다.',
 'The opinions of the two people were complete opposites, so it was difficult to reach a conclusion.',
 false),

-- 29
('W1D2V029', 'topik2_level4_comprehensive', 1, 2, 29,
 '대신', '명사/부사',
 '어떤 대상의 역할을 바꾸어 하는 것; 그에 상응하는 보상으로',
 'instead; in place of; in return',
 '버스 대신 지하철을 이용하면 더 빨리 도착할 수 있다.',
 'If you use the subway instead of the bus, you can arrive faster.',
 false),

-- 30
('W1D2V030', 'topik2_level4_comprehensive', 1, 2, 30,
 '오히려', '부사',
 '예상이나 기대와는 반대로 되게; 도리어',
 'rather; on the contrary; instead',
 '약을 먹었는데 오히려 상태가 더 나빠졌다.',
 'I took medicine, but my condition got worse rather than better.',
 false),

-- 31
('W1D2V031', 'topik2_level4_comprehensive', 1, 2, 31,
 '한편', '명사/부사',
 '그 반면에; 동시에 또 다른 측면에서는',
 'on the other hand; meanwhile',
 '경제는 성장하고 있는 한편, 환경 문제는 점점 심각해지고 있다.',
 'While the economy is growing, environmental problems are becoming increasingly serious.',
 false),

-- 32
('W1D2V032', 'topik2_level4_comprehensive', 1, 2, 32,
 '달리', '부사',
 '다르게; 다른 방식으로; (무엇과) 다르게',
 'differently; unlike',
 '예상과 달리 시험 결과가 매우 좋았다.',
 'Unlike expectations, the test results were very good.',
 false),

-- 33
('W1D2V033', 'topik2_level4_comprehensive', 1, 2, 33,
 '상대적', '관형사',
 '다른 것과의 관계 속에서 존재하거나 나타나는',
 'relative; comparative',
 '물가가 올랐지만 임금 상승률이 더 낮아 상대적으로 생활이 어려워졌다.',
 'Prices rose, but the wage increase rate was lower, making life relatively more difficult.',
 false),

-- 34
('W1D2V034', 'topik2_level4_comprehensive', 1, 2, 34,
 '절대적', '관형사',
 '어떤 것에도 제한되거나 구속되지 않는; 비교할 대상이 없는',
 'absolute',
 '성공에는 절대적인 기준이 없고 사람마다 다르게 정의된다.',
 'There is no absolute standard for success; it is defined differently by each person.',
 false),

-- 35
('W1D2V035', 'topik2_level4_comprehensive', 1, 2, 35,
 '객관적', '관형사',
 '자신의 감정이나 의견을 개입시키지 않고 사실에 근거하는',
 'objective',
 '평가는 개인적 감정이 아닌 객관적인 기준에 따라 이루어져야 한다.',
 'Evaluation should be based on objective criteria, not personal feelings.',
 false),

-- 36
('W1D2V036', 'topik2_level4_comprehensive', 1, 2, 36,
 '주관적', '관형사',
 '개인의 관점이나 감정에 치우친',
 'subjective',
 '미술 작품에 대한 평가는 매우 주관적일 수 있다.',
 'Evaluation of artwork can be very subjective.',
 false),

-- 37
('W1D2V037', 'topik2_level4_comprehensive', 1, 2, 37,
 '긍정적', '관형사',
 '어떤 것을 좋게 바라보거나 받아들이는',
 'positive',
 '새로운 정책에 대해 긍정적인 반응이 많았다.',
 'There were many positive responses to the new policy.',
 false),

-- 38
('W1D2V038', 'topik2_level4_comprehensive', 1, 2, 38,
 '부정적', '관형사',
 '어떤 것을 나쁘게 바라보거나 반대하는',
 'negative',
 '과도한 소셜 미디어 사용은 정신 건강에 부정적인 영향을 미칠 수 있다.',
 'Excessive social media use can have a negative impact on mental health.',
 false),

-- 39
('W1D2V039', 'topik2_level4_comprehensive', 1, 2, 39,
 '요인', '명사',
 '어떤 사물이나 현상이 생기거나 변화하는 데 원인이 되는 요소',
 'factor; element',
 '저출산의 주요 요인 중 하나는 높은 양육비이다.',
 'One of the main factors of low birth rates is the high cost of raising children.',
 false),

-- 40
('W1D2V040', 'topik2_level4_comprehensive', 1, 2, 40,
 '측면', '명사',
 '어떤 사물이나 현상의 한쪽 방향이나 부분; 관점의 한 면',
 'aspect; side; dimension',
 '환경 문제는 경제적 측면과 사회적 측면 모두에서 살펴야 한다.',
 'Environmental issues must be examined from both economic and social aspects.',
 false),

-- 41
('W1D2V041', 'topik2_level4_comprehensive', 1, 2, 41,
 '관점', '명사',
 '사물이나 현상을 바라보는 입장이나 태도',
 'perspective; viewpoint',
 '같은 사실도 어떤 관점에서 보느냐에 따라 다르게 해석될 수 있다.',
 'The same fact can be interpreted differently depending on which perspective you look at it from.',
 false),

-- 42
('W1D2V042', 'topik2_level4_comprehensive', 1, 2, 42,
 '기준', '명사',
 '판단, 평가, 결정 등의 근거가 되는 원칙이나 규범',
 'standard; criterion; basis',
 '합격 기준을 명확히 알아야 준비를 제대로 할 수 있다.',
 'You need to clearly know the passing criteria to prepare properly.',
 false),

-- 43
('W1D2V043', 'topik2_level4_comprehensive', 1, 2, 43,
 '평가하다', '동사',
 '사물의 가치나 수준을 판단하다',
 'to evaluate; to assess',
 '단순히 결과만으로 사람을 평가하는 것은 공정하지 않다.',
 'It is not fair to evaluate a person simply based on results.',
 false),

-- 44
('W1D2V044', 'topik2_level4_comprehensive', 1, 2, 44,
 '부족하다', '형용사',
 '어떤 기준에 미치지 못하거나 필요한 만큼 충분하지 않다 (비교의 맥락)',
 'to be insufficient; lacking (in comparative context)',
 '경쟁 제품에 비해 내구성이 부족하다는 평가를 받았다.',
 'It received an evaluation that durability is lacking compared to competing products.',
 false),

-- 45
('W1D2V045', 'topik2_level4_comprehensive', 1, 2, 45,
 '두드러지다', '동사',
 '다른 것보다 훨씬 뚜렷하게 드러나다',
 'to be prominent; stand out; be noticeable',
 '두 집단의 소득 격차가 최근 들어 더욱 두드러지고 있다.',
 'The income gap between the two groups has become more prominent in recent years.',
 false);


-- ─────────────────────────────────────────────────
-- SECTION 2: GRAMMAR (9 patterns)
-- ─────────────────────────────────────────────────
INSERT INTO topik_grammar
  (id, course_id, week_number, day_number, display_order,
   pattern, meaning, explanation,
   example1_ko, example1_en,
   example2_ko, example2_en,
   example3_ko, example3_en,
   example4_ko, example4_en,
   grammar_role, form_table, usage_context, caution,
   comparison_note, reading_function, writing_function,
   writing_template, related_grammar_ids)
VALUES

-- ─────────────────────────────
-- W1D2G001: -에 비해서
-- ─────────────────────────────
('W1D2G001', 'topik2_level4_comprehensive', 1, 2, 1,
 '-에 비해서',
 '~와 비교해서; compared to ~',
 '명사 뒤에 붙어 비교의 기준을 나타낸다. "에 비해(서)"는 앞에 오는 대상을 기준점으로 설정하고, 뒤 문장에서 그 기준과 다른 점을 제시한다. 비교 대조를 논리적으로 전개할 때 핵심 표현이다.',
 '작년에 비해서 올해 물가가 많이 올랐다.',
 'Compared to last year, prices have risen a lot this year.',
 '다른 나라에 비해서 한국의 인터넷 속도가 매우 빠른 편이다.',
 'Compared to other countries, South Korea''s internet speed is very fast.',
 '남성에 비해서 여성의 평균 수명이 더 긴 것으로 나타났다.',
 'It has been found that women''s average life expectancy is longer compared to men.',
 '기대에 비해서 결과가 실망스러웠다.',
 'The result was disappointing compared to expectations.',
 'comparison',
 '[{"form": "명사 + 에 비해서", "example": "작년에 비해서"}, {"form": "명사 + 에 비해", "example": "예상에 비해"}, {"form": "명사 + 에 비하면", "example": "다른 나라에 비하면"}]',
 '문어체·구어체 모두 사용 가능. 공식 보고서, 뉴스, 일상 대화 전 영역에서 폭넓게 쓰인다.',
 '"에 비해서"는 명사와만 결합한다. 동사나 형용사와 결합하려면 "-는 것에 비해서" 형태로 바꾸어야 한다.',
 '"-는 반면에"와 유사하지만, "-에 비해서"는 수치·정도의 차이를 강조할 때, "-는 반면에"는 성질이나 특성의 대조에 더 자주 쓰인다.',
 '그래프나 표의 수치 비교 지문에서 주어 전환 없이 기준점을 명확히 할 때 핵심 단서 표현.',
 '54번 비교·대조 쓰기에서 두 대상의 차이를 수치와 함께 제시할 때 첫 문장에 사용.',
 '[비교 대상 A]에 비해서 [비교 대상 B]는 [차이점].',
 ARRAY['W1D2G002', 'W1D2G004']),

-- ─────────────────────────────
-- W1D2G002: -는 반면에
-- ─────────────────────────────
('W1D2G002', 'topik2_level4_comprehensive', 1, 2, 2,
 '-는 반면에',
 '~인 한편; on the other hand / whereas',
 '동사·형용사 어간에 결합하여 앞 절과 뒤 절이 서로 대조되는 사실을 나타낸다. 두 가지 속성이나 상황이 같은 주어 혹은 다른 주어에서 대립적으로 나타날 때 사용한다.',
 '이 약은 효과가 빠른 반면에 부작용이 있을 수 있다.',
 'This medicine works quickly, whereas it may have side effects.',
 '도시는 생활이 편리한 반면에 공기 오염이 심각하다.',
 'Life in the city is convenient, whereas air pollution is serious.',
 '형은 외향적인 반면에 동생은 내성적이다.',
 'The older brother is extroverted, whereas the younger brother is introverted.',
 '온라인 수업은 장소에 구애받지 않는 반면에 집중하기가 어렵다.',
 'Online classes are not restricted by location, whereas it is hard to concentrate.',
 'comparison',
 '[{"form": "동사 어간 + 는 반면에", "example": "편리한 반면에 → 형용사 어간 + ㄴ/은 반면에"}, {"form": "형용사 어간 + ㄴ/은 반면에", "example": "빠른 반면에"}, {"form": "명사 + 인 반면에", "example": "장점인 반면에"}]',
 '구어체보다 문어체에서 더 자연스럽다. 앞 절과 뒤 절의 주어가 같을 때와 다를 때 모두 사용 가능하다.',
 '"반면에" 앞에는 보통 긍정적 특성이 오고 뒤에는 부정적 특성(또는 그 반대)이 온다. 순서를 바꾸어도 문법적으로 맞지만 글의 흐름이 달라진다.',
 '"-는 반면에"는 절과 절을 연결하는 접속어미이고, "반면에"(W1D2G004)는 문장과 문장을 연결하는 독립 접속 부사이다.',
 'TOPIK 읽기에서 역접·대조 관계를 나타내는 지문 구조 파악의 핵심 표현.',
 '54번 쓰기에서 A의 특성과 B의 특성을 한 문장 안에서 대비할 때 사용.',
 '[A]는 [특성1]인 반면에 [B]는 [특성2]이다.',
 ARRAY['W1D2G001', 'W1D2G004', 'W1D2G005']),

-- ─────────────────────────────
-- W1D2G003: -도록
-- ─────────────────────────────
('W1D2G003', 'topik2_level4_comprehensive', 1, 2, 3,
 '-도록',
 '~하게끔; ~할 정도로; so that / in order to / to the extent that',
 '동사 어간에 결합하여 ① 목적·의도 ("~하기 위하여"), ② 결과·정도 ("~할 만큼"), ③ 지시·요청의 세 가지 의미로 사용된다. 비교 대조 글에서는 주로 ①번 용법으로 목적 기술에 쓰인다.',
 '두 제품을 쉽게 비교할 수 있도록 표로 정리했다.',
 'I organized it into a table so that the two products could be compared easily.',
 '차이가 명확히 드러나도록 그래프를 함께 제시했다.',
 'I presented a graph together so that the differences would be clearly visible.',
 '밤늦도록 공부했지만 시험 결과가 좋지 않았다.',
 'I studied until late at night, but the test results were not good.',
 '모두가 이해할 수 있도록 쉬운 말로 설명해 주세요.',
 'Please explain in simple words so that everyone can understand.',
 'core',
 '[{"form": "동사 어간 + 도록", "example": "비교할 수 있도록"}, {"form": "동사 어간 + 도록 하다", "example": "준비하도록 하다 (지시 표현)"}]',
 '문어체·구어체 모두 사용. 특히 목적 표현에서 "-기 위해서"와 교환 가능한 경우가 많다.',
 '"도록"은 앞 절과 뒤 절의 주어가 다를 수 있다는 점에서 "-기 위해"와 구별된다. "-기 위해"는 주어가 동일해야 한다.',
 '"-기 위해서": 주어 동일 필수. "-도록": 주어 달라도 됨. "밤새도록"처럼 시간적 지속의 의미로도 쓰임.',
 '목적·방법 지문에서 "-도록" 뒤에 오는 내용이 핵심 행동임을 파악.',
 '54번 쓰기에서 두 대상의 비교 목적이나 방향 기술 시 사용.',
 '[결과·목표]가 실현되도록 [방법·행동]이 필요하다.',
 ARRAY['W1D2G001', 'W1D2G009']),

-- ─────────────────────────────
-- W1D2G004: 반면에 (접속 부사)
-- ─────────────────────────────
('W1D2G004', 'topik2_level4_comprehensive', 1, 2, 4,
 '반면에',
 '그 반대쪽에서는; 그와는 달리; on the other hand',
 '문장과 문장 사이에 위치하는 접속 부사로, 앞 문장의 내용과 대조되는 내용을 뒤 문장에서 제시할 때 사용한다. "-는 반면에"가 절 내부 연결이라면, "반면에"는 독립 문장들 사이에서 사용된다.',
 '전통 시장은 가격이 저렴하다. 반면에 대형 마트는 종류가 훨씬 다양하다.',
 'Traditional markets are inexpensive. On the other hand, large supermarkets have a much wider variety.',
 '독서는 집중력을 키워준다. 반면에 동영상 시청은 집중력을 낮추는 경향이 있다.',
 'Reading builds concentration. On the other hand, watching videos tends to lower concentration.',
 '전기차는 연료비가 적게 든다. 반면에 초기 구매 비용이 높다.',
 'Electric cars cost less in fuel. On the other hand, the initial purchase cost is high.',
 '남성의 취업률은 높아졌다. 반면에 여성의 취업률은 큰 변화가 없었다.',
 'The employment rate of men increased. On the other hand, the employment rate of women showed little change.',
 'reading_connector',
 '[{"form": "문장. 반면에 + 문장.", "example": "가격이 싸다. 반면에 품질이 낮다."}]',
 '문어체에서 주로 사용. 두 문장이 분명한 대조 관계일 때 쓰며, 담화 표지로서 글의 구조를 명확히 한다.',
 '"반면에"는 문장 첫머리에 오는 독립 접속 부사다. "반면에"가 절 안에 내포되면 "-는 반면에" 형태가 된다. 혼동하지 말 것.',
 '"그러나"(W1D2G005)와 달리 "반면에"는 단순 역접이 아니라 두 측면이 동시에 존재함을 강조한다.',
 'TOPIK 읽기에서 두 번째 문단 첫 문장에 자주 등장하여 글의 대조 구조를 예고하는 신호어.',
 '54번 쓰기 2단락에서 첫 번째 대상의 특성 서술 후 두 번째 대상 소개 시 사용.',
 '[대상 A]는 [특성1]이다. 반면에 [대상 B]는 [특성2]이다.',
 ARRAY['W1D2G002', 'W1D2G005', 'W1D2G006']),

-- ─────────────────────────────
-- W1D2G005: 그러나
-- ─────────────────────────────
('W1D2G005', 'topik2_level4_comprehensive', 1, 2, 5,
 '그러나',
 '하지만; however; but',
 '앞 문장과 뒤 문장을 역접 관계로 연결하는 접속 부사. 앞의 내용을 인정하면서도 그와 반대되거나 예상을 뒤엎는 사실을 뒤에 제시할 때 사용한다. 문어체에서 특히 자주 쓰인다.',
 '가격이 저렴하다는 것은 분명한 장점이다. 그러나 품질 면에서는 아직 개선이 필요하다.',
 'It is certainly an advantage that the price is low. However, there is still room for improvement in terms of quality.',
 '노력은 중요하다. 그러나 방향이 맞지 않으면 좋은 결과를 얻기 어렵다.',
 'Effort is important. However, if the direction is wrong, it is difficult to achieve good results.',
 '두 제품의 성능은 비슷하다. 그러나 가격 차이가 두 배에 달한다.',
 'The performance of the two products is similar. However, the price difference is up to twice as much.',
 '환경 보호는 중요하다. 그러나 경제 성장을 무시할 수도 없다.',
 'Environmental protection is important. However, economic growth cannot be ignored either.',
 'reading_connector',
 '[{"form": "문장. 그러나 + 문장.", "example": "장점이 있다. 그러나 단점도 있다."}]',
 '격식체 문어 표현. 뉴스, 보고서, 논설문에서 빈번히 등장한다. 구어체에서는 "하지만", "근데"로 대체된다.',
 '"그러나"는 앞 내용을 완전히 부정하는 것이 아니라 다른 측면을 추가로 제시하는 기능을 한다.',
 '"반면에"(W1D2G004)는 두 측면을 병렬적으로 대조, "그러나"는 앞 내용을 인정 후 역전. "그런데"는 구어체, "그러나"는 문어체.',
 'TOPIK 읽기에서 글의 흐름이 전환되는 지점에서 등장. 뒤 내용이 필자의 핵심 주장이 되는 경우가 많다.',
 '54번 쓰기에서 비교 대상의 한계나 예외를 언급할 때 단락 전환 표지로 사용.',
 '[A의 장점 또는 통념]. 그러나 [B의 특성 또는 반론].',
 ARRAY['W1D2G004', 'W1D2G006']),

-- ─────────────────────────────
-- W1D2G006: 반대로
-- ─────────────────────────────
('W1D2G006', 'topik2_level4_comprehensive', 1, 2, 6,
 '반대로',
 '거꾸로; 정반대로; on the contrary; conversely',
 '앞에서 서술한 내용과 완전히 반대되는 상황이나 결과를 도입할 때 사용하는 접속 부사. "반면에"보다 대조의 강도가 강하며, 완전한 반전 또는 역방향의 관계를 나타낸다.',
 '소비가 늘면 보통 저축이 줄어든다. 반대로 소비가 줄면 저축이 늘어나는 경향이 있다.',
 'When consumption increases, savings usually decrease. Conversely, when consumption decreases, savings tend to increase.',
 '도시 인구는 계속 증가하고 있다. 반대로 농촌 인구는 꾸준히 감소하고 있다.',
 'The urban population continues to increase. Conversely, the rural population is steadily decreasing.',
 '이 정책은 부유층에게 유리하다. 반대로 저소득층에게는 부담이 된다.',
 'This policy is advantageous for the wealthy. Conversely, it is a burden for low-income groups.',
 '운동을 많이 할수록 체력이 좋아진다. 반대로 운동 부족은 건강을 악화시킨다.',
 'The more you exercise, the better your physical fitness becomes. Conversely, lack of exercise worsens health.',
 'reading_connector',
 '[{"form": "문장. 반대로 + 문장.", "example": "A가 증가한다. 반대로 B는 감소한다."}]',
 '격식체 문어에서 주로 사용. 완전히 반대 방향의 사실이나 경향을 나타낼 때 적합하다.',
 '"반대로"는 의미상 완전한 대립(역방향)을 나타내므로, 단순한 차이나 부분적 대조에는 어색하다.',
 '"반면에"는 부분 대조·병렬 대조에, "반대로"는 완전 역전·정반대 상황에 사용.',
 'TOPIK 읽기 그래프 해석 지문에서 한 변수의 증감이 다른 변수의 역방향 변화와 연결될 때 등장.',
 '54번 쓰기에서 두 대상의 관계가 반비례하거나 정반대 방향일 때 사용.',
 '[현상 A]. 반대로 [현상 B].',
 ARRAY['W1D2G004', 'W1D2G005']),

-- ─────────────────────────────
-- W1D2G007: 차이가 있다
-- ─────────────────────────────
('W1D2G007', 'topik2_level4_comprehensive', 1, 2, 7,
 '차이가 있다',
 '서로 다른 점이 존재하다; there is a difference',
 '"차이가 있다/없다", "차이가 크다/작다", "차이를 보이다" 등의 형태로 비교 글에서 결론부 또는 주제 문장에 자주 사용되는 핵심 서술 표현이다. 단순 서술부터 정도·방향의 부가 정보를 함께 제시하는 방식까지 다양하게 활용된다.',
 '두 지역의 기후에는 뚜렷한 차이가 있다.',
 'There is a distinct difference in the climate of the two regions.',
 '남녀 간 임금 차이가 아직도 크게 나타나고 있다.',
 'The wage gap between men and women is still large.',
 '연령대별로 소셜 미디어 사용 시간에 큰 차이가 있는 것으로 조사되었다.',
 'A survey found that there are large differences in social media usage time by age group.',
 '두 제품은 외형은 비슷하지만 내부 성능에서 차이를 보인다.',
 'The two products look similar on the outside, but show a difference in internal performance.',
 'writing_pattern',
 '[{"form": "명사 + 에 차이가 있다", "example": "가격에 차이가 있다"}, {"form": "명사 + 차이가 크다/작다", "example": "성능 차이가 크다"}, {"form": "명사 + 차이를 보이다", "example": "차이를 보인다"}]',
 '문어체에서 주로 사용. 비교 대조 글의 주제문, 결론문에 자주 등장한다.',
 '"차이가 있다" 단독으로는 의미가 약할 수 있다. "뚜렷한/큰/작은/별다른" 등의 수식어를 붙여 정도를 나타내는 것이 효과적이다.',
 '"공통점이 있다"와 반대 관계. 비교 대조 글에서 대조점 서술 시 "차이가 있다", 공통점 서술 시 "공통점이 있다"를 짝으로 사용.',
 '읽기 지문에서 비교 표나 그래프의 핵심 결론 문장에 "차이가 나타난다/차이를 보인다" 형태로 자주 등장.',
 '54번 쓰기 결론 문단에서 두 대상의 비교 결과를 한 문장으로 정리할 때 사용.',
 '[대상 A]와 [대상 B]는 [항목]에서 차이가 있다. 구체적으로 [A의 수치/특성]인 반면 [B는 수치/특성]이다.',
 ARRAY['W1D2G001', 'W1D2G002']),

-- ─────────────────────────────
-- W1D2G008: 증가하다/감소하다 (대조적 활용)
-- ─────────────────────────────
('W1D2G008', 'topik2_level4_comprehensive', 1, 2, 8,
 '증가하다 / 감소하다',
 '늘어나다 / 줄어들다; to increase / to decrease (in contrastive usage)',
 '수치나 양의 변화를 나타내는 동사로, 비교·대조 글에서 두 대상이나 두 시점을 대비할 때 핵심적으로 사용된다. "반면에", "반대로" 등과 함께 사용하여 대조 관계를 강화한다. 유사어: 늘다/줄다, 상승하다/하락하다, 높아지다/낮아지다.',
 '스마트폰 사용 시간이 증가하는 반면에, 독서 시간은 감소하고 있다.',
 'While smartphone usage time is increasing, reading time is decreasing.',
 '도시 인구는 꾸준히 증가하고 있지만, 농촌 인구는 매년 감소하는 추세이다.',
 'The urban population is steadily increasing, but the rural population shows a decreasing trend every year.',
 '소득이 증가함에 따라 소비도 함께 증가하는 경향이 있다.',
 'As income increases, consumption also tends to increase.',
 '출산율이 감소하면서 학령인구도 함께 감소하고 있다.',
 'As the birth rate decreases, the school-age population is also decreasing.',
 'writing_pattern',
 '[{"form": "명사가/이 증가하다", "example": "소비가 증가하다"}, {"form": "명사가/이 감소하다", "example": "인구가 감소하다"}, {"form": "증가하는 반면에 감소하다", "example": "A는 증가하는 반면에 B는 감소한다"}, {"form": "증가 추세 / 감소 추세", "example": "증가하는 추세를 보이다"}]',
 '문어체 특히 보고서, 뉴스, 학술문에서 빈번히 사용. TOPIK 읽기 그래프 해석 지문의 핵심 어휘.',
 '"늘다/줄다"는 구어체, "증가하다/감소하다"는 문어체. TOPIK 쓰기에서는 반드시 문어체 형태를 사용할 것.',
 '"상승하다/하락하다": 주로 가격·지수에 사용. "높아지다/낮아지다": 비율·수준에 사용. "증가하다/감소하다"는 양·수에 가장 넓게 사용.',
 'TOPIK 읽기 52번(그래프 설명 지문)에서 반드시 등장하는 어휘. 수치 변화 방향과 함께 파악 필요.',
 '54번 쓰기 본론에서 두 항목의 변화 추이를 대조 서술할 때 "-는 반면에"와 결합하여 사용.',
 '[항목 A]는 [수치/비율]로 증가한 반면에, [항목 B]는 [수치/비율]로 감소하였다.',
 ARRAY['W1D2G002', 'W1D2G004', 'W1D2G009']),

-- ─────────────────────────────
-- W1D2G009: -는 경향이 있다
-- ─────────────────────────────
('W1D2G009', 'topik2_level4_comprehensive', 1, 2, 9,
 '-는 경향이 있다',
 '~하는 편이다; tends to ~; has a tendency to ~',
 '동사 어간 뒤에 결합하여 일반적인 경향이나 추세를 나타낸다. 단정적인 주장보다 부드러운 일반화 표현으로, 비교 대조 글에서 두 집단이나 대상의 행동·특성 차이를 서술할 때 자주 사용된다.',
 '도시 사람들은 농촌 사람들에 비해 개인주의적인 성향을 보이는 경향이 있다.',
 'Urban people tend to show more individualistic tendencies compared to rural people.',
 '가격이 높을수록 품질도 좋을 것이라고 생각하는 경향이 있다.',
 'There is a tendency to think that the higher the price, the better the quality.',
 '남성은 여성에 비해 위험을 감수하는 경향이 있다는 연구 결과가 있다.',
 'Research results show that men tend to take more risks compared to women.',
 '현대인들은 점점 더 간편한 음식을 선호하는 경향이 있다.',
 'Modern people tend to increasingly prefer convenient food.',
 'writing_pattern',
 '[{"form": "동사 어간 + 는 경향이 있다", "example": "선호하는 경향이 있다"}, {"form": "형용사 어간 + ㄴ/은 경향이 있다", "example": "높은 경향이 있다"}, {"form": "경향을 보이다", "example": "증가하는 경향을 보이다"}, {"form": "경향이 강하다/약하다", "example": "이러한 경향이 더욱 강하다"}]',
 '문어체에서 주로 사용. 단정적인 "-다" 대신 일반적 경향을 조심스럽게 서술할 때 사용하며 학술·보고서 문체에 어울린다.',
 '"경향이 있다"는 100% 확실한 사실이 아닌 일반화이다. TOPIK 쓰기에서 지나치게 단정적인 서술 대신 이 표현을 활용하면 자연스럽다.',
 '"-는 편이다": 구어체, 개인 특성. "-는 경향이 있다": 문어체, 집단적·통계적 경향. TOPIK 쓰기에서는 "-는 경향이 있다"가 더 격식체.',
 '읽기 지문에서 통계·조사 결과를 일반화하여 서술하는 부분에 자주 등장.',
 '54번 쓰기 본론에서 두 집단이나 대상의 행동·특성 차이를 비교할 때 결론 문장으로 사용.',
 '[대상]은/는 [다른 대상]에 비해 [행동/특성]하는 경향이 있다.',
 ARRAY['W1D2G001', 'W1D2G002', 'W1D2G008']);


-- ─────────────────────────────────────────────────
-- SECTION 3: GRAMMAR QUIZ (26 questions)
-- ─────────────────────────────────────────────────
INSERT INTO topik_grammar_quiz_questions
  (id, course_id, week_number, day_number, grammar_id, display_order, question_text,
   option_a, option_b, option_c, option_d,
   correct_option, explanation, question_type, target_skill,
   answer_text, sample_answer, feedback_text)
VALUES

-- ──────────────────────────────
-- Q01~Q04: meaning_choice — -에 비해서 / -는 반면에
-- ──────────────────────────────

-- Q01
('W1D2GQ001', 'topik2_level4_comprehensive', 1, 2, 'W1D2G001', 1,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"서울은 부산에 비해서 물가가 훨씬 높다."',
 '서울이 부산보다 물가가 높다는 것을 비교하여 표현한다',
 '서울과 부산의 물가가 비슷하다는 것을 나타낸다',
 '부산이 서울보다 물가가 높다는 것을 강조한다',
 '서울의 물가가 과거보다 올랐다는 것을 표현한다',
 'A',
 '"-에 비해서"는 두 대상을 비교할 때 사용하며, "서울의 물가"를 "부산의 물가"와 비교하여 서울이 더 높다는 것을 나타낸다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- Q02
('W1D2GQ002', 'topik2_level4_comprehensive', 1, 2, 'W1D2G001', 2,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"작년에 비해서 올해 취업률이 크게 떨어졌다."',
 '작년과 올해의 취업률을 비교했을 때 올해가 더 낮다',
 '취업률이 작년부터 꾸준히 하락해 왔다',
 '올해 취업률이 기준치 이하로 내려갔다',
 '작년 취업률보다 올해가 더 높다',
 'A',
 '"-에 비해서"는 기준점(작년)과 비교 대상(올해)을 연결하여 차이를 나타낸다. 여기서는 올해 취업률이 작년보다 낮아졌음을 비교 표현으로 서술하고 있다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- Q03
('W1D2GQ003', 'topik2_level4_comprehensive', 1, 2, 'W1D2G002', 3,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"형은 조용한 편인 반면에 동생은 매우 활발하다."',
 '형과 동생의 성격이 서로 대조적임을 나타낸다',
 '형과 동생이 각자 다른 이유로 조용한 것을 설명한다',
 '형이 조용한 것은 동생 때문임을 의미한다',
 '형과 동생의 성격이 점차 비슷해지고 있음을 나타낸다',
 'A',
 '"-는 반면에"는 앞 절과 뒷 절의 내용이 대조됨을 나타내는 연결 표현이다. 형(조용)과 동생(활발)이라는 반대 특성을 연결하고 있다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- Q04
('W1D2GQ004', 'topik2_level4_comprehensive', 1, 2, 'W1D2G002', 4,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"이 제품은 가격이 저렴한 반면에 품질이 떨어진다."',
 '가격이 싸다는 장점과 품질이 낮다는 단점이 대조된다',
 '가격이 싸기 때문에 품질도 당연히 낮다는 것을 설명한다',
 '품질이 낮아서 가격을 낮출 수밖에 없었다는 것을 나타낸다',
 '가격과 품질 모두 평균 수준임을 표현한다',
 'A',
 '"-는 반면에"는 두 가지 대조적인 특성을 연결할 때 사용한다. 가격(저렴함)과 품질(낮음)이라는 서로 대조되는 속성을 하나의 문장 안에 묶어 표현하고 있다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- ──────────────────────────────
-- Q05~Q10: blank_fill
-- ──────────────────────────────

-- Q05
('W1D2GQ005', 'topik2_level4_comprehensive', 1, 2, 'W1D2G001', 5,
 '빈칸에 들어갈 가장 알맞은 표현을 고르십시오.
"남성 ( ) 여성의 평균 수명이 더 길다는 연구 결과가 있다."',
 '에 비해서',
 '와 마찬가지로',
 '에 따르면',
 '를 통해서',
 'A',
 '"남성"과 "여성"을 비교하는 문장이므로 비교 기준을 나타내는 "-에 비해서"가 적절하다. "남성에 비해서 여성의 수명이 더 길다"는 자연스러운 비교 표현이다.',
 'blank_fill', 'grammar',
 NULL, NULL, NULL),

-- Q06
('W1D2GQ006', 'topik2_level4_comprehensive', 1, 2, 'W1D2G002', 6,
 '빈칸에 들어갈 가장 알맞은 표현을 고르십시오.
"도시는 교통이 편리한 ( ) 소음과 공해가 심하다."',
 '반면에',
 '덕분에',
 '결과로',
 '대신에',
 'A',
 '"교통이 편리하다"는 긍정적 측면과 "소음과 공해가 심하다"는 부정적 측면이 대조되므로 "-는 반면에"가 가장 자연스럽다.',
 'blank_fill', 'grammar',
 NULL, NULL, NULL),

-- Q07
('W1D2GQ007', 'topik2_level4_comprehensive', 1, 2, 'W1D2G003', 7,
 '빈칸에 들어갈 가장 알맞은 표현을 고르십시오.
"수업이 끝날 때까지 조용히 기다리( ) 했지만 너무 힘들었다."',
 '도록',
 '지만',
 '더라도',
 '면서',
 'A',
 '"-도록"은 목표·방향을 나타내며 "조용히 기다리도록 했지만"은 그렇게 되도록 노력했으나 힘들었다는 의미로 자연스럽다.',
 'blank_fill', 'grammar',
 NULL, NULL, NULL),

-- Q08
('W1D2GQ008', 'topik2_level4_comprehensive', 1, 2, 'W1D2G005', 8,
 '빈칸에 들어갈 가장 알맞은 표현을 고르십시오.
"두 나라의 교육 방식은 상당한 ( )가 있다."',
 '차이',
 '관계',
 '영향',
 '결과',
 'A',
 '"두 나라의 교육 방식"을 비교한 결과 "상당한 차이가 있다"는 표현이 가장 자연스럽다. "차이가 있다"는 두 대상 간의 다름을 객관적으로 서술하는 비교 표현이다.',
 'blank_fill', 'grammar',
 NULL, NULL, NULL),

-- Q09
('W1D2GQ009', 'topik2_level4_comprehensive', 1, 2, 'W1D2G009', 9,
 '빈칸에 들어갈 가장 알맞은 표현을 고르십시오.
"현대인들은 건강에 관심이 많아져서 유기농 식품을 선호하는 ( )."',
 '경향이 있다',
 '것으로 보인다',
 '셈이다',
 '편이다',
 'A',
 '"선호하는 경향이 있다"는 일반적인 추세나 경향을 나타내는 문어체 표현으로, 통계·조사 결과를 서술할 때 가장 적합하다. "-는 편이다"는 구어체로 어울리지 않는다.',
 'blank_fill', 'grammar',
 NULL, NULL, NULL),

-- Q10
('W1D2GQ010', 'topik2_level4_comprehensive', 1, 2, 'W1D2G001', 10,
 '빈칸에 들어갈 가장 알맞은 표현을 고르십시오.
"예상 ( ) 실제 결과가 훨씬 좋게 나왔다."',
 '에 비해서',
 '에 대해서',
 '에 의해서',
 '에 관해서',
 'A',
 '"예상"을 기준으로 "실제 결과"를 비교하는 문장이다. "-에 비해서"는 비교 기준을 나타내며 "예상에 비해서 실제 결과가 훨씬 좋다"는 자연스러운 표현이다.',
 'blank_fill', 'grammar',
 NULL, NULL, NULL),

-- ──────────────────────────────
-- Q11~Q16: sentence_connect
-- ──────────────────────────────

-- Q11
('W1D2GQ011', 'topik2_level4_comprehensive', 1, 2, 'W1D2G004', 11,
 '두 문장을 가장 자연스럽게 연결하는 표현을 고르십시오.
앞 문장: "버스는 환승이 편리하다."
뒷 문장: "지하철은 정시 도착이 더 정확하다."',
 '버스는 환승이 편리한 반면에 지하철은 정시 도착이 더 정확하다.',
 '버스는 환승이 편리해서 지하철은 정시 도착이 더 정확하다.',
 '버스는 환승이 편리하지만 그러나 지하철도 정시 도착이 정확하다.',
 '버스는 환승이 편리하고 지하철은 정시 도착이 정확한 편이다.',
 'A',
 '두 문장은 버스와 지하철의 각각 다른 장점을 대조하고 있으므로 "-는 반면에"로 연결하는 것이 가장 자연스럽다.',
 'sentence_connect', 'grammar',
 NULL, NULL, NULL),

-- Q12
('W1D2GQ012', 'topik2_level4_comprehensive', 1, 2, 'W1D2G004', 12,
 '두 문장을 가장 자연스럽게 연결하는 표현을 고르십시오.
앞 문장: "전통 시장은 가격이 저렴하다."
뒷 문장: "대형 마트는 품질이 균일하다."',
 '전통 시장은 가격이 저렴한 반면에 대형 마트는 품질이 균일하다.',
 '전통 시장은 가격이 저렴하기 때문에 대형 마트는 품질이 균일하다.',
 '전통 시장은 가격이 저렴하므로 대형 마트의 품질이 균일해진다.',
 '전통 시장은 가격도 저렴하고 대형 마트도 품질이 균일하다.',
 'A',
 '"가격이 저렴하다"와 "품질이 균일하다"는 두 대상(전통 시장, 대형 마트)의 서로 다른 특성을 대조하는 것이므로 "-는 반면에"가 적절하다.',
 'sentence_connect', 'grammar',
 NULL, NULL, NULL),

-- Q13
('W1D2GQ013', 'topik2_level4_comprehensive', 1, 2, 'W1D2G005', 13,
 '두 문장을 가장 자연스럽게 연결하는 표현을 고르십시오.
앞 문장: "두 제품의 디자인은 비슷하다."
뒷 문장: "성능 면에서는 큰 차이가 있다."',
 '두 제품의 디자인은 비슷한 반면에 성능 면에서는 큰 차이가 있다.',
 '두 제품의 디자인은 비슷하지만 성능 면에서도 큰 차이가 있다.',
 '두 제품의 디자인이 비슷하기 때문에 성능 면에서 차이가 생겼다.',
 '두 제품은 디자인과 성능 모두 차이가 있다.',
 'A',
 '디자인(유사)과 성능(차이)의 대조 관계를 자연스럽게 연결하는 "-는 반면에"가 가장 적합하다.',
 'sentence_connect', 'grammar',
 NULL, NULL, NULL),

-- Q14
('W1D2GQ014', 'topik2_level4_comprehensive', 1, 2, 'W1D2G006', 14,
 '두 문장을 가장 자연스럽게 연결하는 표현을 고르십시오.
앞 문장: "한국의 여름은 덥고 습하다."
뒷 문장: "캐나다의 여름은 시원하고 건조하다."',
 '한국의 여름은 덥고 습한 반면에 캐나다의 여름은 시원하고 건조하다.',
 '한국의 여름이 덥고 습해서 캐나다의 여름도 시원하고 건조하다.',
 '한국의 여름은 덥고 습하지만 그러나 캐나다도 여름이 있다.',
 '한국의 여름은 덥고 습하기 때문에 캐나다의 여름과 다르다.',
 'A',
 '두 나라 여름 날씨의 대조(덥고 습함 vs. 시원하고 건조함)를 가장 명확하게 표현하는 연결 표현은 "-는 반면에"이다.',
 'sentence_connect', 'grammar',
 NULL, NULL, NULL),

-- Q15
('W1D2GQ015', 'topik2_level4_comprehensive', 1, 2, 'W1D2G006', 15,
 '두 문장을 가장 자연스럽게 연결하는 표현을 고르십시오.
앞 문장: "A 아파트는 교통이 편리하다."
뒷 문장: "B 아파트는 자연환경이 쾌적하다."',
 'A 아파트는 교통이 편리한 반면에 B 아파트는 자연환경이 쾌적하다.',
 'A 아파트는 교통이 편리하지만 B 아파트도 자연환경이 쾌적하다.',
 'A 아파트는 교통이 편리하기 때문에 B 아파트의 자연환경이 쾌적하다.',
 'A 아파트는 교통도 편리하고 B 아파트도 자연환경이 쾌적하다.',
 'A',
 '두 아파트의 서로 다른 장점(교통 편리성 vs. 자연환경)을 대조하는 가장 자연스러운 연결은 "-는 반면에"이다.',
 'sentence_connect', 'grammar',
 NULL, NULL, NULL),

-- Q16
('W1D2GQ016', 'topik2_level4_comprehensive', 1, 2, 'W1D2G004', 16,
 '두 문장을 가장 자연스럽게 연결하는 표현을 고르십시오.
앞 문장: "이 운동은 체중 감량에 효과적이다."
뒷 문장: "관절에 무리를 줄 수 있다."',
 '이 운동은 체중 감량에 효과적인 반면에 관절에 무리를 줄 수 있다.',
 '이 운동은 체중 감량에 효과적이어서 관절에 무리를 줄 수 있다.',
 '이 운동은 체중 감량에 효과적이므로 관절에도 좋다.',
 '이 운동은 체중 감량에 효과적이고 관절에 무리를 줄 수 있다.',
 'A',
 '"효과적이다"(긍정)와 "관절에 무리를 줄 수 있다"(부정)의 대조 관계를 나타내므로 "-는 반면에"가 가장 적합하다.',
 'sentence_connect', 'grammar',
 NULL, NULL, NULL),

-- ──────────────────────────────
-- Q17~Q22: meaning_choice — -도록, 차이가 있다, -는 경향이 있다
-- ──────────────────────────────

-- Q17
('W1D2GQ017', 'topik2_level4_comprehensive', 1, 2, 'W1D2G003', 17,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"건강을 유지하도록 매일 운동을 한다."',
 '건강을 유지하는 것을 목표로 하여 매일 운동한다',
 '건강이 유지되었기 때문에 매일 운동할 수 있다',
 '건강을 유지하는 동안 매일 운동을 계속한다',
 '건강을 유지하는 방법으로 운동만을 선택한다',
 'A',
 '"-도록"은 목표나 의도를 나타내는 연결어미이다. "건강을 유지하도록"은 "건강을 유지하기 위해서"와 같은 의미로, 운동의 목적·목표를 표현한다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- Q18
('W1D2GQ018', 'topik2_level4_comprehensive', 1, 2, 'W1D2G003', 18,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"모든 학생이 이해하도록 천천히 설명했다."',
 '모든 학생이 이해하는 것을 목표로 천천히 설명했다',
 '모든 학생이 이해한 후에 천천히 설명했다',
 '모든 학생이 이해하지 못했기 때문에 천천히 설명했다',
 '모든 학생이 이해한 만큼만 설명을 이어갔다',
 'A',
 '"-도록"은 앞 절의 내용이 이루어지게끔 하는 목표·결과를 나타낸다. "모든 학생이 이해하도록"은 그것을 목표로 삼아 행동(천천히 설명)을 했다는 의미이다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- Q19
('W1D2GQ019', 'topik2_level4_comprehensive', 1, 2, 'W1D2G007', 19,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"두 지역의 강수량에는 뚜렷한 차이가 있다."',
 '두 지역의 강수량이 서로 다르다는 것을 객관적으로 서술한다',
 '두 지역 모두 강수량이 매우 적다는 것을 강조한다',
 '두 지역의 강수량이 같은 기준을 충족하지 못함을 나타낸다',
 '강수량이 두 지역 중 한 곳에만 영향을 준다는 것을 표현한다',
 'A',
 '"차이가 있다"는 두 대상 사이의 다름을 객관적으로 진술하는 표현이다. "뚜렷한 차이가 있다"는 그 차이가 명확하게 관찰된다는 의미이다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- Q20
('W1D2GQ020', 'topik2_level4_comprehensive', 1, 2, 'W1D2G007', 20,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"남녀 간의 언어 사용 방식에 상당한 차이가 있다는 연구가 있다."',
 '남성과 여성이 언어를 사용하는 방식이 서로 다르다는 것을 연구가 보여준다',
 '남성과 여성의 언어 능력이 동등하지 않다는 것을 주장한다',
 '언어 사용 방식이 성별에 따라 개선되어야 한다고 제안한다',
 '남성의 언어 사용 방식이 여성보다 더 복잡하다고 설명한다',
 'A',
 '"차이가 있다"는 두 집단 간의 다름을 사실적으로 서술한다. 여기서는 남녀의 언어 사용 방식이 서로 다르다는 연구 결과를 객관적으로 전달하고 있다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- Q21
('W1D2GQ021', 'topik2_level4_comprehensive', 1, 2, 'W1D2G009', 21,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"젊은 세대는 유행에 민감하게 반응하는 경향이 있다."',
 '젊은 세대가 일반적으로 유행에 빠르게 반응한다는 경향을 서술한다',
 '젊은 세대가 항상 모든 유행을 따른다는 것을 단정한다',
 '젊은 세대가 유행에 반응하는 것이 잘못되었다고 지적한다',
 '유행이 젊은 세대에게 부정적인 영향을 준다는 것을 나타낸다',
 'A',
 '"-는 경향이 있다"는 100% 확실하지 않은 일반적 경향이나 추세를 표현한다. 단정적 서술을 피하면서 집단적 특성을 서술하는 문어체 표현이다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- Q22
('W1D2GQ022', 'topik2_level4_comprehensive', 1, 2, 'W1D2G009', 22,
 '밑줄 친 표현의 의미로 가장 알맞은 것을 고르십시오.
"스트레스를 받으면 단 음식을 찾는 경향이 있다."',
 '스트레스 상황에서 단 음식을 원하는 것이 일반적인 경향임을 나타낸다',
 '스트레스를 받으면 반드시 단 음식을 먹어야 한다는 규칙을 의미한다',
 '단 음식이 스트레스 해소에 효과적임을 과학적으로 증명한다',
 '스트레스를 받는 사람 모두가 단 음식을 좋아한다는 것을 단정한다',
 'A',
 '"-는 경향이 있다"는 개인이 아닌 일반적인 경향을 서술한다. "찾는 경향이 있다"는 그러한 행동이 보편적으로 관찰된다는 완곡한 일반화 표현이다.',
 'meaning_choice', 'grammar',
 NULL, NULL, NULL),

-- ──────────────────────────────
-- Q23~Q26: sentence_making
-- ──────────────────────────────

-- Q23
('W1D2GQ023', 'topik2_level4_comprehensive', 1, 2, 'W1D2G001', 23,
 '다음 조건에 맞게 문장을 만드십시오.
조건: "-에 비해서"를 사용하여 두 도시의 인구 밀도를 비교하는 문장을 쓰십시오.',
 '', '', '', '', 'A', '',
 'sentence_making', 'writing',
 NULL,
 '서울은 부산에 비해서 인구 밀도가 훨씬 높다.',
 '비교 기준이 되는 대상 뒤에 "-에 비해서"를 붙이고, 비교 결과(더 높다/낮다/크다/작다 등)를 명확하게 서술하십시오. "훨씬", "상당히", "약간" 등의 정도 부사를 함께 사용하면 더 자연스럽습니다.'),

-- Q24
('W1D2GQ024', 'topik2_level4_comprehensive', 1, 2, 'W1D2G002', 24,
 '다음 조건에 맞게 문장을 만드십시오.
조건: "-는 반면에"를 사용하여 재택근무와 사무실 근무의 차이점을 한 문장으로 서술하십시오.',
 '', '', '', '', 'A', '',
 'sentence_making', 'writing',
 NULL,
 '재택근무는 이동 시간이 없어 효율적인 반면에 사무실 근무는 동료와의 협업이 원활하다.',
 '앞 절과 뒷 절에 각각 대조되는 특성을 배치하십시오. "-는 반면에" 앞 절에는 한쪽의 특성, 뒷 절에는 다른 쪽의 대조적인 특성을 쓰면 됩니다. 두 대상의 장단점이나 서로 다른 속성을 비교하는 방식으로 작성하십시오.'),

-- Q25
('W1D2GQ025', 'topik2_level4_comprehensive', 1, 2, 'W1D2G009', 25,
 '다음 조건에 맞게 문장을 만드십시오.
조건: "-는 경향이 있다"를 사용하여 현대인의 식습관 변화를 서술하는 문장을 쓰십시오.',
 '', '', '', '', 'A', '',
 'sentence_making', 'writing',
 NULL,
 '현대인들은 바쁜 생활로 인해 간편식이나 배달 음식을 선호하는 경향이 있다.',
 '"동사 어간 + -는 경향이 있다" 형태로 쓰십시오. 특정 집단(현대인, 젊은 세대 등)이 주어가 되어야 하며, 단정적 표현("-다")보다 "-는 경향이 있다"를 사용하면 더 객관적이고 격식체다운 표현이 됩니다.'),

-- Q26
('W1D2GQ026', 'topik2_level4_comprehensive', 1, 2, 'W1D2G001', 26,
 '다음 조건에 맞게 문장을 만드십시오.
조건: "-에 비해서"와 "-는 반면에"를 모두 사용하여 두 나라의 교육 방식을 비교하는 문장 두 개를 쓰십시오.',
 '', '', '', '', 'A', '',
 'sentence_making', 'writing',
 NULL,
 '한국은 핀란드에 비해서 시험 횟수가 훨씬 많다. 핀란드의 교육은 학생의 자율성을 중시하는 반면에 한국의 교육은 성적 경쟁을 강조하는 경향이 있다.',
 '첫 번째 문장에서는 "-에 비해서"로 수치나 양의 차이를 비교하고, 두 번째 문장에서는 "-는 반면에"로 두 나라 교육의 질적 특성 차이를 대조하십시오. 두 표현을 자연스럽게 연결하여 일관성 있는 비교 단락이 되도록 작성하십시오.');


-- ─────────────────────────────────────────────────
-- SECTION 4: READING QUESTIONS (30 questions, W1D2R001~030)
-- Theme: 비교와 대조
-- ─────────────────────────────────────────────────
INSERT INTO topik_reading_questions
  (id, course_id, week_number, day_number, display_order,
   passage_title, passage, question_text,
   option_a, option_b, option_c, option_d,
   correct_option, explanation)
VALUES

-- ── 지문 1: 도서관 이용 시간 변경 안내 (공지문) — Q01~03 ──────────

('W1D2R001', 'topik2_level4_comprehensive', 1, 2, 1,
 '도서관 이용 시간 변경 안내',
 '한국대학교 중앙도서관은 다음 달 1일부터 이용 시간이 변경됩니다. 평일 운영 시간은 기존 오전 9시에서 오후 10시였으나, 앞으로는 오전 8시부터 오후 11시까지로 연장됩니다. 반면에 주말 운영 시간은 오전 10시부터 오후 6시로 기존보다 두 시간 단축됩니다. 열람실 좌석 예약은 도서관 누리집에서만 가능하며, 현장 접수는 받지 않습니다. 대출 도서 반납 기한을 넘길 경우 다음 대출이 제한될 수 있으니 주의하시기 바랍니다.',
 '이 공지문의 중심 내용으로 가장 알맞은 것을 고르십시오.',
 '도서관 좌석 예약 방법이 온라인으로 바뀐다.',
 '도서관 운영 시간이 평일과 주말 모두 늘어난다.',
 '도서관 이용 시간과 좌석 예약 방식이 변경된다.',
 '반납 기한을 어기면 도서관 출입이 금지된다.',
 'C',
 '공지의 핵심은 ①평일 운영 시간 연장, ②주말 운영 시간 단축, ③좌석 예약 방법(온라인 전용) 변경입니다. 이 세 가지를 모두 포함한 C가 정답입니다. B는 주말 시간이 단축된다는 점을 무시했고, A·D는 부분적인 내용만 담고 있습니다.'),

('W1D2R002', 'topik2_level4_comprehensive', 1, 2, 2,
 '도서관 이용 시간 변경 안내',
 '한국대학교 중앙도서관은 다음 달 1일부터 이용 시간이 변경됩니다. 평일 운영 시간은 기존 오전 9시에서 오후 10시였으나, 앞으로는 오전 8시부터 오후 11시까지로 연장됩니다. 반면에 주말 운영 시간은 오전 10시부터 오후 6시로 기존보다 두 시간 단축됩니다. 열람실 좌석 예약은 도서관 누리집에서만 가능하며, 현장 접수는 받지 않습니다. 대출 도서 반납 기한을 넘길 경우 다음 대출이 제한될 수 있으니 주의하시기 바랍니다.',
 '이 공지문의 내용과 일치하는 것을 고르십시오.',
 '평일 운영 시간이 기존보다 한 시간 단축된다.',
 '주말에는 기존보다 도서관을 두 시간 더 이용할 수 있다.',
 '좌석 예약은 도서관 누리집에서만 할 수 있다.',
 '반납 기한을 넘기면 도서관을 출입할 수 없다.',
 'C',
 '지문에서 "열람실 좌석 예약은 도서관 누리집에서만 가능하며, 현장 접수는 받지 않습니다"라고 명확히 밝히고 있으므로 C가 정답입니다. A는 평일이 연장(단축 아님), B는 주말이 단축(연장 아님), D는 출입 금지가 아닌 다음 대출 제한이므로 모두 오답입니다.'),

('W1D2R003', 'topik2_level4_comprehensive', 1, 2, 3,
 '도서관 이용 시간 변경 안내',
 '한국대학교 중앙도서관은 다음 달 1일부터 이용 시간이 변경됩니다. 평일 운영 시간은 기존 오전 9시에서 오후 10시였으나, 앞으로는 오전 8시부터 오후 11시까지로 연장됩니다. 반면에 주말 운영 시간은 오전 10시부터 오후 6시로 기존보다 두 시간 단축됩니다. 열람실 좌석 예약은 도서관 누리집에서만 가능하며, 현장 접수는 받지 않습니다. 대출 도서 반납 기한을 넘길 경우 다음 대출이 제한될 수 있으니 주의하시기 바랍니다.',
 '이 공지문의 내용과 다른 것을 고르십시오.',
 '도서관 운영 시간 변경은 다음 달 1일부터 시행된다.',
 '평일에는 기존보다 더 일찍 도서관을 이용할 수 있다.',
 '현장에서도 좌석 예약이 가능하다.',
 '반납 기한을 지키지 않으면 대출에 제한이 생길 수 있다.',
 'C',
 '지문에서 "현장 접수는 받지 않습니다"라고 명시했으므로, "현장에서도 좌석 예약이 가능하다"는 C가 지문 내용과 다릅니다. A, B, D는 모두 지문 내용과 일치합니다.'),

-- ── 지문 2: 전통 시장과 대형 마트 비교 (비교 설명문) — Q04~06 ──────────

('W1D2R004', 'topik2_level4_comprehensive', 1, 2, 4,
 '전통 시장과 대형 마트',
 '전통 시장과 대형 마트는 물건을 구매하는 장소라는 공통점이 있지만, 여러 면에서 뚜렷한 차이를 보인다. 전통 시장은 상인과 직접 대화하며 가격을 흥정할 수 있고, 지역 특산물이나 제철 식재료를 저렴하게 구할 수 있는 것이 장점이다. 반면에 대형 마트는 다양한 상품을 한 곳에서 구매할 수 있고, 주차 시설과 냉난방이 잘 갖춰져 있어 쇼핑 환경이 쾌적하다. 그러나 최근에는 전통 시장도 카드 결제와 배달 서비스를 도입하여 편리함을 높이고 있다.',
 '이 글의 중심 내용으로 가장 알맞은 것을 고르십시오.',
 '전통 시장과 대형 마트는 장단점이 서로 달라 소비자가 선택하기 어렵다.',
 '전통 시장과 대형 마트는 각각 다른 장점을 가지고 있으며 전통 시장도 변화하고 있다.',
 '대형 마트는 쾌적한 환경 때문에 전통 시장보다 인기가 높다.',
 '전통 시장은 가격이 저렴하기 때문에 대형 마트보다 더 유리하다.',
 'B',
 '글은 전통 시장과 대형 마트의 장점을 각각 설명하고, 전통 시장이 최근 편리함을 높이고 있다는 변화까지 다루고 있습니다. B가 이 내용을 가장 잘 포괄합니다. A는 "선택이 어렵다"는 내용이 없고, C·D는 한쪽만 강조하는 오답입니다.'),

('W1D2R005', 'topik2_level4_comprehensive', 1, 2, 5,
 '전통 시장과 대형 마트',
 '전통 시장과 대형 마트는 물건을 구매하는 장소라는 공통점이 있지만, 여러 면에서 뚜렷한 차이를 보인다. 전통 시장은 상인과 직접 대화하며 가격을 흥정할 수 있고, 지역 특산물이나 제철 식재료를 저렴하게 구할 수 있는 것이 장점이다. 반면에 대형 마트는 다양한 상품을 한 곳에서 구매할 수 있고, 주차 시설과 냉난방이 잘 갖춰져 있어 쇼핑 환경이 쾌적하다. 그러나 최근에는 전통 시장도 카드 결제와 배달 서비스를 도입하여 편리함을 높이고 있다.',
 '이 글에서 전통 시장의 장점으로 언급된 것을 고르십시오.',
 '주차 시설이 잘 갖춰져 있다.',
 '다양한 상품을 한 곳에서 구매할 수 있다.',
 '가격 흥정이 가능하고 지역 특산물을 저렴하게 살 수 있다.',
 '냉난방 시설이 잘 되어 있어 쇼핑 환경이 쾌적하다.',
 'C',
 '지문에서 전통 시장의 장점으로 "가격 흥정"과 "지역 특산물·제철 식재료를 저렴하게 구할 수 있다"고 언급합니다. A, B, D는 모두 대형 마트의 장점으로 설명된 내용입니다.'),

('W1D2R006', 'topik2_level4_comprehensive', 1, 2, 6,
 '전통 시장과 대형 마트',
 '전통 시장과 대형 마트는 물건을 구매하는 장소라는 공통점이 있지만, 여러 면에서 뚜렷한 차이를 보인다. 전통 시장은 상인과 직접 대화하며 가격을 흥정할 수 있고, 지역 특산물이나 제철 식재료를 저렴하게 구할 수 있는 것이 장점이다. (    ) 대형 마트는 다양한 상품을 한 곳에서 구매할 수 있고, 주차 시설과 냉난방이 잘 갖춰져 있어 쇼핑 환경이 쾌적하다.',
 '빈칸에 들어갈 말로 가장 알맞은 것을 고르십시오.',
 '그래서',
 '따라서',
 '반면에',
 '게다가',
 'C',
 '빈칸 앞 문장은 전통 시장의 장점을, 빈칸 뒤 문장은 대형 마트의 장점을 설명하고 있습니다. 두 대상을 대조할 때 쓰는 "반면에"가 적절합니다. "그래서"와 "따라서"는 인과 관계, "게다가"는 추가 내용을 나타낼 때 사용합니다.'),

-- ── 지문 3: 한국인의 여가 활동 선호도 변화 (그래프 해석) — Q07~09 ──────────

('W1D2R007', 'topik2_level4_comprehensive', 1, 2, 7,
 '한국인의 여가 활동 선호도 변화',
 '최근 조사에 따르면 한국인의 여가 활동 선호도가 크게 변화하고 있다. 10년 전에는 등산, 낚시 등 실외 활동을 즐기는 비율이 전체의 62%를 차지했으나, 최근 조사에서는 실내 활동(독서, 영화 감상, 게임 등)을 선호하는 비율이 58%로 역전되었다. 특히 20~30대에서 실내 활동 선호가 두드러지는 반면에, 50대 이상은 여전히 실외 활동을 더 많이 즐기는 것으로 나타났다. 이러한 변화는 스마트폰과 온라인 동영상 서비스의 보급과 관련이 깊다.',
 '이 글의 중심 내용으로 가장 알맞은 것을 고르십시오.',
 '한국인은 전통적으로 실외 활동을 즐겨 왔다.',
 '스마트폰 보급이 늘면서 한국인의 여가 시간이 줄어들었다.',
 '한국인의 여가 활동이 실외에서 실내 중심으로 변화하고 있다.',
 '50대 이상 한국인은 젊은 세대보다 더 건강한 여가 생활을 한다.',
 'C',
 '이 글은 10년 전 실외 활동 62% → 현재 실내 활동 58%로의 역전 현상과 그 원인을 설명합니다. C가 글 전체의 핵심을 담고 있습니다. A는 과거 경향만 언급, B는 여가 시간 감소 언급 없음, D는 건강 비교 내용 없음입니다.'),

('W1D2R008', 'topik2_level4_comprehensive', 1, 2, 8,
 '한국인의 여가 활동 선호도 변화',
 '최근 조사에 따르면 한국인의 여가 활동 선호도가 크게 변화하고 있다. 10년 전에는 등산, 낚시 등 실외 활동을 즐기는 비율이 전체의 62%를 차지했으나, 최근 조사에서는 실내 활동(독서, 영화 감상, 게임 등)을 선호하는 비율이 58%로 역전되었다. 특히 20~30대에서 실내 활동 선호가 두드러지는 반면에, 50대 이상은 여전히 실외 활동을 더 많이 즐기는 것으로 나타났다. 이러한 변화는 스마트폰과 온라인 동영상 서비스의 보급과 관련이 깊다.',
 '이 글의 내용과 일치하는 것을 고르십시오.',
 '10년 전에는 실내 활동을 즐기는 비율이 62%였다.',
 '현재 20~30대는 실외 활동을 더 선호한다.',
 '50대 이상은 현재도 실외 활동을 더 많이 즐긴다.',
 '여가 활동의 변화는 경제 성장과 관련이 깊다.',
 'C',
 '"50대 이상은 여전히 실외 활동을 더 많이 즐기는 것으로 나타났다"는 내용이 지문에 직접 언급되어 있으므로 C가 정답입니다. A는 실외 활동(62%), B는 실내 활동 선호가 20~30대에서 두드러짐, D는 스마트폰·온라인 서비스 보급과의 관련이므로 모두 오답입니다.'),

('W1D2R009', 'topik2_level4_comprehensive', 1, 2, 9,
 '한국인의 여가 활동 선호도 변화',
 '10년 전에는 실외 활동 선호 비율이 62%였다. (    ) 최근에는 실내 활동 선호 비율이 58%로 높아져 두 활동의 순위가 바뀌었다.',
 '빈칸에 들어갈 말로 가장 알맞은 것을 고르십시오.',
 '그래서',
 '그러나',
 '그러므로',
 '왜냐하면',
 'B',
 '앞 문장(실외 활동 62% 우세)과 뒤 문장(실내 활동 58%로 역전) 사이에는 대조의 관계가 성립합니다. "그러나"는 앞뒤 내용이 서로 반대이거나 예상과 다를 때 사용하는 역접 접속사입니다. "그래서"·"그러므로"는 인과, "왜냐하면"은 이유를 나타냅니다.'),

-- ── 지문 4: 한국어와 영어 학습 방법 비교 (비교 설명문) — Q10~13 ──────────

('W1D2R010', 'topik2_level4_comprehensive', 1, 2, 10,
 '한국어와 영어 학습 방법 비교',
 '한국어와 영어는 언어 구조가 크게 달라 효과적인 학습 방법도 차이가 있다. 영어는 주어-동사-목적어 순서로 문장이 구성되기 때문에 어순 학습이 비교적 체계적이다. 이에 비해서 한국어는 동사가 문장 끝에 오고 조사가 발달해 있어, 문법 규칙과 조사 활용을 익히는 데 많은 시간이 필요하다. 또한 영어 학습에서는 발음과 억양이 중요한 반면에, 한국어 학습에서는 존댓말과 반말의 차이를 파악하는 것이 핵심 과제 중 하나다. 두 언어 모두 꾸준한 듣기와 말하기 연습이 학습 효과를 높이는 데 도움이 된다.',
 '이 글의 중심 내용으로 가장 알맞은 것을 고르십시오.',
 '영어는 한국어보다 배우기 쉬운 언어이다.',
 '한국어와 영어 학습은 구조적 차이로 인해 방법이 다르지만 꾸준한 연습이 공통적으로 중요하다.',
 '한국어를 잘하려면 조사 활용을 집중적으로 공부해야 한다.',
 '두 언어 모두 발음 연습이 가장 중요한 학습 요소이다.',
 'B',
 '글은 한국어와 영어의 구조적 차이에 따른 학습 방법 차이를 설명하면서, 두 언어 모두 듣기·말하기 연습이 공통적으로 중요하다는 결론으로 마무리됩니다. B가 전체 내용을 가장 잘 포괄합니다.'),

('W1D2R011', 'topik2_level4_comprehensive', 1, 2, 11,
 '한국어와 영어 학습 방법 비교',
 '한국어와 영어는 언어 구조가 크게 달라 효과적인 학습 방법도 차이가 있다. 영어는 주어-동사-목적어 순서로 문장이 구성되기 때문에 어순 학습이 비교적 체계적이다. 이에 비해서 한국어는 동사가 문장 끝에 오고 조사가 발달해 있어, 문법 규칙과 조사 활용을 익히는 데 많은 시간이 필요하다. 또한 영어 학습에서는 발음과 억양이 중요한 반면에, 한국어 학습에서는 존댓말과 반말의 차이를 파악하는 것이 핵심 과제 중 하나다. 두 언어 모두 꾸준한 듣기와 말하기 연습이 학습 효과를 높이는 데 도움이 된다.',
 '이 글에서 한국어 학습과 영어 학습의 차이점으로 언급된 것을 고르십시오.',
 '영어는 듣기 연습이 중요하지만 한국어는 쓰기 연습이 중요하다.',
 '영어는 발음과 억양이 중요하고, 한국어는 존댓말과 반말 구분이 핵심이다.',
 '영어는 어휘가 많아 어렵고, 한국어는 문자 체계가 복잡하다.',
 '두 언어 모두 어순이 같아서 동시에 배우기 좋다.',
 'B',
 '"영어 학습에서는 발음과 억양이 중요한 반면에, 한국어 학습에서는 존댓말과 반말의 차이를 파악하는 것이 핵심 과제"라고 직접 언급되어 있으므로 B가 정답입니다.'),

('W1D2R012', 'topik2_level4_comprehensive', 1, 2, 12,
 '한국어와 영어 학습 방법 비교',
 '한국어와 영어는 언어 구조가 크게 달라 효과적인 학습 방법도 차이가 있다. 영어는 주어-동사-목적어 순서로 문장이 구성되기 때문에 어순 학습이 비교적 체계적이다. 이에 비해서 한국어는 동사가 문장 끝에 오고 조사가 발달해 있어, 문법 규칙과 조사 활용을 익히는 데 많은 시간이 필요하다. 또한 영어 학습에서는 발음과 억양이 중요한 반면에, 한국어 학습에서는 존댓말과 반말의 차이를 파악하는 것이 핵심 과제 중 하나다. 두 언어 모두 꾸준한 듣기와 말하기 연습이 학습 효과를 높이는 데 도움이 된다.',
 '이 글의 내용과 일치하는 것을 고르십시오.',
 '영어는 동사가 문장 끝에 위치한다.',
 '한국어는 조사가 발달해 있어 문법 규칙 학습이 중요하다.',
 '두 언어 중 영어만 듣기 연습이 효과적이다.',
 '한국어는 어순이 단순해서 배우기 쉽다.',
 'B',
 '"한국어는 동사가 문장 끝에 오고 조사가 발달해 있어, 문법 규칙과 조사 활용을 익히는 데 많은 시간이 필요하다"는 내용과 B가 일치합니다. A는 영어 아닌 한국어의 특징, C는 두 언어 모두에 해당, D는 글 내용과 반대입니다.'),

('W1D2R013', 'topik2_level4_comprehensive', 1, 2, 13,
 '한국어와 영어 학습 방법 비교',
 '영어는 어순이 비교적 체계적이다. (    ) 한국어는 동사가 문장 끝에 오고 조사 활용이 복잡하여 학습에 더 많은 시간이 필요하다.',
 '빈칸에 들어갈 말로 가장 알맞은 것을 고르십시오.',
 '그리고',
 '왜냐하면',
 '이에 비해서',
 '그러므로',
 'C',
 '앞 문장(영어의 특징)과 뒤 문장(한국어의 특징)을 대조하는 상황입니다. "이에 비해서"는 두 대상을 비교·대조할 때 사용하는 표현으로 가장 적절합니다. "그리고"는 단순 나열, "왜냐하면"은 이유, "그러므로"는 결론을 나타냅니다.'),

-- ── 지문 5: 외국인 유학생 장학금 안내 (공지문) — Q14~16 ──────────

('W1D2R014', 'topik2_level4_comprehensive', 1, 2, 14,
 '외국인 유학생 장학금 안내',
 '한국대학교 국제처에서는 외국인 유학생을 대상으로 장학금을 지원합니다. 지원 자격은 현재 재학 중인 외국인 학생으로, 직전 학기 평균 학점이 3.5 이상인 학생입니다. 장학금은 등록금의 50%를 지원하며, 매 학기 재심사를 통해 유지 여부가 결정됩니다. 신청 기간은 다음 달 1일부터 15일까지이며, 국제처 홈페이지에서 서류를 다운로드하여 이메일로 제출하면 됩니다. 단, 휴학 중인 학생과 이미 다른 장학금을 받고 있는 학생은 지원할 수 없습니다.',
 '이 공지문의 목적으로 가장 알맞은 것을 고르십시오.',
 '외국인 유학생에게 한국어 수업을 안내하려고',
 '외국인 유학생에게 장학금 신청 방법과 자격을 알리려고',
 '외국인 유학생의 학업 성적 향상을 독려하려고',
 '국제처 홈페이지 사용 방법을 안내하려고',
 'B',
 '이 공지문은 장학금 지원 자격, 지원 금액, 신청 기간, 제출 방법을 안내하는 글입니다. 목적은 B "장학금 신청 방법과 자격을 알리는 것"입니다. A·C·D는 지문의 주요 목적이 아닙니다.'),

('W1D2R015', 'topik2_level4_comprehensive', 1, 2, 15,
 '외국인 유학생 장학금 안내',
 '한국대학교 국제처에서는 외국인 유학생을 대상으로 장학금을 지원합니다. 지원 자격은 현재 재학 중인 외국인 학생으로, 직전 학기 평균 학점이 3.5 이상인 학생입니다. 장학금은 등록금의 50%를 지원하며, 매 학기 재심사를 통해 유지 여부가 결정됩니다. 신청 기간은 다음 달 1일부터 15일까지이며, 국제처 홈페이지에서 서류를 다운로드하여 이메일로 제출하면 됩니다. 단, 휴학 중인 학생과 이미 다른 장학금을 받고 있는 학생은 지원할 수 없습니다.',
 '이 공지문의 내용과 일치하는 것을 고르십시오.',
 '장학금은 등록금 전액을 지원한다.',
 '장학금 신청 서류는 국제처 창구에서 직접 제출해야 한다.',
 '장학금은 매 학기 재심사를 통해 유지 여부가 결정된다.',
 '성적에 관계없이 재학 중인 외국인 학생이라면 누구나 지원 가능하다.',
 'C',
 '"매 학기 재심사를 통해 유지 여부가 결정됩니다"라고 명시되어 있으므로 C가 정답입니다. A는 50% 지원(전액 아님), B는 이메일 제출(창구 아님), D는 학점 3.5 이상 조건이 있으므로 모두 오답입니다.'),

('W1D2R016', 'topik2_level4_comprehensive', 1, 2, 16,
 '외국인 유학생 장학금 안내',
 '한국대학교 국제처에서는 외국인 유학생을 대상으로 장학금을 지원합니다. 지원 자격은 현재 재학 중인 외국인 학생으로, 직전 학기 평균 학점이 3.5 이상인 학생입니다. 장학금은 등록금의 50%를 지원하며, 매 학기 재심사를 통해 유지 여부가 결정됩니다. 신청 기간은 다음 달 1일부터 15일까지이며, 국제처 홈페이지에서 서류를 다운로드하여 이메일로 제출하면 됩니다. 단, 휴학 중인 학생과 이미 다른 장학금을 받고 있는 학생은 지원할 수 없습니다.',
 '이 공지문의 내용과 다른 것을 고르십시오.',
 '현재 재학 중인 외국인 학생이 지원 대상이다.',
 '직전 학기 평균 학점이 3.5 이상이어야 지원할 수 있다.',
 '다른 장학금을 받고 있어도 동시에 지원이 가능하다.',
 '신청 서류는 이메일로 제출한다.',
 'C',
 '"이미 다른 장학금을 받고 있는 학생은 지원할 수 없습니다"라고 명시되어 있으므로 "동시에 지원이 가능하다"는 C가 지문 내용과 다릅니다. A, B, D는 모두 지문 내용과 일치합니다.'),

-- ── 지문 6: 재택근무와 사무실 근무 비교 (설명문) — Q17~20 ──────────

('W1D2R017', 'topik2_level4_comprehensive', 1, 2, 17,
 '재택근무와 사무실 근무의 비교',
 '코로나19 이후 많은 기업이 재택근무를 도입하면서, 재택근무와 사무실 근무의 장단점에 대한 관심이 높아졌다. 재택근무는 출퇴근 시간을 절약할 수 있고 개인 공간에서 자유롭게 일할 수 있다는 장점이 있다. 반면에 사무실 근무는 동료들과 직접 소통하고 협력할 수 있어 팀워크 향상에 도움이 된다. 그러나 재택근무의 경우 업무와 개인 생활의 경계가 흐려질 수 있고, 사무실 근무는 이동 시간과 비용이 발생한다는 단점이 있다. 따라서 두 가지 근무 형태를 결합한 하이브리드 근무가 새로운 대안으로 주목받고 있다.',
 '이 글의 중심 내용으로 가장 알맞은 것을 고르십시오.',
 '재택근무는 사무실 근무보다 생산성이 높다.',
 '재택근무와 사무실 근무는 각각 장단점이 있으며 이를 결합한 형태가 주목받고 있다.',
 '코로나19 이후 모든 기업이 재택근무를 도입했다.',
 '사무실 근무는 팀워크 때문에 재택근무보다 효율적이다.',
 'B',
 '글 전체가 재택근무와 사무실 근무의 장단점을 대조하고, 두 가지를 결합한 하이브리드 근무를 대안으로 제시하는 구조입니다. B가 이를 가장 잘 반영합니다. A·D는 한쪽만 강조하는 오답이고, C는 "많은 기업"을 "모든 기업"으로 과장했습니다.'),

('W1D2R018', 'topik2_level4_comprehensive', 1, 2, 18,
 '재택근무와 사무실 근무의 비교',
 '코로나19 이후 많은 기업이 재택근무를 도입하면서, 재택근무와 사무실 근무의 장단점에 대한 관심이 높아졌다. 재택근무는 출퇴근 시간을 절약할 수 있고 개인 공간에서 자유롭게 일할 수 있다는 장점이 있다. 반면에 사무실 근무는 동료들과 직접 소통하고 협력할 수 있어 팀워크 향상에 도움이 된다. 그러나 재택근무의 경우 업무와 개인 생활의 경계가 흐려질 수 있고, 사무실 근무는 이동 시간과 비용이 발생한다는 단점이 있다. 따라서 두 가지 근무 형태를 결합한 하이브리드 근무가 새로운 대안으로 주목받고 있다.',
 '이 글에서 재택근무의 장점으로 언급된 것을 고르십시오.',
 '동료들과 직접 소통하여 팀워크를 높일 수 있다.',
 '출퇴근 시간을 절약하고 개인 공간에서 자유롭게 일할 수 있다.',
 '업무와 개인 생활의 경계가 명확해진다.',
 '이동 비용을 줄일 수 있어 경제적이다.',
 'B',
 '"재택근무는 출퇴근 시간을 절약할 수 있고 개인 공간에서 자유롭게 일할 수 있다는 장점이 있다"고 직접 언급되어 있으므로 B가 정답입니다. A는 사무실 근무의 장점, C는 재택근무의 단점, D는 이동 비용 절약이 명시되지 않았습니다.'),

('W1D2R019', 'topik2_level4_comprehensive', 1, 2, 19,
 '재택근무와 사무실 근무의 비교',
 '코로나19 이후 많은 기업이 재택근무를 도입하면서, 재택근무와 사무실 근무의 장단점에 대한 관심이 높아졌다. 재택근무는 출퇴근 시간을 절약할 수 있고 개인 공간에서 자유롭게 일할 수 있다는 장점이 있다. 반면에 사무실 근무는 동료들과 직접 소통하고 협력할 수 있어 팀워크 향상에 도움이 된다. 그러나 재택근무의 경우 업무와 개인 생활의 경계가 흐려질 수 있고, 사무실 근무는 이동 시간과 비용이 발생한다는 단점이 있다. 따라서 두 가지 근무 형태를 결합한 하이브리드 근무가 새로운 대안으로 주목받고 있다.',
 '이 글에서 사무실 근무의 장점으로 언급된 것을 고르십시오.',
 '출퇴근 시간을 절약할 수 있다.',
 '개인 공간에서 자유롭게 일할 수 있다.',
 '동료들과 직접 소통하고 협력하여 팀워크를 높일 수 있다.',
 '업무와 개인 생활의 경계를 유지하기 어렵다.',
 'C',
 '"사무실 근무는 동료들과 직접 소통하고 협력할 수 있어 팀워크 향상에 도움이 된다"는 내용이 지문에 있으므로 C가 정답입니다. A·B는 재택근무의 장점, D는 재택근무의 단점입니다.'),

('W1D2R020', 'topik2_level4_comprehensive', 1, 2, 20,
 '재택근무와 사무실 근무의 비교',
 '코로나19 이후 많은 기업이 재택근무를 도입하면서, 재택근무와 사무실 근무의 장단점에 대한 관심이 높아졌다. 재택근무는 출퇴근 시간을 절약할 수 있고 개인 공간에서 자유롭게 일할 수 있다는 장점이 있다. 반면에 사무실 근무는 동료들과 직접 소통하고 협력할 수 있어 팀워크 향상에 도움이 된다. 그러나 재택근무의 경우 업무와 개인 생활의 경계가 흐려질 수 있고, 사무실 근무는 이동 시간과 비용이 발생한다는 단점이 있다. 따라서 두 가지 근무 형태를 결합한 하이브리드 근무가 새로운 대안으로 주목받고 있다.',
 '이 글의 내용과 일치하는 것을 고르십시오.',
 '사무실 근무에는 이동 시간과 비용이 들지 않는다.',
 '재택근무는 업무와 개인 생활의 경계가 분명해지는 장점이 있다.',
 '하이브리드 근무는 두 가지 근무 형태를 결합한 방식이다.',
 '코로나19 이후 모든 기업이 사무실 근무를 폐지했다.',
 'C',
 '"두 가지 근무 형태를 결합한 하이브리드 근무"라는 표현이 지문에 직접 등장하므로 C가 정답입니다. A는 이동 비용이 단점으로 언급됨, B는 경계가 흐려지는 단점으로 언급됨, D는 "많은 기업"이지 전부가 아닙니다.'),

-- ── 지문 7: 스마트폰 사용 시간 연령대별 비교 (그래프/수치 설명) — Q21~23 ──────────

('W1D2R021', 'topik2_level4_comprehensive', 1, 2, 21,
 '스마트폰 사용 시간 연령대별 비교',
 '최근 발표된 조사에 따르면 한국인의 하루 평균 스마트폰 사용 시간은 연령대에 따라 큰 차이를 보인다. 10~20대는 하루 평균 5시간 이상 스마트폰을 사용하는 반면에, 50대 이상은 평균 2시간 미만으로 나타났다. 30~40대는 업무용 사용을 포함해 하루 평균 4시간 정도였다. 특히 10~20대의 사용 시간이 5년 전에 비해서 약 30% 증가한 것으로 나타나 주목된다. 전문가들은 과도한 스마트폰 사용이 수면의 질과 집중력에 부정적인 영향을 미칠 수 있다고 경고한다.',
 '이 글의 중심 내용으로 가장 알맞은 것을 고르십시오.',
 '10~20대는 스마트폰을 지나치게 많이 사용해 건강에 문제가 생긴다.',
 '한국인의 스마트폰 사용 시간은 연령대마다 큰 차이가 있으며 젊은 층에서 증가 추세가 두드러진다.',
 '50대 이상은 스마트폰을 거의 사용하지 않는다.',
 '스마트폰 사용은 업무 효율을 높이는 데 도움이 된다.',
 'B',
 '글 전체는 연령대별 스마트폰 사용 시간 차이와 10~20대의 증가 추세를 중심으로 설명합니다. B가 이를 가장 잘 담고 있습니다. A는 건강 문제를 과장, C는 "거의 사용하지 않는다"고 과장, D는 글의 주제가 아닙니다.'),

('W1D2R022', 'topik2_level4_comprehensive', 1, 2, 22,
 '스마트폰 사용 시간 연령대별 비교',
 '최근 발표된 조사에 따르면 한국인의 하루 평균 스마트폰 사용 시간은 연령대에 따라 큰 차이를 보인다. 10~20대는 하루 평균 5시간 이상 스마트폰을 사용하는 반면에, 50대 이상은 평균 2시간 미만으로 나타났다. 30~40대는 업무용 사용을 포함해 하루 평균 4시간 정도였다. 특히 10~20대의 사용 시간이 5년 전에 비해서 약 30% 증가한 것으로 나타나 주목된다. 전문가들은 과도한 스마트폰 사용이 수면의 질과 집중력에 부정적인 영향을 미칠 수 있다고 경고한다.',
 '이 글의 내용과 일치하는 것을 고르십시오.',
 '50대 이상은 하루 평균 4시간 이상 스마트폰을 사용한다.',
 '10~20대의 스마트폰 사용 시간은 5년 전과 비교해 약 30% 증가했다.',
 '30~40대는 스마트폰을 업무 외 목적으로만 사용한다.',
 '전문가들은 스마트폰 사용이 수면에 긍정적인 영향을 준다고 말한다.',
 'B',
 '"10~20대의 사용 시간이 5년 전에 비해서 약 30% 증가한 것으로 나타났다"는 내용이 지문에 있으므로 B가 정답입니다. A는 50대 이상이 2시간 미만, C는 업무용 포함 사용, D는 부정적 영향 경고가 언급되어 모두 오답입니다.'),

('W1D2R023', 'topik2_level4_comprehensive', 1, 2, 23,
 '스마트폰 사용 시간 연령대별 비교',
 '10~20대는 하루 평균 5시간 이상 스마트폰을 사용한다. (    ) 50대 이상은 하루 평균 2시간 미만으로 나타나 두 세대 간 차이가 뚜렷하다.',
 '빈칸에 들어갈 말로 가장 알맞은 것을 고르십시오.',
 '게다가',
 '반면에',
 '따라서',
 '왜냐하면',
 'B',
 '앞 문장(10~20대 5시간 이상)과 뒤 문장(50대 이상 2시간 미만)은 서로 대조되는 내용입니다. "반면에"는 두 대상을 직접 대비할 때 쓰는 표현으로 가장 적절합니다. "게다가"는 추가, "따라서"·"왜냐하면"은 인과 관계를 나타냅니다.'),

-- ── 지문 8: 온라인 교육 vs 오프라인 교육 (논설문) — Q24~27 ──────────

('W1D2R024', 'topik2_level4_comprehensive', 1, 2, 24,
 '온라인 교육과 오프라인 교육',
 '최근 온라인 교육이 빠르게 확산되면서 오프라인 교육과의 비교가 활발하게 이루어지고 있다. 온라인 교육은 시간과 장소에 구애받지 않고 학습할 수 있으며, 비용이 상대적으로 저렴하다는 장점이 있다. 그러나 학습자 스스로 동기를 유지하기 어렵고, 직접적인 소통이 부족하여 심화 학습에 한계가 있다. 이에 비해서 오프라인 교육은 교사와 학생 간의 실시간 상호작용이 가능하고, 학습 집중도가 높은 환경을 제공한다. 필자는 두 방식의 장점을 결합한 블렌디드 러닝이 미래 교육의 방향이 되어야 한다고 본다.',
 '이 글에서 필자가 주장하는 것을 고르십시오.',
 '온라인 교육은 비용이 저렴하므로 오프라인 교육을 대체해야 한다.',
 '오프라인 교육이 학습 효과 면에서 항상 우수하다.',
 '온라인과 오프라인 교육의 장점을 결합한 블렌디드 러닝이 미래 교육의 방향이 되어야 한다.',
 '온라인 교육의 단점은 기술 발전으로 곧 해결될 것이다.',
 'C',
 '마지막 문장에서 "필자는 두 방식의 장점을 결합한 블렌디드 러닝이 미래 교육의 방향이 되어야 한다고 본다"고 직접 주장하고 있으므로 C가 정답입니다. A는 대체 주장 없음, B는 항상 우수하다는 내용 없음, D는 기술 발전 언급 없음입니다.'),

('W1D2R025', 'topik2_level4_comprehensive', 1, 2, 25,
 '온라인 교육과 오프라인 교육',
 '최근 온라인 교육이 빠르게 확산되면서 오프라인 교육과의 비교가 활발하게 이루어지고 있다. 온라인 교육은 시간과 장소에 구애받지 않고 학습할 수 있으며, 비용이 상대적으로 저렴하다는 장점이 있다. 그러나 학습자 스스로 동기를 유지하기 어렵고, 직접적인 소통이 부족하여 심화 학습에 한계가 있다. 이에 비해서 오프라인 교육은 교사와 학생 간의 실시간 상호작용이 가능하고, 학습 집중도가 높은 환경을 제공한다. 필자는 두 방식의 장점을 결합한 블렌디드 러닝이 미래 교육의 방향이 되어야 한다고 본다.',
 '이 글에서 온라인 교육의 단점으로 언급된 것을 고르십시오.',
 '비용이 상대적으로 높다.',
 '시간과 장소에 제약이 많다.',
 '학습자 스스로 동기를 유지하기 어렵고 직접 소통이 부족하다.',
 '교사와의 실시간 상호작용이 너무 많아 부담스럽다.',
 'C',
 '"학습자 스스로 동기를 유지하기 어렵고, 직접적인 소통이 부족하여 심화 학습에 한계가 있다"는 내용이 온라인 교육의 단점으로 명시되어 있으므로 C가 정답입니다. A·B는 온라인 교육의 장점(비용 저렴, 장소 자유)과 반대이고, D는 언급되지 않습니다.'),

('W1D2R026', 'topik2_level4_comprehensive', 1, 2, 26,
 '온라인 교육과 오프라인 교육',
 '최근 온라인 교육이 빠르게 확산되면서 오프라인 교육과의 비교가 활발하게 이루어지고 있다. 온라인 교육은 시간과 장소에 구애받지 않고 학습할 수 있으며, 비용이 상대적으로 저렴하다는 장점이 있다. 그러나 학습자 스스로 동기를 유지하기 어렵고, 직접적인 소통이 부족하여 심화 학습에 한계가 있다. 이에 비해서 오프라인 교육은 교사와 학생 간의 실시간 상호작용이 가능하고, 학습 집중도가 높은 환경을 제공한다. 필자는 두 방식의 장점을 결합한 블렌디드 러닝이 미래 교육의 방향이 되어야 한다고 본다.',
 '이 글의 내용과 일치하는 것을 고르십시오.',
 '오프라인 교육은 비용이 저렴하다는 장점이 있다.',
 '온라인 교육은 장소에 제약 없이 학습이 가능하다.',
 '필자는 오프라인 교육만이 올바른 교육 방식이라고 주장한다.',
 '온라인 교육은 학습 집중도가 높은 환경을 제공한다.',
 'B',
 '"온라인 교육은 시간과 장소에 구애받지 않고 학습할 수 있다"는 내용이 지문에 있으므로 B가 정답입니다. A는 온라인 교육의 장점(비용 저렴), C는 블렌디드 러닝을 주장하므로 오답, D는 오프라인 교육의 장점입니다.'),

('W1D2R027', 'topik2_level4_comprehensive', 1, 2, 27,
 '온라인 교육과 오프라인 교육',
 '최근 온라인 교육이 빠르게 확산되면서 오프라인 교육과의 비교가 활발하게 이루어지고 있다. 온라인 교육은 시간과 장소에 구애받지 않고 학습할 수 있으며, 비용이 상대적으로 저렴하다는 장점이 있다. 그러나 학습자 스스로 동기를 유지하기 어렵고, 직접적인 소통이 부족하여 심화 학습에 한계가 있다. 이에 비해서 오프라인 교육은 교사와 학생 간의 실시간 상호작용이 가능하고, 학습 집중도가 높은 환경을 제공한다. 필자는 두 방식의 장점을 결합한 블렌디드 러닝이 미래 교육의 방향이 되어야 한다고 본다.',
 '이 글의 중심 생각으로 가장 알맞은 것을 고르십시오.',
 '온라인 교육과 오프라인 교육은 서로 경쟁 관계에 있다.',
 '오프라인 교육의 상호작용이 교육의 핵심이다.',
 '온라인과 오프라인 각각의 장점을 살린 통합형 교육이 이상적이다.',
 '비용이 저렴한 온라인 교육이 확산되는 것은 자연스러운 현상이다.',
 'C',
 '필자의 핵심 주장은 두 방식의 장점을 결합한 블렌디드 러닝, 즉 통합형 교육이 미래 방향이라는 것입니다. C가 이를 가장 잘 표현합니다. A는 경쟁 관계 언급 없음, B는 오프라인만 강조, D는 자연스러운 현상이라는 주장이 없습니다.'),

-- ── 지문 9: 건강 검진 안내 (안내문) — Q28~30 ──────────

('W1D2R028', 'topik2_level4_comprehensive', 1, 2, 28,
 '건강 검진 안내',
 '한국대학교 보건센터에서는 재학생을 대상으로 무료 건강 검진을 실시합니다. 검진 항목은 혈압, 혈당, 시력, 청력 검사이며, 희망자에 한해 체성분 분석도 함께 진행합니다. 검진 기간은 다음 달 10일부터 20일까지이며, 보건센터 홈페이지에서 사전 예약 후 방문해야 합니다. 예약 없이 방문하면 검진을 받을 수 없으니 반드시 사전 예약을 하시기 바랍니다. 검진 결과는 2주 후 문자 메시지로 개별 안내드릴 예정입니다.',
 '이 안내문의 목적으로 가장 알맞은 것을 고르십시오.',
 '보건센터 위치와 운영 시간을 안내하려고',
 '재학생에게 건강 검진 일정과 방법을 알리려고',
 '검진 항목별 정상 수치 기준을 설명하려고',
 '건강한 생활 습관을 권장하려고',
 'B',
 '이 안내문은 검진 항목, 기간, 예약 방법, 결과 안내 방식을 설명하고 있습니다. 목적은 B "재학생에게 건강 검진 일정과 방법을 알리는 것"입니다. A·C·D는 이 안내문의 주요 목적이 아닙니다.'),

('W1D2R029', 'topik2_level4_comprehensive', 1, 2, 29,
 '건강 검진 안내',
 '한국대학교 보건센터에서는 재학생을 대상으로 무료 건강 검진을 실시합니다. 검진 항목은 혈압, 혈당, 시력, 청력 검사이며, 희망자에 한해 체성분 분석도 함께 진행합니다. 검진 기간은 다음 달 10일부터 20일까지이며, 보건센터 홈페이지에서 사전 예약 후 방문해야 합니다. 예약 없이 방문하면 검진을 받을 수 없으니 반드시 사전 예약을 하시기 바랍니다. 검진 결과는 2주 후 문자 메시지로 개별 안내드릴 예정입니다.',
 '이 안내문의 내용과 일치하는 것을 고르십시오.',
 '건강 검진은 유료로 진행된다.',
 '체성분 분석은 모든 재학생이 의무적으로 받아야 한다.',
 '검진 결과는 2주 후 문자 메시지로 통보된다.',
 '예약 없이 방문해도 검진을 받을 수 있다.',
 'C',
 '"검진 결과는 2주 후 문자 메시지로 개별 안내드릴 예정입니다"라는 내용이 지문에 명시되어 있으므로 C가 정답입니다. A는 무료, B는 희망자에 한해(의무 아님), D는 예약 없이는 검진 불가라고 했으므로 모두 오답입니다.'),

('W1D2R030', 'topik2_level4_comprehensive', 1, 2, 30,
 '건강 검진 안내',
 '한국대학교 보건센터에서는 재학생을 대상으로 무료 건강 검진을 실시합니다. 검진 항목은 혈압, 혈당, 시력, 청력 검사이며, 희망자에 한해 체성분 분석도 함께 진행합니다. 검진 기간은 다음 달 10일부터 20일까지이며, 보건센터 홈페이지에서 사전 예약 후 방문해야 합니다. 예약 없이 방문하면 검진을 받을 수 없으니 반드시 사전 예약을 하시기 바랍니다. 검진 결과는 2주 후 문자 메시지로 개별 안내드릴 예정입니다.',
 '이 안내문의 내용과 다른 것을 고르십시오.',
 '검진 기간은 다음 달 10일부터 20일까지이다.',
 '보건센터 홈페이지에서 사전 예약을 해야 한다.',
 '체성분 분석은 원하는 학생 누구나 받을 수 있다.',
 '검진 항목에는 혈압과 혈당만 포함된다.',
 'D',
 '"검진 항목은 혈압, 혈당, 시력, 청력 검사"라고 명시되어 있으므로 "혈압과 혈당만 포함된다"는 D가 지문 내용과 다릅니다. A, B, C는 모두 지문 내용과 일치합니다.');

-- ============================================================
-- WRITING QUESTIONS — Day 2 (비교와 대조)
-- W1D2W001 ~ W1D2W015
-- ============================================================

INSERT INTO topik_writing_questions
  (id, course_id, week_number, day_number, display_order,
   question_type, prompt, word_count_min, word_count_max,
   key_expressions, model_answer)
VALUES

-- -------------------------------------------------------
-- A) 51번형 — 단문 완성 (W1D2W001~003)
-- -------------------------------------------------------

('W1D2W001', 'topik2_level4_comprehensive', 1, 2, 1,
 '51',
 E'[지문] 공부 방법은 사람마다 다르다. 어떤 사람은 혼자 조용히 공부하는 것을 선호하지만, ( ㉠ ). 또한 책으로만 공부하는 방법도 있는 반면에, ( ㉡ ). 중요한 것은 자신에게 맞는 방법을 찾는 것이다.\n\n㉠과 ㉡에 알맞은 내용을 각각 쓰십시오.',
 10, 40,
 ARRAY['-에 비해', '반면에', '차이가 있다', '-는 것을 선호하다', '다르다'],
 E'㉠ 예시: 다른 사람들과 함께 그룹으로 공부하는 것을 더 효과적이라고 생각하는 사람도 있다\n㉡ 예시: 영상이나 인터넷 강의를 활용하는 방법도 많이 사용된다'),

('W1D2W002', 'topik2_level4_comprehensive', 1, 2, 2,
 '51',
 E'[지문] 한국과 일본은 지리적으로 가까운 나라이지만 문화적으로 차이가 있다. 음식 문화를 보면 한국은 매운 음식이 발달한 ( ㉠ ). 또한 인사 방식에서도 한국은 악수나 가볍게 고개를 숙이는 편인 데 비해, ( ㉡ ).\n\n㉠과 ㉡에 알맞은 내용을 각각 쓰십시오.',
 10, 40,
 ARRAY['-에 비해', '반면에', '차이가 있다', '-인 데 비해', '-는 편이다'],
 E'㉠ 예시: 반면에 일본은 생선회나 된장국처럼 담백한 음식이 많다\n㉡ 예시: 일본은 허리를 깊이 굽혀 인사하는 것이 일반적이다'),

('W1D2W003', 'topik2_level4_comprehensive', 1, 2, 3,
 '51',
 E'[지문] 현대인들은 크게 두 가지 생활 방식 중 하나를 선택한다. 바쁜 도시에서 편의 시설을 누리며 사는 사람들이 있는 ( ㉠ ). 이 두 생활 방식은 장단점이 각각 다르다. 도시 생활은 교통과 쇼핑이 편리한 데 비해, ( ㉡ ).\n\n㉠과 ㉡에 알맞은 내용을 각각 쓰십시오.',
 10, 40,
 ARRAY['-는 반면에', '-에 비해', '차이가 있다', '장단점', '-는 편이다'],
 E'㉠ 예시: 반면에 조용한 농촌에서 자연 속에 살아가는 사람들도 있다\n㉡ 예시: 농촌 생활은 공기가 맑고 생활비가 적게 든다는 장점이 있다'),

-- -------------------------------------------------------
-- B) 52번형 — 실용문 작성 (W1D2W004~006)
-- -------------------------------------------------------

('W1D2W004', 'topik2_level4_comprehensive', 1, 2, 4,
 '52',
 E'다음을 참고하여 온라인 쇼핑과 오프라인 쇼핑의 차이에 대한 글을 200~300자로 쓰십시오.\n\n• 온라인 쇼핑: 시간과 장소의 제한 없이 이용 가능, 가격 비교 용이, 배송 대기 필요\n• 오프라인 쇼핑: 직접 상품 확인 가능, 즉시 구매 가능, 이동 시간·비용 발생\n• 최근 온라인 쇼핑 이용자 증가 추세',
 200, 300,
 ARRAY['-에 비해서', '-는 반면에', '차이가 있다', '반면', '-는 경향이 있다'],
 E'온라인 쇼핑과 오프라인 쇼핑은 여러 면에서 차이가 있다. 온라인 쇼핑은 시간과 장소에 관계없이 이용할 수 있고 가격 비교가 쉬운 반면에, 상품을 직접 확인하지 못하고 배송을 기다려야 한다는 단점이 있다. 이에 비해 오프라인 쇼핑은 상품을 직접 보고 즉시 구매할 수 있지만, 매장까지 이동하는 데 시간과 비용이 든다. 최근에는 편리함을 이유로 온라인 쇼핑 이용자가 꾸준히 증가하는 경향이 있다.'),

('W1D2W005', 'topik2_level4_comprehensive', 1, 2, 5,
 '52',
 E'다음을 참고하여 지하철과 버스의 특징 비교에 대한 글을 200~300자로 쓰십시오.\n\n• 지하철: 정시 운행, 빠른 이동, 환승 편리, 혼잡 시간대 혼잡\n• 버스: 목적지 근처까지 이동 가능, 노선 다양, 지연 발생 가능성 있음\n• 두 교통수단 모두 대중교통 카드 이용 가능',
 200, 300,
 ARRAY['-에 비해서', '-는 반면에', '차이가 있다', '-는 편이다', '반면'],
 E'지하철과 버스는 대표적인 대중교통 수단이지만 특징에 차이가 있다. 지하철은 정해진 시간에 정확히 운행되고 이동 속도가 빠른 편인 반면에, 출퇴근 시간대에는 매우 혼잡하다는 단점이 있다. 이에 비해 버스는 노선이 다양하여 목적지 가까이까지 이동할 수 있지만, 교통 상황에 따라 지연될 수 있다. 두 교통수단 모두 대중교통 카드로 이용할 수 있어 편리하다.'),

('W1D2W006', 'topik2_level4_comprehensive', 1, 2, 6,
 '52',
 E'다음을 참고하여 도시 생활과 농촌 생활의 비교에 대한 글을 200~300자로 쓰십시오.\n\n• 도시 생활: 교통·문화·의료 시설 편리, 취업 기회 많음, 생활비 높음·소음 있음\n• 농촌 생활: 자연환경 쾌적, 생활비 저렴, 일자리 적고 불편한 교통\n• 최근 귀촌 인구 증가 추세',
 200, 300,
 ARRAY['-에 비해서', '-는 반면에', '차이가 있다', '-는 경향이 있다', '반면'],
 E'도시 생활과 농촌 생활은 환경과 편의성 면에서 큰 차이가 있다. 도시는 교통, 의료, 문화 시설이 잘 갖추어져 있고 취업 기회도 많은 반면에, 생활비가 비싸고 소음과 혼잡함을 피하기 어렵다. 이에 비해 농촌은 공기가 맑고 조용하며 생활비가 적게 드는 편이지만, 일자리가 적고 교통이 불편하다는 단점이 있다. 최근에는 자연 속에서 여유로운 삶을 원하는 사람들이 늘면서 귀촌 인구가 증가하는 경향이 있다.'),

-- -------------------------------------------------------
-- C) 53번형 — 자료 설명 (W1D2W007~012)
-- -------------------------------------------------------

('W1D2W007', 'topik2_level4_comprehensive', 1, 2, 7,
 '53',
 E'[표] 한국과 일본의 대학 진학률 비교 (단위: %)\n- 연도: 2010 / 2015 / 2020\n- 한국: 79 / 70 / 72\n- 일본: 54 / 56 / 58\n\n위의 표를 보고 한국과 일본의 대학 진학률을 비교하는 글을 200~300자로 쓰십시오.',
 200, 300,
 ARRAY['-에 비해', '반면에', '-는 경향이 있다', '감소하다', '증가하다'],
 E'위 표를 보면 한국과 일본의 대학 진학률은 차이가 있다. 한국은 2010년 79%로 일본(54%)에 비해 크게 높았으나 2015년에는 70%로 감소하였다. 반면 일본은 같은 기간 동안 54%에서 56%로 소폭 증가하는 경향을 보였다. 2020년에는 한국 72%, 일본 58%로 한국이 여전히 높지만 그 격차는 점점 좁아지고 있음을 알 수 있다.'),

('W1D2W008', 'topik2_level4_comprehensive', 1, 2, 8,
 '53',
 E'[막대그래프] 직장인 통근 수단별 비율 비교 - 지하철: 42% - 버스: 28% - 자가용: 20% - 도보/자전거: 10%\n\n위의 그래프를 보고 직장인의 통근 수단 비율을 비교하는 글을 200~300자로 쓰십시오.',
 200, 300,
 ARRAY['-에 비해', '반면에', '-는 경향이 있다', '가장 높다', '차지하다'],
 E'위 그래프에 따르면 직장인들이 가장 많이 이용하는 통근 수단은 지하철로 전체의 42%를 차지하였다. 버스는 28%로 그 뒤를 이었으며, 자가용은 20%였다. 지하철과 버스를 합한 대중교통 이용 비율이 70%에 달하는 데 비해, 자가용 이용 비율은 20%에 그쳤다. 도보나 자전거를 이용하는 직장인은 10%로 가장 낮은 비율을 보였다.'),

('W1D2W009', 'topik2_level4_comprehensive', 1, 2, 9,
 '53',
 E'[막대그래프] 세대별 하루 평균 스마트폰 사용 시간 비교 - 10대: 6.2시간 - 20대: 5.8시간 - 30대: 4.1시간 - 40대: 2.9시간 - 50대 이상: 1.7시간\n\n위의 그래프를 보고 세대별 스마트폰 사용 시간을 비교하는 글을 200~300자로 쓰십시오.',
 200, 300,
 ARRAY['-에 비해', '반면에', '-는 경향이 있다', '감소하다', '차이가 있다'],
 E'위 그래프를 보면 세대에 따라 스마트폰 사용 시간에 차이가 있다. 10대는 하루 평균 6.2시간으로 가장 높았으며 20대(5.8시간)도 높은 편이었다. 반면 연령이 높아질수록 사용 시간이 줄어드는 경향이 있어, 40대는 2.9시간, 50대 이상은 1.7시간에 그쳤다. 10대에 비해 50대 이상의 사용 시간은 약 4.5시간 적어 세대 간 격차가 상당히 크다는 것을 알 수 있다.'),

('W1D2W010', 'topik2_level4_comprehensive', 1, 2, 10,
 '53',
 E'[선그래프] 최근 5년 온라인 쇼핑 이용률 변화 - 2019년: 52% - 2020년: 63% - 2021년: 71% - 2022년: 74% - 2023년: 78%\n\n위의 그래프를 보고 온라인 쇼핑 이용률의 변화를 설명하는 글을 200~300자로 쓰십시오.',
 200, 300,
 ARRAY['-에 비해', '반면에', '-는 경향이 있다', '증가하다', '꾸준히'],
 E'위 그래프를 보면 온라인 쇼핑 이용률은 최근 5년간 꾸준히 증가하는 경향이 있다. 2019년에는 52%였으나 2020년에는 63%로 급격히 상승하였다. 이후에도 이용률은 2021년 71%, 2022년 74%, 2023년 78%로 계속 높아졌다. 2019년에 비해 2023년의 이용률은 26%포인트 증가하여 온라인 쇼핑이 일상적인 구매 방식으로 자리 잡았음을 알 수 있다.'),

('W1D2W011', 'topik2_level4_comprehensive', 1, 2, 11,
 '53',
 E'[선그래프] 최근 5년 재택근무 도입 기업 비율 변화 - 2019년: 11% - 2020년: 38% - 2021년: 45% - 2022년: 41% - 2023년: 35%\n\n위의 그래프를 보고 재택근무 도입 기업 비율의 변화를 설명하는 글을 200~300자로 쓰십시오.',
 200, 300,
 ARRAY['-에 비해', '반면에', '-는 경향이 있다', '증가하다', '감소하다'],
 E'위 그래프를 보면 재택근무 도입 기업 비율은 최근 5년간 큰 변화를 보였다. 2019년에는 11%에 불과하였으나 2020년에 38%로 급격히 증가하였다. 이는 팬데믹의 영향으로 재택근무를 도입하는 기업이 크게 늘었기 때문으로 볼 수 있다. 반면 2021년 45%를 정점으로 이후 감소하는 경향이 있어 2023년에는 35%로 줄었다. 그러나 2019년에 비하면 여전히 높은 수준임을 알 수 있다.'),

('W1D2W012', 'topik2_level4_comprehensive', 1, 2, 12,
 '53',
 E'[원그래프] 외국인 유학생의 한국 생활 만족 요인 - 음식·식문화: 31% - 교통 편의성: 24% - 문화·여가 활동: 20% - 학업 환경: 16% - 기타: 9%\n\n위의 그래프를 보고 외국인 유학생이 한국 생활에서 만족하는 요인을 설명하는 글을 200~300자로 쓰십시오.',
 200, 300,
 ARRAY['-에 비해', '반면에', '-는 경향이 있다', '가장 높다', '차지하다'],
 E'위 그래프에 따르면 외국인 유학생이 한국 생활에서 가장 만족하는 요인은 음식·식문화로 31%를 차지하였다. 그 다음으로는 교통 편의성이 24%, 문화·여가 활동이 20%를 차지하였다. 학업 환경에 대한 만족도는 16%로 교통 편의성에 비해 낮은 편이었다. 이를 통해 유학생들은 한국의 생활 인프라와 문화에 대한 만족도가 높은 반면, 학업 환경에 대한 만족도는 상대적으로 낮다는 것을 알 수 있다.'),

-- -------------------------------------------------------
-- D) 54번형 — 의견 쓰기 (W1D2W013~015)
-- -------------------------------------------------------

('W1D2W013', 'topik2_level4_comprehensive', 1, 2, 13,
 '54',
 E'온라인 교육과 오프라인 교육 중 어느 것이 더 효과적인지 자신의 생각을 600~700자로 쓰십시오.',
 600, 700,
 ARRAY['-에 비해서', '-는 반면에', '반대로', '그러나', '-는 경향이 있다'],
 E'[개요 예시]\n• 서론: 정보화 시대에 교육 방식의 다양화 → 온라인·오프라인 교육 비교의 필요성\n• 본론 1 — 온라인 교육의 장점: 시간·장소 자유, 반복 학습 가능, 비용 절감\n• 본론 2 — 오프라인 교육의 장점: 즉각적 피드백, 사회적 상호작용, 집중력 유지\n• 결론: 두 방식의 장점을 결합한 혼합형 학습이 가장 효과적이라는 의견 제시'),

('W1D2W014', 'topik2_level4_comprehensive', 1, 2, 14,
 '54',
 E'도시 생활과 농촌 생활의 장단점을 비교하고 자신의 견해를 600~700자로 쓰십시오.',
 600, 700,
 ARRAY['-에 비해서', '-는 반면에', '반대로', '그러나', '-는 경향이 있다'],
 E'[개요 예시]\n• 서론: 현대인의 거주지 선택 — 도시와 농촌 중 무엇이 더 나은가\n• 본론 1 — 도시의 장단점: 편리한 인프라·취업 기회 vs 높은 생활비·환경 문제\n• 본론 2 — 농촌의 장단점: 자연환경·저렴한 물가 vs 일자리 부족·교통 불편\n• 결론: 개인의 생활 방식과 가치관에 따라 선택이 달라지며, 자신의 우선순위를 고려해야 한다는 견해 제시'),

('W1D2W015', 'topik2_level4_comprehensive', 1, 2, 15,
 '54',
 E'개인 학습과 그룹 학습의 차이를 설명하고 어느 방법이 더 효과적인지 자신의 생각을 600~700자로 쓰십시오.',
 600, 700,
 ARRAY['-에 비해서', '-는 반면에', '반대로', '그러나', '-는 경향이 있다'],
 E'[개요 예시]\n• 서론: 효과적인 학습 방법에 대한 관심 증가 → 개인 학습과 그룹 학습 비교\n• 본론 1 — 개인 학습의 특징: 자신의 속도에 맞춰 학습, 집중력 높음, 즉각적 질문 어려움\n• 본론 2 — 그룹 학습의 특징: 다양한 관점 공유, 동기 부여, 집중력 분산 위험\n• 결론: 학습 목표와 개인 성향에 따라 두 방법을 적절히 병행하는 것이 효과적이라는 의견 제시');
