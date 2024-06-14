SELECT * FROM INFO;
SELECT * FROM AUTH;

--INNER JOIN(INNER ��������): ���� �� ���� �����ʹ� ������ ����
SELECT *
FROM INFO
INNER JOIN AUTH ON INFO.AUTH_ID = AUTH.AUTH_ID;

SELECT INFO.ID,
       INFO.TITLE,
       INFO.CONTENT,
       INFO.AUTH_ID, --AUTH_ID�� ������ �� �ִ� KEY, ���̺�.�÷��� ��������� �մϴ�.
       AUTH.NAME
FROM INFO
INNER JOIN AUTH ON INFO.AUTH_ID = AUTH.AUTH_ID;

--���̺� ALIAS
SELECT I.ID,
       I.TITLE,
       I.CONTENT,
       I.AUTH_ID,
       A.NAME
FROM INFO I --���̺� �����
INNER JOIN AUTH A ON I.AUTH_ID = A.AUTH_ID;

--������ Ű�� ���ٸ� USING���� ����� �� ����
SELECT *
FROM INFO
INNNER JOIN AUTH A USING (AUTH_ID);

----------------------------------------------------------------------------------------------------

--OUTER JOIN
--LEFT OUTER JOIN(OUTER ��������): �������̺��� �����̵Ǽ�, �������̺��� �� ����.
SELECT *
FROM INFO
LEFT OUTER JOIN AUTH ON INFO.AUTH_ID = AUTH.AUTH_ID;

--RIGHT OUTER JOIN(OUTER ��������): ���������̺��� �����̵Ǽ�, ���������̺��� �� ����.
SELECT *
FROM INFO
RIGHT OUTER JOIN AUTH ON INFO.AUTH_ID = AUTH.AUTH_ID;

--RIGHT������ ���̺� �ڸ��� �ٲ��ָ� LEFT JOIN
SELECT *
FROM AUTH A
RIGHT OUTER JOIN INFO I ON A.AUTH_ID = I.AUTH_ID;

--FULL OUTER JOIN(OUTER ��������): ���� ������ �������� �� ����.
SELECT *
FROM INFO I
FULL OUTER JOIN AUTH A ON I.AUTH_ID = A.AUTH_ID;

--CROSS JOIN(�߸��� ������ ����: ������ ������ ����)
SELECT *
FROM INFO I
CROSS JOIN AUTH A;

----------------------------------------------------------------------------------------------------

--SELF JOIN(�ϳ��� ���̺��� ������ ������ �Ŵ°�: ���� ���̺� �ȿ� ���� ������ Ű�� �ʿ���)
SELECT * FROM EMPLOYEES;

SELECT *
FROM EMPLOYEES E
LEFT JOIN EMPLOYEES E2 ON E.MANAGER_ID = E2.EMPLOYEE_ID;

----------------------------------------------------------------------------------------------------

--����Ŭ ����: ����Ŭ������ ����� �� �ְ�, ������ ���̺��� FROM�� ���ϴ�. ���������� WHERE�� ���ϴ�.

--����Ŭ INNER JOIN
SELECT *
FROM INFO I, AUTH A
WHERE I.AUTH_ID = A.AUTH_ID;

--����Ŭ LEFT JOIN
SELECT *
FROM INFO I, AUTH A
WHERE I.AUTH_ID = A.AUTH_ID(+); --���� ���̺� +

--����Ŭ RIGHT JOIN
SELECT *
FROM INFO I, AUTH A
WHERE I.AUTH_ID(+) = A.AUTH_ID;

--����Ŭ FULL JOIN�� ����

--ũ�ν������� �߸��� ����(���� ������ �������� �� ��Ÿ��)
SELECT *
FROM INFO I, AUTH A;
----------------------------------------------------------------------------------------------------

SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT * FROM LOCATIONS;

--����ϰ� �����ϸ� N���̺� 1���̺��� ���̴°� ���� ����.
SELECT *
FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--������ ������ �� ���� ����
SELECT E.EMPLOYEE_ID,
       E.FIRST_NAME,
       D.DEPARTMENT_NAME,
       L.CITY
FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
LEFT JOIN LOCATIONS L ON D.LOCATION_ID = L.LOCATION_ID
WHERE EMPLOYEE_ID >= 150;

--1�� N�� ����
SELECT *
FROM DEPARTMENTS D
LEFT JOIN EMPLOYEES E ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;