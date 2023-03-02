SELECT c.company_code, c.founder, count(DISTINCT lm.lead_manager_code), 
        count(DISTINCT sm.senior_manager_code), count(DISTINCT m.manager_code),
        count(DISTINCT e.employee_code)
FROM Company c, Lead_Manager lm, Senior_Manager sm, Manager m, Employee e
WHERE c.company_code = lm.company_code
AND lm.company_code = sm.company_code
AND sm.company_code = m.company_code
AND m.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY 1;