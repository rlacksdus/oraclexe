/*
ORDER BY 절
    ORDER BY 절을 사용하여 검색된 행을 정렬한다.
        ASC: 오름차순, 기본값
        DESC : 내림착순
    SELECT 문의 맨 마지막에 온다.
    
[SELECT 문 기본형식]
5 SELECT (DISTIC)|컬럼명,컬럼명2...
1 FROM 테이블명
2 WHERE 조건절
3 GROUP BY 컬럼명
4 HAVING 조건절
6 ORDER BY 컬럼명[ASC|DESC]
*/

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date;

--내림차순 정렬
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;

--열 alias를 기준으로 정렬
SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal;

--열 숫자 위치를 사용하여 정렬
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY 3;

-- 여러 열을 기준으로 정령
SELECT last_name, job_id, department_id, salary
FROM employees
ORDER BY department_id, salary DESC;

























