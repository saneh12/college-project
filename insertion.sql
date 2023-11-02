INSERT INTO STUDENT (studentid,firstname,lastname,gender,email,address) VALUES
  ('2022UCS101', "Aarav","Sharma", 'M', "aarav.sharma@nsut.ac.in", "45,Rajpur Road, Dehradun,Uttarakhand,India"),
  ('2022UCB112', "Aditi","Patel", 'F', "aditi.patel@nsut.ac.in", "22,Lajpat Road, Mumbai,Maharashtra,India"),
  ('2022UCS124', "Aryan","Singh", 'M', "aryan.singh@nsut.ac.in", "11,Rajeev Nagar, Delhi,India"),
  ('2022UCM105', "Diya","Sharma", 'F', "diya.sharma@nsut.ac.in", "33,Bapurji Street, Chennai,Tamil Nadu,India"), 
  ('2022UCD121', "Rohan","Verma", 'M', "rohan.verma@nsut.ac.in", "2,Park Road, Kolkata,West Bengal,India"),
  ('2022UCS111', "Nandini","Gupta", 'F', "nandini.gupta@nsut.ac.in", "7,Gandhi Chowk,Jaipur,Rajasthan,India"),
  ('2022UCS141', "Vikram","Chaudhary", 'M', "vikram.chaudhary@nsut.ac.in", "14,Rani Street,Hyderabad,Telangana,India"),
  ('2022UCM161', "Ishita","Reddy", 'F', "ishita.reddy@nsut.ac.in", "9,Jalandhar Road, Amritsar,Punjab,India"),
  ('2022UCG201', "Yuvraj","Singh", 'M', "yuvraj.singh@nsut.ac.in", "5,Sarojini Nagar,Lucknow,Uttar Pradesh, India"),
  ('2022UCS198', "Riya","Khanna", 'F', "riya.khanna@nsut.ac.in", "18,MG Street,Bangalore ,Karnataka,India");
  
INSERT INTO R1 (studentid,contactno) VALUES
  ('2022UCS101', 9874932651),
  ('2022UCB112', 8874962853),
  ('2022UCS124', 9877991455),
  ('2022UCM105', 9596972681), 
  ('2022UCD121', 8868932153),
  ('2022UCS111', 9070932600),
  ('2022UCS141', 8774530656),
  ('2022UCM161', 7014932681),
  ('2022UCG201', 8474894756),
  ('2022UCS198', 8376842476),
  ('2022UCD121', 8476932153),
  ('2022UCM161', 7874822987);

INSERT INTO STAFF (staffid,name,position) VALUES 
  ("1501","Rajesh Kumar","Warden"),
  ("1502","Anjali Gupta","Janitor"),
  ("1503","Suresh Sharma","Security"),
  ("1504","Priya Mishra","Janitor"),
  ("1505","Sujata Sharma","Warden"),
  ("1506","Nandini Singh","Janitor"),
  ("1507","Manoj Kumar","Security"),
  ("1508","Geeta Reddy","Warden"),
  ("1509","Amit Singh","Security"),
  ("1510","Radhika Khanna","Warden");

INSERT INTO R2(staffid, email) VALUES
  ("1501","rajesh123@gmail.com"),
  ("1502","anjali13@gmail.com"),
  ("1503","suresh12@gmail.com"),
  ("1504","priyamish@gmail.com"),
  ("1505","sujata83@gmail.com"),
  ("1506","nandini76@gmail.com"),
  ("1507","manoj45@gmail.com"),
  ("1508","geetar@gmail.com"),
  ("1509","amit768@gmail.com"),
  ("1510","radhika98@gmail.com"),
  ("1502","theanjali@gmail.com"),
  ("1507","kumarmanoj@gmail.com");
  
INSERT INTO R3 (staffid,contact_number) VALUES
  ("1501", 7896745760),
  ("1502", 9873876376),
  ("1503", 9104974956),
  ("1504", 8084747512),
  ("1505", 7023561240),
  ("1506", 8090054276),
  ("1507", 9748673620),
  ("1508", 9837438269),
  ("1509", 9837700237),
  ("1510", 8923878476),
  ("1507", 8056781230);
  
INSERT INTO HOSTEL(hostelid,hostelname,no_of_rooms,wardenid) VALUES
  ("H1", "HOSTEL 1" , 30, "1501"),
  ("H2", "HOSTEL 2" , 45, "1505"),
  ("H3", "HOSTEL 3" , 30, "1508"),
  ("H4", "HOSTEL 4" , 45, "1510");
  
INSERT INTO ROOMS(room_no,ac_nonac,capacity,occupancy_status) VALUES
  ("H1-101" , "AC",3,"vacant"),
  ("H1-102" , "AC",2,"occupied"),
  ("H1-103" , "AC",1,"occupied"),
  ("H1-104" , "NON-AC",2,"vacant"),
  ("H2-108" , "AC",2,"vacant"),
  ("H2-106" , "AC",3,"occupied"),
  ("H2-112" , "NON-AC",3,"occupied"),
  ("H3-191" , "AC",1,"occupied"),
  ("H4-101" , "NON-AC",2,"occupied"),
  ("H4-108" , "NON-AC",3,"occupied");


INSERT INTO ROOM_ALLOCATION(studentid,room_no) VALUES
  ('2022UCS101', "H1-101"),
  ('2022UCB112', "H4-101"),
  ('2022UCS124', "H4-101"),
  ('2022UCM105', "H4-108"), 
  ('2022UCD121', "H4-108"),
  ('2022UCS111', "H4-108"),
  ('2022UCS141', "H1-102"),
  ('2022UCM161', "H1-102"),
  ('2022UCG201', "H3-191"),
  ('2022UCS198', "H2-106");
  
INSERT INTO FEES(paymentid, studentid, payment_date, amount) VALUES
   ('101', '2022UCB112', '2023-10-21', 40000),
   ('102', '2022UCS124', '2023-10-22', 40000),
   ('103', '2022UCM105', '2023-10-21', 45000),
   ('104', '2022UCD121', '2023-10-25', 40000),
   ('105', '2022UCS111', '2023-10-29', 40000),
   ('106', '2022UCS141', '2023-10-28', 45000),
   ('107', '2022UCM161', '2023-10-26', 40000),
   ('108', '2022UCG201', '2023-10-27', 40000);

INSERT INTO COMPLAINTS(complaintid,studentid,description,date,status) VALUES
   ("C1",'2022UCD121', "No Hot water in bathroom" , '2023-11-01',"open"),
   ("C2",'2022UCS141', "Broken window in room" ,'2023-10-25',"resolved"),
   ("C3",'2022UCM161', "Issue with room temperature" , '2023-11-01',"open"),
   ("C4",'2022UCG201', "Noisy neighbours" , '2023-11-01',"open");

INSERT INTO VISITOR(visitorid,studentid,visitor_name,visit_date) VALUES
   ("V101",'2022UCD121', "Rakesh sharma" , '2023-10-28'),
   ("V102",'2022UCS141', "Aditya garg" , '2023-11-02'),
   ("V102",'2022UCD121', "Sushmita Verma" , '2023-10-21'),
   ("V104",'2022UCM161', "Kavita" , '2023-09-11'),
   ("V105",'2022UCG201', "Hitesh Kumar" , '2023-10-11');
