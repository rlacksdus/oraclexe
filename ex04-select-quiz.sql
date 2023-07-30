--Q1. "employees" ���̺��� ��� �������� ��(last_nmae), �̸�(first_name)�� �޿�(salary)�� ��ȸ�Ͻÿ�
SELECT last_name, first_name, salary
FROM employees;


--Q2. "jobs"���̺��� ��� �������� ���� ID(job_id)�� ������(job_title)�� ��ȸ�Ͻÿ�
SELECT job_id, job_title
FROM jobs;


--Q3. "departments" ���̺��� ��� �μ����� �μ� ID(department_id)�� �μ���(department_name)�� ��ȸ�ϼ���
SELECT department_id, department_name
FROM departments;


--Q4. "locations"���̺��� ��� �������� ���� ID(location_id)�� ����(city)�� ��ȸ�ϼ���
SELECT location_id, city
FROM locations;


--Q5. "employees" ���̺��� �޿�(salary)�� 5000�̻��� �������� �̸�(first_name)�� �޿�(salary)�� ��ȸ�ϼ���
SELECT first_name, salary
FROM employees
WHERE salary>=5000
ORDER BY 2 DESC;


--Q6. "employees" ���̺��� �ٹ� ������(hire_date)�� 2005�� ������ �������� �̸�(first_name)�� �ٹ� ������(hire_date)�� ��ȸ�ϼ���
SELECT first_name, hire_date
FROM employees
WHERE hire_date >= '05/01/01' --== or TO_DATE('2005-01-01', 'YYYY-MM-DD')
ORDER BY 2;







































