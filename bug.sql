```sql
SELECT COUNT(*) FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This SQL query might seem straightforward, but it can lead to unexpected behavior if the `salary` column allows NULL values. If there are employees in the Sales department with NULL salaries, they will be excluded from the count, even though they might technically meet the criteria of being in the Sales department.  This could lead to an inaccurate count of high-earning employees in the Sales department.