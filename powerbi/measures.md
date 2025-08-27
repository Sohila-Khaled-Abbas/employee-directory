# DAX Measures

```DAX
Employees = DISTINCTCOUNT('v_employee_directory'[employee_id])

Employees by Dept =
CALCULATE([Employees], ALLEXCEPT('v_employee_directory','v_employee_directory'[department]))

Has Email % =
DIVIDE(
  CALCULATE([Employees], NOT ISBLANK('v_employee_directory'[email_work])),
  [Employees]
)

Has Phone % =
DIVIDE(
  CALCULATE([Employees], NOT ISBLANK('v_employee_directory'[phone_work])),
  [Employees]
)
```

# UX Features

```DAX
Email Link = IF(
  NOT ISBLANK('v_employee_directory'[email_work]),
  "mailto:" & 'v_employee_directory'[email_work],
  BLANK()
)

Phone Link = IF(
  NOT ISBLANK('v_employee_directory'[phone_work]),
  "tel:" & SUBSTITUTE('v_employee_directory'[phone_work]," ",""),
  BLANK()
)
```