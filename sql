
CREATE TABLE Donors (
    Donor_ID INT PRIMARY KEY,
    Donor_Name VARCHAR(255),
    Donation_Amount DECIMAL(10, 2),
    Donation_Type VARCHAR(50),
    Contact_Info VARCHAR(255)
);


CREATE TABLE Food_Distribution_Centers (
    Center_ID INT PRIMARY KEY,
    Center_Name VARCHAR(255),
    Location VARCHAR(255),
    Capacity INT
);


CREATE TABLE Recipients (
    Recipient_ID INT PRIMARY KEY,
    Recipient_Name VARCHAR(255),
    Household_Size INT,
    Location VARCHAR(255),
    Contact_Info VARCHAR(255)
);


CREATE TABLE Distributions (
    Distribution_ID INT PRIMARY KEY,
    Donor_ID INT,
    Center_ID INT,
    Recipient_ID INT,
    Food_Quantity DECIMAL(10, 2),
    Distribution_Date DATE,
    FOREIGN KEY (Donor_ID) REFERENCES Donors(Donor_ID),
    FOREIGN KEY (Center_ID) REFERENCES Food_Distribution_Centers(Center_ID),
    FOREIGN KEY (Recipient_ID) REFERENCES Recipients(Recipient_ID)
);
