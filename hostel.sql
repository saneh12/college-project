CREATE DATABASE IF NOT EXISTS NSUT;
 DROP DATABASE NSUT;

USE NSUT;
 CREATE TABLE IF NOT EXISTS STUDENT(
  studentid VARCHAR(10) UNIQUE NOT NULL,
  firstname VARCHAR(50) NOT NULL,
  lastname VARCHAR(50) NOT NULL,
  gender ENUM('M','F') NOT NULL,
  email VARCHAR(70) NOT NULL CHECK(email LIKE '%@nsut.ac.in'),
  address VARCHAR(80) NOT NULL,
  PRIMARY KEY(studentid)
);

CREATE TABLE R1(
  studentid VARCHAR(10) NOT NULL,
  contactno BIGINT NOT NULL,
  PRIMARY KEY (studentid,contactno),
  FOREIGN KEY (studentid) REFERENCES STUDENT(studentid)
);

CREATE TABLE STAFF(
  staffid VARCHAR(10) UNIQUE NOT NULL ,
  name VARCHAR(50) NOT NULL,
  position ENUM("Warden","Janitor","Security") NOT NULL
);
CREATE TABLE R2(
  staffid VARCHAR(10) NOT NULL,
  email VARCHAR(20) NOT NULL,
  PRIMARY KEY(staffid,email),
  FOREIGN KEY(staffid) REFERENCES STAFF(staffid)
);

CREATE TABLE R3(
  staffid VARCHAR(10) NOT NULL,
  contact_number BIGINT NOT NULL,
  PRIMARY KEY(staffid,contact_number),
  FOREIGN KEY(staffid) REFERENCES STAFF(staffid)
);

CREATE TABLE HOSTEL (
  hostelid VARCHAR(10) NOT NULL UNIQUE,
  hostelname VARCHAR(20) NOT NULL UNIQUE,
  no_of_rooms INTEGER NOT NULL,
  wardenid VARCHAR(10) UNIQUE NOT NULL,
  PRIMARY KEY(hostelid),
  FOREIGN KEY(wardenid) REFERENCES STAFF(staffid)
);

CREATE TABLE ROOMS(
   room_no VARCHAR(10) UNIQUE NOT NULL,
   ac_nonac VARCHAR(8) NOT NULL,
   capacity INT NOT NULL,
   occupancy_status ENUM("occupied" , "vacant") NOT NULL,
   PRIMARY KEY(room_no)
);



CREATE TABLE ROOM_ALLOCATION(
   studentid VARCHAR(10) NOT NULL UNIQUE,
   room_no VARCHAR(10) NOT NULL ,
   PRIMARY KEY(studentid),
   FOREIGN KEY(studentid) REFERENCES STUDENT(studentid),
   FOREIGN KEY(room_no) REFERENCES ROOMS(room_no)
   
);
CREATE TABLE FEES(
   paymentid VARCHAR(10) UNIQUE NOT NULL,
   studentid VARCHAR(10) NOT NULL,
   payment_date DATE NOT NULL,
   amount INTEGER NOT NULL,
   status ENUM("paid" , "pending") NOT NULL,
   PRIMARY KEY(paymentid) ,
   FOREIGN KEY(studentid) REFERENCES STUDENT(studentid)
);
CREATE TABLE COMPLAINTS(
   complaintid VARCHAR(10) UNIQUE NOT NULL,
   studentid VARCHAR(10) NOT NULL,
   description VARCHAR(100) NOT NULL,
   date DATE NOT NULL,
   status ENUM("open","resolved") NOT NULL,
   PRIMARY KEY(complaintid),
   FOREIGN KEY(studentid) REFERENCES STUDENT(studentid)
);

CREATE TABLE VISITOR(
   visitorid VARCHAR(10) NOT NULL ,
   studentid VARCHAR(10) NOT NULL ,
   visitor_name VARCHAR(50) NOT NULL,
   visit_date DATE NOT NULL,
   PRIMARY KEY(visitorid , studentid),
   FOREIGN KEY(studentid) REFERENCES STUDENT(studentid)
);
