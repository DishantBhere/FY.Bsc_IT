1]  FIND  BIGGEST NO.B/W THREE NUM

DECLARE
  a NUMBER := 4; 
  b NUMBER := 46;
  c NUMBER := 16;
BEGIN
  IF (a > b) AND (a > c) THEN
    dbms_output.put_line('A is the biggest number: ' || a);
  ELSIF (b > c) THEN
    dbms_output.put_line('B is the biggest number: ' || b);
  ELSE
    dbms_output.put_line('C is the biggest number: ' || c);
  END IF;
END;

2] FIND SUM OF N NUM

DECLARE
  num NUMBER := 5; 
  res NUMBER := 0;
BEGIN
  WHILE num > 0 LOOP
    res := res + num;
    num := num - 1;
    EXIT WHEN num = 0;
  END LOOP;
  
  dbms_output.put_line('Total is: ' || res);
END;

3] FIND SUM OF ODD AND EVEN NUM FOR LOOP STATEMENT

DECLARE
  odd NUMBER := 0;
  even NUMBER := 0;
  i NUMBER := 1;
  n NUMBER := 5; 
  
BEGIN
  LOOP
    EXIT WHEN i > n;
    
    IF (i MOD 2 = 0) THEN
      even := even + i; 
    ELSE
      odd := odd + i;
    END IF;
    
    i := i + 1;
  END LOOP;
  
  dbms_output.put_line('The sum of even numbers is: ' || even);
  dbms_output.put_line('The sum of odd numbers is: ' || odd);
  
END;

4] FIND THE CALCULATOR IN SWITCHCASE


5] FIND GOTO STATEMENT

DECLARE
  a NUMBER(2) := 10;
BEGIN
  <<loop_start>>
  WHILE a <= 20 LOOP
    dbms_output.put_line('Value of a: ' || a);
    a := a + 1;
    
    IF a = 15 THEN
      a := a + 1;
      GOTO loop_start;
    END IF;
  END LOOP;
END;

6] FIND FIBONACCI SERIES  IN PROCEDURE
7] FIND SIMPLE INTEREST IN PROCEDURE

DECLARE
  p NUMBER(6,2);
  n NUMBER;
  r NUMBER;
  
  PROCEDURE Simple(P IN NUMBER, n IN NUMBER, r1 IN NUMBER) IS
    si NUMBER(6,2);
  BEGIN
    si := P * n * r1 / 100;
    dbms_output.put_line('Simple Interest Value is ' || si);
  END;

BEGIN
  dbms_output.put_line('Enter P, n, r values:');
  p := &p;
  n := &n;
  r := &r;
  
  Simple(p, n, r);
END;

8] FIND RETURN MAX OF TWO VALUES IN FUNCTION 

DECLARE
  a NUMBER := 23;
  b NUMBER := 45;
  c NUMBER;
  
  FUNCTION find_max(x IN NUMBER, y IN NUMBER) RETURN NUMBER IS
    z NUMBER;
  BEGIN
    IF x > y THEN
      z := x;
    ELSE
      z := y; 
    END IF;
    
    RETURN z;
  END find_max;
  
BEGIN
  c := find_max(a, b); 
  
  dbms_output.put_line('Maximum of (23, 45): ' || c);
  
END;

9] FIND THE FACTORIAL IN FUNCTION

DECLARE
  num NUMBER;
  factorial NUMBER;
  
  FUNCTION fact(x NUMBER) RETURN NUMBER IS
    f NUMBER;
  BEGIN
    IF x = 0 THEN
      f := 1;
    ELSE
      f := x * fact(x - 1);
    END IF;
    
    RETURN f;
  END fact;
  
BEGIN
  num := &num;
  factorial := fact(num);
  
  dbms_output.put_line('Factorial of ' || num || ' is: ' || factorial);
END;


                                                                                         THANK YOU
