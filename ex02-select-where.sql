/*
������ ����Ͽ� �� ����
    where ���� ����Ͽ� ��ȯ�Ǵ� ���� �����մϴ�.
    
where
    ������ �����ϴ� ������ query�� �����մϴ�.
    
    ������ ���
    - ���̸�
    -������
    - �� �̸�, ��� �Ǵ� �� ����Ʈ
*/

--where �� ���
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id=90;

/*
���ڿ� �� ��¥
    ���ڿ� �׳�¥ ���� ���� ����ǥ�� �����ϴ�.
    ���ڰ��� ��ҹ��ڸ� �����ϰ� ��¥���� ������ �����մϴ�.
        
    �⺻ ��¥ ǥ��������  DD-MON-RR
*/

SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'Whalen';

SELECT last_name, hire_date
FROM employees
WHERE hire_date = '03/06/17';


/*
�� ������
    Ư�� ǥ������ �ٸ� ���̳� ǥ���İ� ���ϴ� ���ǿ��� ���ȴ�.
    
    =   ����
    >   ���� ŭ
    >=  ���� ũ�ų� ����
    <   ���� ����
    <=  ���� �۰ų� ����
    <>  ���� ����
    BETWEEN ... AND ...     �� �� ���� (��谪 ����)
    IN(set)                 �� ����Ʈ �� ��ġ�ϴ� �� �ǻ�
    LIKE                    ��ġ�ϴ� ���� ���� �˻�
    IS NULL                 NULL ������ ����
*/

--�� ������ ���
SELECT last_name, salary
FROM employees
WHERE salary <= 3000;

--between �����ڸ� ����ϴ� ���� ����
SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 2500 AND 3500;

--Ǯ���
SELECT last_name, salary
FROM employees
WHERE salary >=2500
AND salary <= 3500;

--IN �����ڸ� ����ϴ� �ɹ� ����
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100, 101, 201);.


--Ǯ���
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id =100
OR manager_id=101
OR manager_id=201;

/*
LIKE �����ڸ� ����Ͽ� ���� ��ġ
    LIKE �����ڸ� ����Ͽ� ��ȿȯ �˻� ���ڿ� ���� ���� ���� �˻��� �����Ѵ�
    �˻� ���ǿ��� ���ͷ� ���ڳ� ���ڰ� ���Ե� �� �ִ�.
        -%: 0�� �̻��� ���ڸ� ��Ÿ����
        -_: �� ���ڸ� ��Ÿ����.
*/

SELECT first_name
FROM employees
WHERE first_name LIKE 'A%';

--��ü ���� ����
SELECT last_name
FROM employees
WHERE last_name LIKE '_o%';

--ESCAPE �ĺ���
SELECT employee_id, last_name, job_id
FROM employees
WHERE job_id LIKE '%SA\_%' ESCAPE '\';

/*
NULL ���� ���
    IS NULL �����ڷ� NULL�� �׽�Ʈ �Ѵ�.
*/

SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;

/*
�� �����ڸ� ����Ͽ� ��������
    AND : ���� ��� ������ ��� ���� �ܿ� TRUE ��ȯ
    OR  : ���� ��� ���� �� �ϳ��� ���� ��� TRUE ��ȯ
    NOT : ������ �Ś��� ��� TRUE�� ��ȯ
    
*/
-- AND ������ ���
SELECT emploYee_id, last_name, job_id, salary
FROM employees
WHERE salary >=10000
AND job_id LIKE '%MAN%';

--OR ������ ���
SELECT employee_id, last_name, job_id, salary, 12*12000000 as test

FROM employees
WHERE salary >= 10000
OR job_id LIKE '%MAN%'
;

-- NOT ������ ���
SELECT last_name, job_id
FROM employees
WHERE job_id NOT IN ('IT_PROG', ' ST_CLERK', 'SA_REP');








































