
--Insert Into Employee Table 
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2047, 'Robbie', 'Springer', 'Assistant Accountant');
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2048, 'Mandy', 'Flores', 'Developer Programmer');
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2049, 'Gloria', 'Hartman', 'SPACE Team');
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2050, 'Harry', 'Gould', 'Operations Team');
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2051, 'Daisy', 'Bullok', 'Operations Team');
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2052, 'Anthony', 'Boyle', 'Operations Team');
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2053, 'Ross', 'Shepard', 'Mobile Car Detail and Cleaning Crew');
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2054, 'Randolph', 'Snider', 'Mobile Vehicle Maintenance Crew');
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2055, 'Jenny', 'Moore', 'Mobile Vehicle Maintenance Crew');
INSERT INTO employee (employeeid, employeefirstname, employeelastname, employeerole) VALUES (2056, 'Jocelyn', 'MacKey', 'Mobile Vehicle Maintenance Crew');


--Insert Into Discount Table 
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3050, NULL, 0);
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3051, '5 PromoCode', 5);
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3052, '10 PromoCode', 10);
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3053, '15 PromoCode', 15);
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3054, '20 PromoCode', 20);
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3055, '25 PromoCode', 25);
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3056, '30 PromoCode', 30);
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3057, '35 PromoCode', 35);
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3058, '40 PromoCode', 40);
INSERT INTO discount (discountid, discounttype, discountpercentage) VALUES (3059, '45 PromoCode', 45);


--Insert Into plans Table
INSERT INTO plans (planid, plantype, vandayrate, discountid)
VALUES (1, 'Go Frequent Plan', 91, 3050 );
INSERT INTO plans (planid, plantype, vandayrate, discountid)
VALUES (2, 'Van Plan', 109, 3051);
INSERT INTO plans (planid, plantype, vandayrate, discountid)
VALUES (3, 'Business Plan', 99, 3052);
INSERT INTO plans (planid, plantype, vandayrate, discountid)
VALUES (4, 'Student Plan', 99, 3053);
INSERT INTO plans (planid, plantype, vandayrate, discountid)
VALUES (5, 'Senior Plan', 91, 3054);
INSERT INTO plans (planid, plantype, vandayrate, discountid)
VALUES (6, 'Go Occassional Plan',  96, 3055);
INSERT INTO plans (planid, plantype, vandayrate, discountid)
VALUES (7, 'Go Starter Plan', 104, 3056);


--Insert Into inquiry Table
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4002, 'What is the difference between the Personal Plans?', 'Received', 1, 2052);
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4003, 'How much does the Van Plan cost?', 'Ongoing', 6, 2051);
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4004, 'How frequently do I pay for the business Plan?', 'Responded', 2, 2050);
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4005, 'Are there extra fees for the student plan?', 'Done', 3, 2050);
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4006, 'Who is eligible for the senior plan?', 'Ongoing', 4, 2051);
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4007, 'What is the difference between Go Occasional and Go Starter', 'Received', 3, 2052);
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4008, 'Who is eligible for the Go Starter Plan?', 'Responded', 5, 2052);
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4009, 'Who is eligible for the student plan?', 'Ongoing', 6, 2052);
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4010, 'Are there cancellation fees on the Go Starter Plan?', 'Done', 3, 2050);
INSERT INTO inquiry (inquiryid, inquirydescription, inquirystatus, planid , employeeid) VALUES (4011, 'Are there additional fees for the Go Occasional Plan?', 'Done', 7, 2051);


--Insert Into Card_Details Table
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (5101812927741079, 'MRS SALLY TSANG', 'Mastercard', TO_DATE('07/2031', 'mm/yyyy'), 534);
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (6011971606405138, 'MR ROGER KIM', 'Discover', TO_DATE('11/2024', 'mm/yyyy'), 566);
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (5295731064848925, 'MR TIMOTHY JIANG', 'Mastercard', TO_DATE('03/2029', 'mm/yyyy'), 143);
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (5516576179525212, 'MS ANNA DING', 'Mastercard', TO_DATE('06/2029', 'mm/yyyy'), 954);
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (5201598383627162, 'MR DAVID LE', 'Mastercard', TO_DATE('11/2031', 'mm/yyyy'), 367);
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (4024007139885775, 'MR ALEX JIANG', 'Visa', TO_DATE('04/2029', 'mm/yyyy'), 325);
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (4696912451839622, 'MR WILLIAM ZENG', 'Visa', TO_DATE('05/2023', 'mm/yyyy'), 753);
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (4532948221037129, 'MR THOMAS KWON', 'Visa', TO_DATE('07/2028', 'mm/yyyy'), 675);
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (4024007119531399, 'MR MAX LEE', 'Visa', TO_DATE('01/2026', 'mm/yyyy'), 932);
INSERT INTO Card_Details (cardnumber, nameoncard, cardtype, expirydate,cvv) VALUES (4929976462409898, 'MRS RUBY KWAN', 'Visa', TO_DATE('12/2029', 'mm/yyyy'), 437);


--Insert Into insurance Table
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2080, 'Basic Comprehensive');
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2081, 'Basic Third Party Fire and Theft');
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2082, 'Basic Third Party Property Damage');
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2083, 'Advanced Comprehensive'); 
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2084, 'Premium Comprehensive');
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2085, 'Advanced Third Party Fire and Theft');
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2086, 'Premium Third Party Fire and Theft');
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2087, 'Premium Third Party Property Damage');
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2088, 'Advanced Third Party Property Damage');
INSERT INTO insurance(insuranceid, insurancetype) VALUES (2089, 'Superior Comprehensive');


--Insert Into customer Table
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (450, 'Sally', 'Tsang', '2 Poppy Street, Chatswood, NSW, Sydney 2100','sal.tsang@gmail.com', 0401825604, 'P1', 2080, 5101812927741079);
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (340, 'Roger', 'Kim', '51 Rosemary Avenue, Epping, NSW, Sydney 2122','roger.kim@gmail.com', 0402185303, 'P2', 2081, 6011971606405138);
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (210, 'Timothy', 'Jiang', '98 Sugar St, Newcastle, NSW, Sydney 2136','timothy.jiang@gmail.com', 0403825343, 'F', 2082, 5295731064848925);
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (21, 'Anna', 'Ding', '29 Honey Avenue, Eastwood, NSW, Sydney 2409','anna.ding@gmail.com', 0404895403, 'P2', 2083, 5516576179525212);
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (89, 'David', 'Le', '56 Titanium St, Waitara, NSW, Sydney 2135','david.le@gmail.com', 0405185203, 'F', 2084, 5201598383627162);
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (102, 'Alex', 'Jiang', '92 Fanny Avenue, Hornsby, NSW, Sydney 2145','alex.jiang@gmail.com', 0406225633, 'P1', 2085, 4024007139885775);
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (97, 'William', 'Zeng', '15 Fairy St, Kensington, VIC, Doncaster, 3459','william.zeng@gmail.com', 0407115623, 'F', 2086, 4696912451839622);
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (198, 'Thomas', 'Kwon', '19 Rainbow Road, Castle Hill, NSW, Sydney 2689','thomas.kwon@gmail.com', 0408223603, 'P2', 2087, 4532948221037129);
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (256, 'Max', 'Lee', '39 Flower St, Chadstone, VIC, Melbourne 3415','max.le@gmail.com', 0409890603, 'F', 2088, 4024007119531399);
INSERT INTO customer(customerid, firstname, lastname, address, email, phonenumber, driverlicensedetails, insuranceid, cardnumber)
VALUES (518, 'Ruby ', 'Kwan', '1 Lark St, Belmore, NSW, Sydney 2192','ruby.kwan@gmail.com', 0410845603, 'F', 2089, 4929976462409898);


--Insert Into feedback Table
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (50, 'Lackluster customer service and outdated app', 3, 450);
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (51, 'Provides useful service', 5, 340);
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (52, 'Gross filthy vehicle', 1, 210);
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (53, 'Terrible response to a faulty car', 3, 21);
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (54, 'Don not trust the no recurring payments claim', 2, 89);
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (55, 'An essential service for drivers without their own car', 4, 102);
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (56, 'Go Get gives us so many options!', 5, 97);
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (57, 'Great Network, Horrible Customer Service', 2, 198);
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (58, 'GoGet are the best. So glad I joined', 5, 256);
INSERT INTO feedback(feedbackid, description, rating, customerid) VALUES (59, 'Great while it lasted', 4, 518);


--Insert Into toll Table
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5000, 'M1 NSW Eastern Suburb', 10);
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5001, 'M2 NSW Hills', 2);
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5002, 'CityLink VIC', 5);
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5003, 'M5 NSW SouthWest', 7);
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5004, 'EastLink VIC', 8);
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5005, 'Gateway Motorway QLD', 3);
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5006, 'Cross City Tunnel NSW', 9);
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5007, 'Sydney Harbour Tunnel NSW', 4);
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5008, 'Airport Link QLD', 6);
INSERT INTO toll(tollid, tolltype, tollcost) VALUES (5009, 'Legacy Way QLD ', 5);


--Insert Into service Table
INSERT INTO service(serviceid, servicetype) VALUES(3090, 'Replacing tyres');
INSERT INTO service(serviceid, servicetype) VALUES(3091, 'Replacing engine');
INSERT INTO service(serviceid, servicetype) VALUES(3092, 'Full car clean');
INSERT INTO service(serviceid, servicetype) VALUES(3093, 'Oil change');
INSERT INTO service(serviceid, servicetype) VALUES(3094, 'Windscreen wiper fluid change');
INSERT INTO service(serviceid, servicetype) VALUES(3095, 'Windscreen wiper change');
INSERT INTO service(serviceid, servicetype) VALUES(3096, 'Repaint');
INSERT INTO service(serviceid, servicetype) VALUES(3097, 'Replacing headlights');
INSERT INTO service(serviceid, servicetype) VALUES(3098, 'Replacing airbags');
INSERT INTO service(serviceid, servicetype) VALUES(3099, 'Brake repair');


--Insert Into location Table
INSERT INTO location(locationid, locationname, locationtype) VALUES (1001, 'Haymarket - Quay Street near Ultimo Road', 'Pod');
INSERT INTO location(locationid, locationname, locationtype) VALUES (1002, 'Ultimo - Mary Ann Street near Omnibus Lane', 'Pod');
INSERT INTO location(locationid, locationname, locationtype) VALUES (1003, 'Chatswood - Brown Street near Pacific Highway', 'Pod');
INSERT INTO location(locationid, locationname, locationtype) VALUES (1004, 'Pittwater Road near Darley Street West', 'Pod');
INSERT INTO location(locationid, locationname, locationtype) VALUES (1005, 'Hornsby - William Street', 'Pod');
INSERT INTO location(locationid, locationname, locationtype) VALUES (1006, 'Narrabeen - Robertson Street', 'Pod');
INSERT INTO location(locationid, locationname, locationtype) VALUES (1007, 'Earlwood - Watkin Avenue near Homer Street', 'Pod');
INSERT INTO location(locationid, locationname, locationtype) VALUES (1008, 'Bankstown - Restwell Street', 'Pod');
INSERT INTO location(locationid, locationname, locationtype) VALUES (1009, 'Box Hill 820 Whitehorse Road (East Central)', 'Pod');
INSERT INTO location(locationid, locationname, locationtype) VALUES (1010, 'Warwick Farm - Lachlan Street', 'Pod');


--Insert Into model Table
INSERT INTO model (modelid, modeltype) VALUES (2001, 'Small Hatchback');
INSERT INTO model (modelid, modeltype) VALUES (2002, 'Medium Hatchback');
INSERT INTO model (modelid, modeltype) VALUES (2003, 'SUV');
INSERT INTO model (modelid, modeltype) VALUES (2004, 'People Mover');
INSERT INTO model (modelid, modeltype) VALUES (2005, 'BMW 220i Convertible');
INSERT INTO model (modelid, modeltype) VALUES (2006, 'Van');
INSERT INTO model (modelid, modeltype) VALUES (2011, 'Wheelchair Accessible Kia Carnival');
INSERT INTO model (modelid, modeltype) VALUES (2012, 'Kia Sportage');
INSERT INTO model (modelid, modeltype) VALUES (2013, 'Mitsubishi Outlander - PHEV');
INSERT INTO model (modelid, modeltype) VALUES (2014, 'Mercedes A180');


--Insert Into Vehicle_Details Table
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('ABC123', TO_DATE('19/01/2023', 'dd/mm/yyyy'), 96126, 102903, 2001, 3090, 1001);
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('PL8GM4', TO_DATE('13/03/2023', 'dd/mm/yyyy'), 79259, 81654, 2002, 3091, 1002);
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('CUX981', TO_DATE('20/03/2023', 'dd/mm/yyyy'), 62942, 74108, 2003, 3092, 1003);
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('LMB207', TO_DATE('01/04/2023', 'dd/mm/yyyy'), 87730, 93454, 2004, 3093, 1004);
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('AWD274', TO_DATE('16/06/2023', 'dd/mm/yyyy'), 84766, 97698, 2005, 3094, 1005);
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('LDV390', TO_DATE('17/06/2023', 'dd/mm/yyyy'), 98534, 104920, 2006, 3095, 1006);
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('PDC159', TO_DATE('15/02/2024', 'dd/mm/yyyy'), 71906, 81323, 2004, 3096, 1007);
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('AXZ702', TO_DATE('09/04/2024', 'dd/mm/yyyy'), 78186, 80022, 2003, 3097, 1008);
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('BCW901', TO_DATE('09/06/2024', 'dd/mm/yyyy'), 82991, 92913, 2005, 3098, 1009);
INSERT INTO Vehicle_Details (vehiclenumberplate, registrationexpirydate, startingmileage, endingmileage, modelid, serviceid, locationid)
VALUES ('EMN201', TO_DATE('26/12/2024', 'dd/mm/yyyy'), 62542, 74108, 2001, 3099, 1010);


--Insert Into calendar Table
INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (290, TO_DATE('01/02/2020', 'dd/mm/yyyy'), 2020, 02, 'Monday');

INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (291, TO_DATE('20/03/2020', 'dd/mm/yyyy'), 2020, 03, 'Tuesday');

INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (292, TO_DATE('31/03/2020', 'dd/mm/yyyy'), 2020, 03, 'Wednesday');

INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (293, TO_DATE('01/05/2021', 'dd/mm/yyyy'), 2021, 05, 'Wednesday');

INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (294, TO_DATE('11/05/2020', 'dd/mm/yyyy'), 2020, 05, 'Thursday');

INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (295, TO_DATE('10/04/2021', 'dd/mm/yyyy'), 2021, 04, 'Friday');

INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (296, TO_DATE('08/07/2021', 'dd/mm/yyyy'), 2021, 07, 'Friday');

INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (297, TO_DATE('28/11/2021', 'dd/mm/yyyy'), 2021, 11, 'Friday');

INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (298, TO_DATE('13/10/2021', 'dd/mm/yyyy'), 2021, 10, 'Saturday');

INSERT INTO calendar (calendarid, calendardate, year , month, day)
VALUES (299, TO_DATE('01/02/2022', 'dd/mm/yyyy'), 2022, 02, 'Sunday');


--Insert Into Booking_Details Table
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (20, TO_DATE('15/02/2020', 'dd/mm/yyyy'), TO_DATE('17/03/2020', 'dd/mm/yyyy'), 'Website', 1400, 2001, 450, 1, 5000, 290);
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (21, TO_DATE('29/03/2020', 'dd/mm/yyyy'), TO_DATE('03/04/2020', 'dd/mm/yyyy'), 'App', 1500, 2002, 340, 2, 5001, 291);
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (22, TO_DATE('24/04/2020', 'dd/mm/yyyy'), TO_DATE('29/05/2020', 'dd/mm/yyyy'), 'Website', 1530, 2003, 210, 3, 5002, 292);
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (23, TO_DATE('29/07/2020', 'dd/mm/yyyy'), TO_DATE('13/09/2020', 'dd/mm/yyyy'), 'App', 1540, 2004, 21, 4, 5003, 293);
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (24, TO_DATE('09/05/2021', 'dd/mm/yyyy'), TO_DATE('28/05/2021', 'dd/mm/yyyy'), 'App', 1750, 2005, 89, 5, 5004, 294);
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (25, TO_DATE('09/07/2021', 'dd/mm/yyyy'), TO_DATE('31/07/2021', 'dd/mm/yyyy'), 'Website', 1500, 2006, 102, 6, 5005, 295);
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (26, TO_DATE('13/08/2021', 'dd/mm/yyyy'), TO_DATE('24/08/2021', 'dd/mm/yyyy'), 'Website', 1005, 2004, 97, 7, 5006, 296);
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (27, TO_DATE('02/01/2022', 'dd/mm/yyyy'), TO_DATE('23/01/2022', 'dd/mm/yyyy'), 'App', 1130, 2003, 198, 1, 5007, 297);
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (28, TO_DATE('15/11/2021', 'dd/mm/yyyy'), TO_DATE('15/12/2022', 'dd/mm/yyyy'), 'Website', 1215, 2005, 256, 2, 5008, 298);
INSERT INTO Booking_Details (bookingid, bookingstartdate, bookingenddate , bookingtype, bookingtime, modelid, customerid, planid, tollid, calendarid) 
VALUES (29, TO_DATE('07/02/2022', 'dd/mm/yyyy'), TO_DATE('27/02/2022', 'dd/mm/yyyy'), 'App', 1350, 2001, 518, 4, 5009, 299);

--Insert Into REVENUE Table
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7000, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 20)); 
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7001, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 21)); 
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7002, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 22));
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7003, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 23));
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7004, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 24));
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7005, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 25));
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7006, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 26));
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7007, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 27));
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7008, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 28));
INSERT INTO REVENUE(revenueid, revenueamount) VALUES(7009, (SELECT distinct "Revenues" FROM temporaryrevenue
WHERE bookingid = 29));


--Insert Into payment Table
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber, revenueid, vehiclenumberplate, bookingid)
VALUES (3003, 'AfterPay', 'Received', 5101812927741079, 7000, 'ABC123', 20);
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber, revenueid, vehiclenumberplate, bookingid)
VALUES (3004, 'Credit', 'Pending', 6011971606405138, 7001, 'PL8GM4', 21);
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber, revenueid, vehiclenumberplate, bookingid)
VALUES (3005, 'Credit', 'Pending', 5295731064848925, 7002, 'CUX981', 22);
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber, revenueid, vehiclenumberplate, bookingid)
VALUES (3006, 'Credit', 'Received',5516576179525212, 7003, 'LMB207', 23);
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber, revenueid, vehiclenumberplate, bookingid)
VALUES (3007, 'Credit', 'Pending', 5201598383627162, 7004, 'AWD274', 24);
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber, revenueid, vehiclenumberplate, bookingid)
VALUES (3008, 'AfterPay', 'Received', 4024007139885775, 7005, 'LDV390', 25);
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber , revenueid, vehiclenumberplate, bookingid)
VALUES (3009, 'AfterPay', 'Received', 4696912451839622, 7006, 'PDC159', 26);
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber, revenueid, vehiclenumberplate, bookingid)
VALUES (3010, 'AfterPay', 'Pending', 4532948221037129, 7007, 'AXZ702', 27);
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber, revenueid, vehiclenumberplate, bookingid)
VALUES (3011, 'Credit', 'Received', 4024007119531399, 7008, 'BCW901', 28);
INSERT INTO payment (paymentid, paymentplan, paymentstatus, cardnumber, revenueid, vehiclenumberplate, bookingid)
VALUES (3012, 'AfterPay', 'Pending', 4929976462409898, 7009, 'EMN201', 29);


--Insert Into membership Table
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (39, TO_DATE('06/02/2017', 'dd/mm/yyyy'), TO_DATE('05/02/2021', 'dd/mm/yyyy') , 'NO', 450);
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (40, TO_DATE('26/06/2017', 'dd/mm/yyyy'), TO_DATE('13/03/2019', 'dd/mm/yyyy') , 'NO', 340);
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (41, TO_DATE('03/12/2017', 'dd/mm/yyyy'), TO_DATE('13/04/2020', 'dd/mm/yyyy') , 'NO', 210);
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (42, TO_DATE('04/10/2018', 'dd/mm/yyyy'), TO_DATE('22/04/2021', 'dd/mm/yyyy') , 'NO', 21);
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (43, TO_DATE('23/01/2020', 'dd/mm/yyyy'), TO_DATE('30/05/2021', 'dd/mm/yyyy') , 'NO', 89);
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (44, TO_DATE('04/05/2020', 'dd/mm/yyyy'), NULL , 'YES', 102);
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (45, TO_DATE('04/06/2020', 'dd/mm/yyyy'), NULL , 'YES', 97);
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (46, TO_DATE('14/08/2020', 'dd/mm/yyyy'), NULL , 'YES', 198);
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (47, TO_DATE('24/01/2021', 'dd/mm/yyyy'), NULL , 'YES', 256);
INSERT INTO membership(membershipid, membershipstartdate, membershipenddate, currentmembershipflag, customerid)
VALUES (48, TO_DATE('29/06/2021', 'dd/mm/yyyy'), NULL , 'YES', 518);

