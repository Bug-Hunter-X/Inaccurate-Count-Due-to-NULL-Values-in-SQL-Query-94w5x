```sql
SELECT COUNT(*) FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```
This revised query uses the `OR salary IS NULL` clause to explicitly include employees with NULL salaries in the count.  Alternatively, you could use a CASE statement to handle NULLs, setting them to a default value like 0:
```sql
SELECT COUNT(*) FROM employees WHERE department = 'Sales' AND CASE WHEN salary IS NULL THEN 0 ELSE salary END > 100000;
```
Choosing the best approach depends on the specific requirements and interpretation of NULL salaries in your context.