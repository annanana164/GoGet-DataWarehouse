-- DROP TABLES
Drop TABLE inquiry;
DROP TABLE feedback;
DROP TABLE membership;
DROP TABLE employee;
Drop TABLE payment;
DROP TABLE revenue;

Drop TABLE Vehicle_Details;
Drop TABLE Booking_Details;
DROP TABLE customer;
DROP TABLE insurance;
DROP TABLE plans;
DROP TABLE discount;
DROP TABLE toll;

DROP TABLE Card_Details;
DROP TABLE location;
DROP TABLE service;
DROP TABLE model;
DROP TABLE temporaryrevenue;
DROP TABLE revenue;
DROP TABLE calendar; 



-- Create Insurance table 
CREATE TABLE insurance (
    insuranceid   INTEGER NOT NULL,
    insurancetype VARCHAR2(50 BYTE)
);
ALTER TABLE insurance ADD CONSTRAINT insurance_pk PRIMARY KEY ( insuranceid );


-- Create Card Details table         
CREATE TABLE Card_Details (
    cardnumber INTEGER NOT NULL,
    nameoncard VARCHAR2(50 BYTE),
    cardtype   VARCHAR2(50 BYTE),
    expirydate DATE,
    cvv        INTEGER
);

ALTER TABLE Card_Details ADD CONSTRAINT Card_Details_PK PRIMARY KEY ( cardnumber );


-- Create customer table      
CREATE TABLE customer (
    customerid           INTEGER NOT NULL,
    firstname            VARCHAR2(50 BYTE),
    lastname             VARCHAR2(50 BYTE),
    address              VARCHAR2(50 BYTE),
    email                VARCHAR2(50 BYTE),
    phonenumber          INTEGER,
    driverlicensedetails VARCHAR2(50 BYTE),
    insuranceid          INTEGER NOT NULL,
    cardnumber           INTEGER NOT NULL
);


ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY ( customerid );


ALTER TABLE customer
    ADD CONSTRAINT "Customer_Card Details_FK" FOREIGN KEY ( cardnumber ) REFERENCES "Card Details" ( cardnumber );


ALTER TABLE customer
    ADD CONSTRAINT customer_insurance_fk FOREIGN KEY ( insuranceid ) REFERENCES insurance ( insuranceid );
       
       
-- Create membership table           
CREATE TABLE membership (
    membershipid          INTEGER NOT NULL,
    membershipstartdate   DATE,
    membershipenddate     DATE,
    currentmembershipflag VARCHAR2(50 BYTE),
    customerid            INTEGER NOT NULL
);


ALTER TABLE membership ADD CONSTRAINT membership_pk PRIMARY KEY ( membershipid );


ALTER TABLE membership
    ADD CONSTRAINT membership_customer_fk FOREIGN KEY ( customerid ) REFERENCES customer ( customerid );
        
        
 -- Create feedback table         
CREATE TABLE feedback (
    feedbackid  INTEGER NOT NULL,
    description VARCHAR2(60 BYTE),
    rating      INTEGER,
    customerid  INTEGER NOT NULL
);

ALTER TABLE feedback ADD CONSTRAINT feedback_pk PRIMARY KEY ( feedbackid );

ALTER TABLE feedback
    ADD CONSTRAINT feedback_customer_fk FOREIGN KEY ( customerid )
        REFERENCES customer ( customerid );        
        
        
 -- Create toll table         
CREATE TABLE toll (
    tollid   INTEGER NOT NULL,
    tolltype VARCHAR2(50 BYTE),
    tollcost VARCHAR2(50 BYTE)
);

ALTER TABLE toll ADD CONSTRAINT toll_pk PRIMARY KEY ( tollid );


-- Create revenue table
CREATE TABLE revenue (
    revenueid     INTEGER NOT NULL,
    revenueamount INTEGER
);

ALTER TABLE revenue ADD CONSTRAINT revenue_pk PRIMARY KEY ( revenueid );


-- Create  model table
CREATE TABLE model (
    modelid   INTEGER NOT NULL,
    modeltype VARCHAR2(50 BYTE)
);

ALTER TABLE model ADD CONSTRAINT model_pk PRIMARY KEY ( modelid );


-- Create location table
CREATE TABLE location (
    locationid   INTEGER NOT NULL,
    locationname VARCHAR2(50 BYTE),
    locationtype VARCHAR2(50 BYTE)
);

ALTER TABLE location ADD CONSTRAINT location_pk PRIMARY KEY ( locationid );


-- Create service table
CREATE TABLE service (
    serviceid   INTEGER NOT NULL,
    servicetype VARCHAR2(50 BYTE)
);

ALTER TABLE service ADD CONSTRAINT service_pk PRIMARY KEY ( serviceid );


-- Create discount table
CREATE TABLE discount (
    discountid         INTEGER NOT NULL,
    discounttype       VARCHAR2(50 BYTE),
    discountpercentage INTEGER
);

ALTER TABLE discount ADD CONSTRAINT discount_pk PRIMARY KEY ( discountid );


-- Create employee table
CREATE TABLE employee (
    employeeid        INTEGER NOT NULL,
    employeefirstname VARCHAR2(50 BYTE),
    employeelastname  VARCHAR2(50 BYTE),
    employeerole      VARCHAR2(50 BYTE)
);


ALTER TABLE employee ADD CONSTRAINT employees_pk PRIMARY KEY ( employeeid );


-- Create plans table
CREATE TABLE plans (
    planid     INTEGER NOT NULL,
    plantype   VARCHAR2(50 BYTE),
    vandayrate INTEGER,
    discountid INTEGER NOT NULL
);

ALTER TABLE plans ADD CONSTRAINT plans_pk PRIMARY KEY ( planid );


ALTER TABLE plans
    ADD CONSTRAINT plans_discount_fk FOREIGN KEY ( discountid )
        REFERENCES discount ( discountid );
        
        
 -- Create Vehicle Details table         
CREATE TABLE Vehicle_Details (
    vehiclenumberplate     VARCHAR2(50 BYTE) NOT NULL,
    registrationexpirydate DATE,
    startingmileage        INTEGER,
    endingmileage          INTEGER,
    modelid                INTEGER NOT NULL,
    serviceid              INTEGER NOT NULL,
    locationid             INTEGER NOT NULL
);

ALTER TABLE Vehicle_Details ADD CONSTRAINT Vehicle Details_PK PRIMARY KEY ( vehiclenumberplate );

ALTER TABLE Vehicle_Details
    ADD CONSTRAINT vehiceldetails_model_fk FOREIGN KEY ( modelid )
        REFERENCES model ( modelid );


ALTER TABLE Vehicle_Details
    ADD CONSTRAINT Vehicle Details_Location_FK FOREIGN KEY ( locationid )
        REFERENCES location ( locationid );


ALTER TABLE Vehicle_Details
    ADD CONSTRAINT Vehicle Details_Service_FK FOREIGN KEY ( serviceid )
        REFERENCES service ( serviceid );


-- Create calendar table   
CREATE TABLE calendar (
    calendarid       INTEGER NOT NULL, 
    calendardate     DATE, 
    year             INTEGER, 
    month            INTEGER,
    day              VARCHAR2(20 BYTE));


ALTER TABLE calendar ADD CONSTRAINT "BookingTime_PK" PRIMARY KEY ( calendarid );


-- Create Booking Details table  
CREATE TABLE Booking_Details (
    bookingid        INTEGER NOT NULL,
    bookingstartdate DATE,
    bookingenddate   DATE,
    bookingtype      VARCHAR2(50 BYTE),
    bookingtime      INTEGER,
    modelid          INTEGER NOT NULL,
    customerid       INTEGER NOT NULL,
    planid           INTEGER NOT NULL,
    tollid           INTEGER NOT NULL,
    calendarid       INTEGER NOT NULL
);


ALTER TABLE Booking_Details ADD CONSTRAINT Booking_Details_PK PRIMARY KEY ( bookingid );


ALTER TABLE Booking_Details
    ADD CONSTRAINT Booking_Details_Customer_FK FOREIGN KEY ( customerid )
        REFERENCES customer ( customerid );


ALTER TABLE Booking_Details
    ADD CONSTRAINT Booking_Details_Model_FK FOREIGN KEY ( modelid )
        REFERENCES model ( modelid );


ALTER TABLE Booking_Details
    ADD CONSTRAINT Booking_Details_Plans_FK FOREIGN KEY ( planid )
        REFERENCES plans ( planid );

ALTER TABLE Booking_Details
    ADD CONSTRAINT Booking_Details_Toll_FK FOREIGN KEY ( tollid )
        REFERENCES toll ( tollid );
        
ALTER TABLE Booking_Details
    ADD CONSTRAINT Booking_Details_Calendar_FK FOREIGN KEY ( calendarid )
        REFERENCES calendar ( calendarid );
        
        
  -- Create Payment table      
CREATE TABLE payment (
    paymentid          INTEGER NOT NULL,
    paymentplan        VARCHAR2(50 BYTE),
    paymentstatus      VARCHAR2(50 BYTE),
    cardnumber         INTEGER NOT NULL,
    revenueid          INTEGER NOT NULL,
    vehiclenumberplate VARCHAR2(50 BYTE) NOT NULL,
    bookingid          INTEGER NOT NULL
);


ALTER TABLE payment ADD CONSTRAINT payment_pk PRIMARY KEY ( paymentid );


ALTER TABLE payment
    ADD CONSTRAINT "Payment_Booking Details_FK" FOREIGN KEY ( bookingid )
        REFERENCES "Booking Details" ( bookingid );

ALTER TABLE payment
    ADD CONSTRAINT "Payment_Card Details_FK" FOREIGN KEY ( cardnumber )
        REFERENCES "Card Details" ( cardnumber );


ALTER TABLE payment
    ADD CONSTRAINT payment_revenue_fk FOREIGN KEY ( revenueid )
        REFERENCES revenue ( revenueid );


ALTER TABLE payment
    ADD CONSTRAINT "Payment_Vehicle Details_FK" FOREIGN KEY ( vehiclenumberplate )
        REFERENCES "Vehicle Details" ( vehiclenumberplate );
        
        
   -- Create Inquiry table       
CREATE TABLE inquiry (
    inquiryid          INTEGER NOT NULL,
    inquirydescription VARCHAR2(100 BYTE),
    inquirystatus      VARCHAR2(100 BYTE),
    planid             INTEGER NOT NULL,
    employeeid         INTEGER NOT NULL
);


ALTER TABLE inquiry ADD CONSTRAINT inquiry_pk PRIMARY KEY ( inquiryid );


ALTER TABLE inquiry
    ADD CONSTRAINT inquiry_employees_fk FOREIGN KEY ( employeeid )
        REFERENCES employee ( employeeid );


ALTER TABLE inquiry
    ADD CONSTRAINT inquiry_plans_fk FOREIGN KEY ( planid )
        REFERENCES plans ( planid );


