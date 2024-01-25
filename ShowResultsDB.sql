use DataWarehouse;

select * from DEPARTMENT;

select * from TIME;

select * from SALARIEDTYPE;

select * from HR_FACT1;


select emdh.DepartmentID, YEAR(HireDate) yearDate, MONTH(HireDate) monthDate, SalariedFlag, COUNT(em.BusinessEntityID) CountEmployees, SUM(VacationHours) sumVacHours, SUM(SickLeaveHours) sumSickHours
from HumanResources.Employee em
join HumanResources.EmployeeDepartmentHistory emdh 
on em.BusinessEntityID = emdh.BusinessEntityID
--where SalariedFlag = 0
group by emdh.DepartmentID, YEAR(HireDate), MONTH(HireDate), SalariedFlag;

