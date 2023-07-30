/*
선택을 사용하여 랭 제한
    where 절을 사용하여 반환되는 행을 제한합니다.
    
where
    조건을 충족하는 행으로 query를 제한합니다.
    
    세가지 요소
    - 열이름
    -비교조건
    - 열 이름, 상수 또는 값 리스트
*/

--where 절 사용
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id=90;

/*
문자열 및 날짜
    문자열 및날짜 값은 작은 따옴표로 묶습니다.
    문자값은 대소문자를 구분하고 날짜값은 형식을 구분합니다.
        
    기본 날짜 표시형식은  DD-MON-RR
*/

SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'Whalen';

SELECT last_name, hire_date
FROM employees
WHERE hire_date = '03/06/17';


/*
비교 연산자
    특정 표현식을 다른 값이나 표현식과 비교하는 조건에서 사용된다.
    
    =   같음
    >   보다 큼
    >=  보다 크거나 같음
    <   보다 작음
    <=  보다 작거나 같음
    <>  같지 않음
    BETWEEN ... AND ...     두 값 사이 (경계값 포함)
    IN(set)                 값 리스트 중 일치하는 값 건색
    LIKE                    일치하는 문자 패턴 검색
    IS NULL                 NULL 값인지 여부
*/

--비교 연산자 사용
SELECT last_name, salary
FROM employees
WHERE salary <= 3000;

--between 연산자를 사용하는 범위 조건
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500;

--풀어쓰기
SELECT last_name, salary
FROM employees
WHERE salary >=2500
AND salary <= 3500;

--IN 연산자를 사용하는 맴버 조건
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100, 101, 201);.


--풀어쓰기
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id =100
OR manager_id=101
OR manager_id=201;

/*
LIKE 연산자를 사용하여 패턴 일치
    LIKE 연산자를 사용하여 유효환 검색 문자열 값의 댗페 문자 검색을 수행한다
    검색 조건에는 리터럴 문자나 숫자가 포함될 수 있다.
        -%: 0개 이상의 문자를 나타낸다
        -_: 한 문자를 나타낸다.
*/

SELECT first_name
FROM employees
WHERE first_name LIKE 'A%';

--대체 문자 결합
SELECT last_name
FROM employees
WHERE last_name LIKE '_o%';

--ESCAPE 식별자
SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%SA\_%' ESCAPE '\';

/*
NULL 조건 사용
    IS NULL 연산자로 NULL을 테스트 한다.
*/

SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;

/*
논리 연산자를 사용하여 조건정의
    AND : 구성 요소 조건이 모두 참인 겨우 TRUE 반환
    OR  : 구성 요소 조건 중 하나가 참인 경우 TRUE 반환
    NOT : 조건이 거싲인 경우 TRUE를 반환
    
*/
-- AND 연산자 사용
SELECT emploYee_id, last_name, job_id, salary
FROM employees
WHERE salary >=10000
AND job_id LIKE '%MAN%';

--OR 연산자 사용
SELECT employee_id, last_name, job_id, salary, 12*12000000 as test

FROM employees
WHERE salary >= 10000
OR job_id LIKE '%MAN%'
;

-- NOT 연산자 사용
SELECT last_name, job_id
FROM employees
WHERE job_id NOT IN ('IT_PROG', ' ST_CLERK', 'SA_REP');








































