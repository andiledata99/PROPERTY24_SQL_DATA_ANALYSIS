--Lesson 10 – Aggregations (COUNT, SUM, AVG, GROUP BY)

--SECTION 1 – COUNT Aggregations (10 Questions)

---CHECKING ALL DATA IN THE TABLE 
SELECT *  FROM Data_Property24;

--1. How many total properties are in the database?

SELECT COUNT(* )
FROM Data_Property24;

--2. How many properties are listed in each province?

SELECT DISTINCT PROVINCE,COUNT(PROPERTY_ID) AS NUMBER_OF_PROPERTIES
FROM Data_Property24
GROUP BY PROVINCE;

--3. How many properties are listed in each city?

SELECT DISTINCT CITY,COUNT(PROPERTY_ID) AS NUMBER_OF_PROPERTIES
FROM Data_Property24
GROUP BY CITY;

--4. How many properties have more than 2 bedrooms?

SELECT COUNT(PROPERTY_ID) AS NUMBER_OF_PROPERTIES
FROM Data_Property24
WHERE BEDROOMS>2;

--5. How many properties have 2 or more bathrooms?

SELECT COUNT(PROPERTY_ID) AS NUMBER_OF_PROPERTIES
FROM Data_Property24
WHERE BATHROOMS>=2;


--6. How many properties have parking for at least 2 cars?

SELECT COUNT(PROPERTY_ID) AS NUMBER_OF_PROPERTIES
FROM Data_Property24
WHERE PARKING>=2;

--7. How many properties are priced above R3,000,000?

SELECT COUNT(PROPERTY_ID) AS NUMBER_OF_PROPERTIES
FROM Data_Property24
WHERE PROPERTY_PRICE>3000000;

--8. How many properties are in Gauteng?

SELECT COUNT(PROPERTY_ID) AS NUMBER_OF_PROPERTIES
FROM Data_Property24
WHERE PROVINCE='gauteng';

--9. How many properties per province have floor size greater than 200?

SELECT COUNT(PROPERTY_ID) AS NUMBER_OF_PROPERTIES
FROM Data_Property24
WHERE FLOOR_SIZE>200;

--10. How many distinct provinces are in the table?

SELECT COUNT(DISTINCT PROVINCE) AS TOTAL_PROVINCES 
FROM Data_Property24;


--SECTION 2 – SUM Aggregations (10 Questions)

--11. What is the total value of all properties combined?

SELECT SUM(PROPERTY_PRICE) AS TOTAL_VALUE
FROM Data_Property24;

--12. What is the total property value per province?

SELECT SUM(PROPERTY_PRICE) AS TOTAL_VALUE
FROM Data_Property24
GROUP BY PROVINCE;


--13. What is the total property value per city?

SELECT SUM(PROPERTY_PRICE) AS TOTAL_VALUE
FROM Data_Property24
GROUP BY CITY;

--14. What is the total monthly repayment for all properties?

SELECT SUM(Monthly_Repayment) AS TOTAL_VALUE
FROM Data_Property24;


--15. What is the total monthly repayment per province?

SELECT SUM(PROPERTY_PRICE) AS TOTAL_VALUE
FROM Data_Property24
GROUP BY PROVINCE;

--16. What is the total once-off cost for all properties?

SELECT SUM(Total_Once_off_Costs) AS TOTAL_VALUE
FROM Data_Property24;

--17. What is the total once-off cost per province?

SELECT SUM(Total_Once_off_Costs) AS TOTAL_VALUE
FROM Data_Property24
GROUP BY PROVINCE;

--18. What is the total property value for Gauteng?

SELECT SUM(PROPERTY_PRICE) AS TOTAL_VALUE
FROM Data_Property24
WHERE PROVINCE ='gauteng';

--19. What is the total property value for properties priced above R4,000,000?

SELECT SUM(PROPERTY_PRICE) AS TOTAL_VALUE
FROM Data_Property24
WHERE PROPERTY_PRICE>4000000;


--20. What is the total minimum gross monthly income required per province?

SELECT PROVINCE, SUM(Min_Gross_Monthly_Income) AS TOTAL_VALUE
FROM Data_Property24
GROUP BY PROVINCE;


--SECTION 3 – AVG Aggregations (10 Questions)

--21. What is the average property price overall?

SELECT  AVG(PROPERTY_PRICE) AS AVERAGE_PRICE 
FROM Data_Property24;

--22. What is the average property price per province?

SELECT PROVINCE, AVG(PROPERTY_PRICE) AS AVERAGE_PRICE 
FROM Data_Property24
GROUP BY PROVINCE;

--23. What is the average property price per city?

SELECT CITY, AVG(PROPERTY_PRICE) AS AVERAGE_PRICE 
FROM Data_Property24
GROUP BY CITY;


--24. What is the average number of bedrooms per province?

SELECT AVG(BEDROOMS) AS AVERAGE_BEDROOM_QUANTITY
FROM Data_Property24
GROUP BY PROVINCE;

--25. What is the average number of bathrooms per province?

SELECT AVG(BATHROOMS) AS AVERAGE_BATHROOM_QUANTITY
FROM Data_Property24
GROUP BY PROVINCE;

--26. What is the average floor size per province?

SELECT AVG(FLOOR_SIZE) AS AVERAGE_FLOOR_SIZE
FROM Data_Property24
GROUP BY PROVINCE;

--27. What is the average monthly repayment per province?

SELECT PROVINCE,AVG(Monthly_Repayment) AS AVERAGE_MONTHLY_REPAYMENT 
FROM Data_Property24
GROUP BY PROVINCE;

--28. What is the average once-off cost per province?

SELECT PROVINCE,AVG(Total_Once_off_Costs) AS AVERAGE_ONCE_OFF_COST
FROM Data_Property24
GROUP BY PROVINCE;


--29. What is the average minimum gross monthly income per province?

SELECT PROVINCE,AVG(Min_Gross_Monthly_Income) AS AVERAGE_MINIMUM_GROSS_INCOME 
FROM Data_Property24
GROUP BY PROVINCE;


--30. What is the average property price for properties above R3,000,000?

SELECT AVG(PROPERTY_PRICE) AS AVERAGE_PROPERTY_PRICE  
FROM Data_Property24
WHERE PROPERTY_PRICE>3000000;


--SECTION 4 – GROUP BY + Filtering (10 Questions)

--31. Which province has the highest average property price?

SELECT TOP 1 PROVINCE,
AVG(PROPERTY_PRICE)
FROM Data_Property24
GROUP BY PROVINCE;

--32. Which province has the lowest average property price?



--33. Which city has the highest total property value?
--34. Which city has the lowest average property price?
--35. How many properties per province are priced above R2,000,000?
--36. What is the average floor size per province for properties above R3,000,000?
--37. What is the total property value per province for properties with 3 or more bedrooms?
--38. What is the average monthly repayment per province for properties above R4,000,000?
--39. How many properties per city have parking for 2 or more cars?
--40. What is the average minimum gross monthly income per province for properties above R5,000,000?
