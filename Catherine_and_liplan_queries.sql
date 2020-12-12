1. SELECT z.Name,COUNT(Customerid) FROM customer c,zones z WHERE c.ZID = z.ZID GROUP BY z.Name;


2. SELECT c.CustName FROM customer c,premise p,bill b,payment y WHERE c.Customerid = p.Customerid AND p.PremiseId = b.PremiseId AND b.BID = y.BID AND y.ExpectedAmount = y.PaidAmount;


3. SELECT c.CustName,y.ExpectedAmount-y.PaidAmount AS "balance" FROM customer c,premise p,bill b,payment y WHERE c.Customerid = p.Customerid AND p.PremiseId = b.PremiseId AND b.BID = y.BID;


4. SELECT c.CustName FROM customer c,premise p,bill b,payment y WHERE c.Customerid = p.Customerid AND p.PremiseId = b.PremiseId AND b.BID = y.BID AND y.ExpectedAmount > y.PaidAmount;


5. SELECT Route_name FROM route where route.status = 1;


6. SELECT Route_name FROM route where route.status = 0;


7. SELECT z.Name,COUNT(s.StaffID) FROM zones z,staff s WHERE z.SID = s.SID GROUP BY z.Name;


8. SELECT Plant_name,Capacity FROM plant WHERE Plant_name = "plant7";


9. SELECT c.CustName FROM customer c,premise p WHERE c.Customerid = p.Customerid AND p.Tarrifid = 2;


10. SELECT c.CustName FROM customer c,premise p WHERE c.Customerid = p.Customerid AND p.Tarrifid = 1;


11. SELECT c.CustName FROM customer c,premise p,bill b,staff s where c.customerid=p.customerid AND p.Premiseid = b.Premiseid AND b.StaffID = s.StaffID AND s.StaffName = "Bello";


12. SELECT p.Premiseid FROM premise p,route r WHERE p.RID=r.RID AND r.Route_name = "route1";


13. SELECT c.CustName,c.TelephoneNo FROM customer c,premise p,route r WHERE c.Customerid=p.Customerid AND p.RID = r.RID AND r.Route_name = "route4";