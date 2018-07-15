SElECT CONCAT(
  UPPER(SUBSTRING(firstname, 1, 1)),
  SUBSTRING(firstname, 2, LENGTH(firstname)),
  ' ', 
  UPPER(SUBSTRING(lastname, 1, 1)),
  SUBSTRING(lastname, 2, LENGTH(lastname))
) AS shortlist
FROM Elves
WHERE 
  firstname LIKE '%tegil%' OR
  lastname LIKE '%astar%';