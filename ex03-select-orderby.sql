/*
ORDER BY ��
    ORDER BY ���� ����Ͽ� �˻��� ���� �����Ѵ�.
        ASC: ��������, �⺻��
        DESC : ��������
    SELECT ���� �� �������� �´�.
    
[SELECT �� �⺻����]
5 SELECT (DISTIC)|�÷���,�÷���2...
1 FROM ���̺��
2 WHERE ������
3 GROUP BY �÷���
4 HAVING ������
6 ORDER BY �÷���[ASC|DESC]
*/

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date;

--�������� ����
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;

--�� alias�� �������� ����
SELECT employee_id, last_name, salary*12 annsal
FROM employees
ORDER BY annsal;

--�� ���� ��ġ�� ����Ͽ� ����
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY 3;

-- ���� ���� �������� ����
SELECT last_name, job_id, department_id, salary
FROM employees
ORDER BY department_id, salary DESC;

























