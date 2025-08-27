-- Create the database
CREATE DATABASE IF NOT EXISTS first_aid_business;
USE first_aid_business;

-- Emergency Drop Database if errors
DROP DATABASE first_aid_business;

-- Drop tables if they already exist (for refresh/testing purposes)
DROP TABLE IF EXISTS Shipment;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Customer;

-- Create Customer table
CREATE TABLE Customer (
    customer_id        INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name         VARCHAR(50) NOT NULL,
    last_name          VARCHAR(50) NOT NULL,
    email              VARCHAR(100),
    phone_number       VARCHAR(25),
    birthdate          DATE
);

Select * 
FROM Customer;


INSERT INTO Customer (customer_id, first_name, last_name, email, phone_number, birthdate) VALUES
(1, 'Ammamaria', 'Ebbage', 'aebbage0@360.cn', '245-611-4415', '1958-11-30'),
(2, 'Sasha', 'Laskey', 'slaskey1@cisco.com', '998-708-5100', '1987-01-14'),
(3, 'Katharina', 'Morshead', 'kmorshead2@so-net.ne.jp', '924-487-6089', '1963-11-08'),
(4, 'Jarvis', 'Molnar', 'jmolnar3@smh.com.au', '966-225-9062', '1973-03-05'),
(5, 'Annetta', 'Laxson', 'alaxson4@prnewswire.com', '345-836-6037', '1925-12-10'),
(6, 'Corilla', 'Janeway', 'cjaneway5@go.com', '896-931-6921', '1903-12-25'),
(7, 'Tonie', 'Turmel', 'tturmel6@ocn.ne.jp', '528-589-3807', '1914-02-09'),
(8, 'Engelbert', 'Theobald', 'etheobald7@zdnet.com', '711-214-6584', '1973-11-21'),
(9, 'Kym', 'Loude', 'kloude8@weather.com', '876-569-7326', '1981-01-23'),
(10, 'Rog', 'Warin', 'rwarin9@tuttocitta.it', '826-162-5974', '1944-05-31'),
(11, 'Jon', 'Skerritt', 'jskerritta@over-blog.com', '917-167-7006', '1904-12-21'),
(12, 'Jude', 'Renard', 'jrenardb@google.ca', '156-912-1075', '1943-02-09'),
(13, 'Ernesta', 'Gannan', 'egannanc@bravesites.com', '535-902-6001', '1936-04-20'),
(14, 'Teresita', 'Powell', 'tpowelld@joomla.org', '214-275-0307', '1960-11-19'),
(15, 'Graham', 'Albon', 'galbone@weather.com', '715-465-3746', '1917-10-26'),
(16, 'Barthel', 'Alibone', 'balibonef@bravesites.com', '746-687-7267', '1904-11-05'),
(17, 'Vladimir', 'Quantrell', 'vquantrellg@goo.gl', '255-317-5039', '1925-04-05'),
(18, 'Lothario', 'Dearlove', 'ldearloveh@technorati.com', '827-954-2854', '1987-01-06'),
(19, 'Bonnee', 'De Hailes', 'bdehailesi@fc2.com', '800-933-8661', '1954-10-25'),
(20, 'Obed', 'Howgate', 'ohowgatej@google.cn', '703-233-9752', '1990-03-03'),
(21, 'Isa', 'Brezlaw', 'ibrezlawk@hibu.com', '439-831-4623', '1913-11-06'),
(22, 'Alf', 'Wenzel', 'awenzell@tiny.cc', '185-646-7987', '1998-07-26'),
(23, 'Demetra', 'Pittet', 'dpittetm@live.com', '285-488-5522', '1957-05-05'),
(24, 'Alex', 'Ierland', 'aierlandn@goodreads.com', '628-540-7149', '1911-05-19'),
(25, 'Jareb', 'Zukierman', 'jzukiermano@paypal.com', '570-793-5646', '1973-06-08'),
(26, 'Yul', 'Michie', 'ymichiep@hao123.com', '252-518-8245', '2000-04-13'),
(27, 'Kathryne', 'Veivers', 'kveiversq@g.co', '194-206-8275', '1928-07-11'),
(28, 'Letty', 'Maher', 'lmaherr@wsj.com', '442-258-9780', '1933-03-18'),
(29, 'Ciel', 'Spileman', 'cspilemans@independent.co.uk', '436-210-1860', '1944-08-04'),
(30, 'Linnie', 'Franz', 'lfranzt@usatoday.com', '939-199-6949', '1933-06-18'),
(31, 'Jobi', 'Allmann', 'jallmannu@yahoo.com', '360-141-6721', '1940-05-28'),
(32, 'Dedie', 'Fumagall', 'dfumagallv@tiny.cc', '133-614-1875', '1980-12-31'),
(33, 'Silvio', 'Duncanson', 'sduncansonw@rediff.com', '572-886-6630', '1919-01-02'),
(34, 'Roanne', 'Daughtry', 'rdaughtryx@usnews.com', '586-166-9564', '1968-01-30'),
(35, 'Danita', 'Castellanos', 'dcastellanosy@mac.com', '571-735-1039', '1926-08-13'),
(36, 'Evyn', 'Gansbuhler', 'egansbuhlerz@dyndns.org', '173-181-3563', '1929-11-02'),
(37, 'Jermayne', 'Estick', 'jestick10@uol.com.br', '483-968-5147', '1963-08-08'),
(38, 'Osborn', 'Chevis', 'ochevis11@unc.edu', '729-778-6997', '1932-02-27'),
(39, 'Mile', 'Stickells', 'mstickells12@msn.com', '917-108-3225', '1904-03-26'),
(40, 'Tate', 'Nehlsen', 'tnehlsen13@elpais.com', '868-799-7760', '1936-03-03'),
(41, 'Junette', 'Flaune', 'jflaune14@about.me', '569-275-0781', '1956-11-25'),
(42, 'Nicoline', 'Selwood', 'nselwood15@walmart.com', '228-209-9012', '1949-09-22'),
(43, 'Meridel', 'Jakubovics', 'mjakubovics16@sphinn.com', '177-710-7736', '1901-06-02'),
(44, 'Gerome', 'Corderoy', 'gcorderoy17@pbs.org', '357-937-1479', '1909-02-12'),
(45, 'Rene', 'Perillo', 'rperillo18@cdbaby.com', '592-888-2077', '1949-04-12'),
(46, 'Orbadiah', 'Waggett', 'owaggett19@bbc.co.uk', '621-567-7100', '1901-12-06'),
(47, 'Valentina', 'Whitmell', 'vwhitmell1a@cloudflare.com', '383-377-3084', '1900-11-01'),
(48, 'Jennee', 'Speaks', 'jspeaks1b@last.fm', '770-148-0282', '1912-05-30'),
(49, 'Danita', 'Comazzo', 'dcomazzo1c@prnewswire.com', '407-804-5801', '1980-03-03'),
(50, 'Mike', 'Comazzo', 'mike@prnewswire.com', '407-555-5801', '1990-03-03');


-- Insert Mock Customer

-- Create Inventory (Products) table
CREATE TABLE Inventory (
    ProductID          INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Product_name       VARCHAR(150) NOT NULL,
    Price$             DECIMAL(10,2) NOT NULL,
    Stock_Level        INT NOT NULL
);

-- Insert mock inventroy

INSERT INTO Inventory (ProductID, Product_name, Price$, Stock_Level) VALUES
(1, 'SALSOLA KALI POLLEN', 2.99, 1),
(2, 'Alprazolam', 5.99, 8),
(3, 'Ibuprofen and Pseudoephedrine Hydrochloride', 249.99, 2),
(4, 'Good Sense Nicotine', 129.99, 3),
(5, 'Aveeno Positively Ageless Complete Anti Aging System', 5.79, 8),
(6, 'Propranolol Hydrochloride', 2.99, 9),
(7, 'Carbidopa and Levodopa', 2.99, 3),
(8, 'Systane Nighttime', 2.49, 5),
(9, 'Zapotol Clotrimazole', 24.99, 8),
(10, 'Roll-On Antiperspirant', 34.99, 3),
(11, 'modafinil', 14.99, 1),
(12, 'SACCHAROMYCES CEREVISIAE', 19.99, 3),
(13, 'Homeopathic Wart', 39.99, 1),
(14, 'ACTIPREP', 24.99, 1),
(15, 'Diabetes', 19.99, 7),
(16, 'Glipizide', 39.99, 9),
(17, 'Diphenhydramine HCl', 3.29, 2),
(18, 'AK-FLUOR', 10.99, 8),
(19, 'Secret Antiperspirant/Deodorant', 24.99, 3),
(20, 'False Ragweed', 89.99, 0),
(21, 'Pollens - Trees, Birch Mix', 19.99, 6),
(22, 'NEXIUM', 79.99, 0),
(23, 'Amantadine HCl', 3.79, 8),
(24, 'Camilia', 19.99, 4),
(25, 'Rocky Mountain KIDS Broad Spectrum SPF 30', 2.49, 2),
(26, 'Diltiazem Hydrochloride', 12.99, 9),
(27, 'Lisinopril', 69.99, 1),
(28, 'Dandelion Pollen', 69.99, 5),
(29, 'Zidovudine', 22, 0),
(30, 'Verapamil Hydrochloride', 4.99, 9),
(31, 'SAVELLA', 12.99, 2),
(32, 'COLIC with GAS', 3.49, 2),
(33, 'Heparin Sodium', 3.29, 7),
(34, 'Lorazepam', 2.49, 2),
(35, 'Zoloft', 54.99, 7),
(36, 'flormar PERFECT COVERAGE FOUNDATION SUNSCREEN BROAD SPECTRUM SPF 15 113 Medium Beige', 24.99, 3),
(37, 'Zosyn', 3.99, 5),
(38, 'Insects (whole body) cockroach mix', 49.99, 6),
(39, 'CEFTRIAXONE', 29.99, 7),
(40, 'Topcare stay awake', 199.99, 9),
(41, 'Candida I', 49.99, 7),
(42, 'Dextroamphetamine Saccharate, Amphetamine Aspartate, Dextroamphetamine Sulfate, and Amphetamine Sulfate', 12.99, 9),
(43, 'Naphazoline', 59.99, 9),
(44, 'LBEL COULEUR LUXE AMPLIFIER XP', 6.99, 9),
(45, 'HPZ', 12.99, 4),
(46, 'Methylphenidate Hydrochloride', 3.29, 4),
(47, 'Risperidone', 19.99, 2),
(48, 'Antiseptic', 5.49, 4),
(49, 'Smart Sense Pain Relief', 19.99, 5),
(50, 'Naprelan', 6.99, 0);

-- Create Order table
CREATE TABLE Orders (
    Order_ID                INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Foreign_Customer_ID     INT NOT NULL,
    Product_ID              INT NOT NULL,
    Quantity                INT NOT NULL,
    Date_Ordered            DATE,
	Status ENUM ('Pending','Processing', 'Delivered', 'Cancelled', 'Shipped') NOT NULL,
    Total_Amount            DECIMAL(10,2),
    FOREIGN KEY (Foreign_Customer_ID) REFERENCES Customer(customer_id),
    FOREIGN KEY (Product_ID) REFERENCES Inventory(ProductID)
);

-- Insert Mock Data Order
INSERT INTO Orders 
(Order_ID, Foreign_Customer_ID, Product_ID, Quantity, Date_Ordered, Status, Total_Amount)
VALUES
(1, 1, 19, 3, '2023-05-20', 'Cancelled', 7.98),
(2, 2, 27, 1, '2023-09-01', 'Pending', 9.20),
(3, 3, 16, 2, '2022-08-22', 'Delivered', 8.64),
(4, 4, 18, 1, '2024-04-07', 'Shipped', 6.95),
(5, 5, 11, 1, '2023-10-28', 'Processing', 1.56),
(6, 6, 15, 3, '2024-06-20', 'Shipped', 5.34),
(7, 7, 4, 2, '2022-09-29', 'Pending', 0.35),
(8, 8, 26, 3, '2024-11-30', 'Pending', 2.00),
(9, 9, 7, 2, '2024-08-29', 'Delivered', 4.53),
(10, 10, 16, 2, '2024-09-12', 'Pending', 7.42),
(11, 11, 34, 3, '2024-08-21', 'Pending', 7.50),
(12, 12, 23, 4, '2024-08-26', 'Cancelled', 8.15),
(13, 13, 22, 2, '2024-06-27', 'Processing', 2.41),
(14, 14, 13, 4, '2024-09-12', 'Shipped', 1.21),
(15, 15, 36, 4, '2024-06-16', 'Cancelled', 7.23),
(16, 16, 8, 4, '2022-08-06', 'Pending', 5.41),
(17, 17, 2, 2, '2023-09-03', 'Delivered', 2.90),
(18, 18, 23, 3, '2023-11-29', 'Pending', 9.57),
(19, 19, 23, 1, '2024-03-22', 'Pending', 5.54),
(20, 20, 35, 1, '2024-01-10', 'Cancelled', 7.43),
(21, 21, 12, 3, '2022-11-02', 'Pending', 2.69),
(22, 22, 28, 3, '2022-08-11', 'Processing', 5.32),
(23, 23, 24, 1, '2023-04-04', 'Shipped', 8.52),
(24, 24, 5, 3, '2023-06-10', 'Shipped', 7.17),
(25, 25, 37, 2, '2024-10-17', 'Processing', 8.65),
(26, 26, 28, 2, '2022-11-10', 'Cancelled', 7.25),
(27, 27, 36, 2, '2023-08-03', 'Cancelled', 6.61),
(28, 28, 10, 3, '2024-09-02', 'Delivered', 2.04),
(29, 29, 6, 4, '2024-01-10', 'Processing', 5.20),
(30, 30, 33, 1, '2023-05-17', 'Delivered', 9.21),
(31, 31, 13, 2, '2024-04-10', 'Cancelled', 8.52),
(32, 32, 5, 3, '2023-04-17', 'Cancelled', 3.13),
(33, 33, 6, 1, '2023-07-09', 'Cancelled', 0.81),
(34, 34, 12, 2, '2022-10-01', 'Shipped', 2.74),
(35, 35, 31, 4, '2023-01-19', 'Cancelled', 3.76),
(36, 36, 26, 1, '2023-04-12', 'Shipped', 6.89),
(37, 37, 32, 1, '2023-12-01', 'Shipped', 0.43),
(38, 38, 2, 4, '2024-06-03', 'Processing', 2.54),
(39, 39, 12, 2, '2023-08-27', 'Delivered', 3.33),
(40, 40, 14, 4, '2023-03-20', 'Processing', 7.07),
(41, 41, 34, 1, '2023-11-01', 'Pending', 0.48),
(42, 42, 32, 1, '2023-04-06', 'Delivered', 4.82),
(43, 43, 27, 4, '2023-04-24', 'Cancelled', 6.92),
(44, 44, 21, 4, '2023-09-07', 'Pending', 7.11),
(45, 45, 8, 1, '2024-10-06', 'Delivered', 1.70),
(46, 46, 7, 1, '2023-11-27', 'Pending', 2.56),
(47, 47, 22, 1, '2023-11-19', 'Cancelled', 1.24),
(48, 48, 1, 3, '2023-03-27', 'Shipped', 3.38),
(49, 49, 20, 2, '2023-07-27', 'Processing', 5.94),
(50, 50, 18, 3, '2023-03-01', 'Shipped', 3.59);


-- Create Shipment table
CREATE TABLE Shipment (
    shipment_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tracking_number VARCHAR(50) NOT NULL,
    order_id INT NOT NULL,
    shipped_date DATE,
    Carrier_info VARCHAR(50) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders (Order_ID)
);

-- Insert Shipment mock data

INSERT INTO Shipment (tracking_number, order_id, shipped_date, Carrier_info) VALUES
('454801990-1', 1, '2023-02-20', 'Violet'),
('720164209-X', 2, '2025-05-25', 'Mauv'),
('345489382-8', 3, '2025-08-08', 'Mauv'),
('718370323-1', 4, '2023-06-23', 'Maroon'),
('392609360-9', 5, '2023-02-19', 'Turquoise'),
('743934644-0', 6, '2025-05-13', 'Green'),
('734676482-X', 7, '2024-10-07', 'Mauv'),
('470568043-X', 8, '2023-03-11', 'Turquoise'),
('633216754-8', 9, '2025-06-13', 'Violet'),
('369425719-5', 10, '2024-10-10', 'Maroon'),
('189706547-7', 11, '2024-11-27', 'Mauv'),
('218201418-7', 12, '2025-01-03', 'Maroon'),
('514683607-8', 13, '2024-07-22', 'Mauv'),
('232518331-9', 14, '2023-04-02', 'Turquoise'),
('264672617-1', 15, '2024-09-13', 'Purple'),
('027566871-1', 16, '2024-08-09', 'Orange'),
('372559919-X', 17, '2024-09-11', 'Crimson'),
('764790469-8', 18, '2025-05-22', 'Turquoise'),
('884349973-4', 19, '2024-01-30', 'Purple'),
('429967968-7', 20, '2023-12-07', 'Orange'),
('161907650-0', 21, '2023-04-05', 'Red'),
('917339996-5', 22, '2023-05-16', 'Indigo'),
('125663178-7', 23, '2023-01-02', 'Puce'),
('773459320-8', 24, '2024-06-05', 'Teal'),
('667423205-X', 25, '2025-12-06', 'Puce'),
('407247735-4', 26, '2025-10-12', 'Khaki'),
('129056525-2', 27, '2024-09-09', 'Teal'),
('527055751-7', 28, '2025-07-23', 'Turquoise'),
('005141218-7', 29, '2025-02-16', 'Violet'),
('099853715-2', 30, '2024-07-12', 'Indigo'),
('538243788-2', 31, '2023-08-14', 'Teal'),
('013692456-5', 32, '2023-06-06', 'Orange'),
('766521493-2', 33, '2024-10-29', 'Orange'),
('408321049-4', 34, '2023-05-03', 'Aquamarine'),
('491572819-6', 35, '2024-05-05', 'Aquamarine'),
('322817862-5', 36, '2023-05-26', 'Mauv'),
('754764515-1', 37, '2023-10-12', 'Maroon'),
('933530748-3', 38, '2024-10-27', 'Aquamarine'),
('943450554-2', 39, '2025-04-11', 'Violet'),
('496429495-1', 40, '2025-03-14', 'Mauv'),
('727283317-3', 41, '2025-02-20', 'Fuscia'),
('448156851-8', 42, '2025-05-14', 'Maroon'),
('497962112-0', 43, '2023-11-04', 'Mauv'),
('083076088-1', 44, '2025-12-08', 'Khaki'),
('534252483-0', 45, '2024-11-21', 'Crimson'),
('833486377-2', 46, '2025-01-31', 'Yellow'),
('874574713-X', 47, '2025-10-02', 'Puce'),
('641293318-2', 48, '2023-06-06', 'Maroon'),
('405360574-1', 49, '2025-09-25', 'Crimson'),
('723350843-7', 50, '2025-01-29', 'Fuscia');



-- Create Customer_Issue table
CREATE TABLE Problems (
    ISSUE_ID   INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    order_id   INT NOT NULL,
    resolved   BOOLEAN NOT NULL DEFAULT FALSE,
    issue      VARCHAR(50) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders (Order_ID)
);

-- Customer_Issue Mock data insertion

INSERT INTO Problems (ISSUE_ID, order_id, resolved, issue)
VALUES
(927064857, 1, FALSE, 'nec nisi volutpat eleifend donec ut dolor morbi ve'),
(814073292, 2, FALSE, 'blandit non interdum in'),
(920299573, 3, FALSE, 'nibh quisque id justo sit amet sapien dignissim ve'),
(982626223, 4, FALSE, 'hac habitasse platea'),
(147594802, 5, FALSE, 'a libero nam dui proin leo odio porttitor id conse'),
(591355262, 6, FALSE, 'lacinia eget tincidunt eget tempus vel pede morbi '),
(376261368, 7, FALSE, 'massa id nisl venenatis lacinia aenean sit amet ju'),
(296323849, 8, FALSE, 'mauris viverra diam vitae quam suspendisse potenti'),
(91519844, 9, FALSE, 'primis in faucibus orci luctus et ultrices posuere'),
(750939073, 10, FALSE, 'mauris ullamcorper purus sit amet nulla quisque ar'),
(117134628, 11, FALSE, 'integer ac neque'),
(574170131, 12, FALSE, 'ac neque duis bibendum morbi non'),
(474172140, 13, FALSE, 'nulla neque libero convallis eget eleifend'),
(123719483, 14, FALSE, 'penatibus et magnis dis parturient montes nascetur'),
(91582889, 15, FALSE, 'platea dictumst maecenas ut massa quis augue luctu'),
(860971247, 16, FALSE, 'egestas metus aenean fermentum donec ut mauris ege'),
(837050357, 17, FALSE, 'in faucibus orci luctus et ultrices posuere cubili'),
(725883232, 18, FALSE, 'duis mattis egestas metus aenean fermentum donec u'),
(103864789, 19, FALSE, 'maecenas pulvinar lobortis est phasellus sit amet '),
(614165508, 20, FALSE, 'eros suspendisse accumsan'),
(497936480, 21, FALSE, 'felis sed interdum venenatis turpis'),
(290595936, 22, FALSE, 'erat curabitur gravida nisi at nibh in hac habitas'),
(859247887, 23, FALSE, 'eleifend luctus ultricies eu nibh quisque id justo'),
(241669543, 24, TRUE, 'tincidunt ante vel ipsum praesent blandit lacinia '),
(835129645, 25, FALSE, 'in blandit ultrices enim lorem ipsum dolor sit ame'),
(840165671, 26, FALSE, 'in hac habitasse platea dictumst aliquam augue qua'),
(809033312, 27, FALSE, 'odio curabitur convallis duis consequat'),
(578201306, 28, FALSE, 'vestibulum ante ipsum primis in faucibus orci luct'),
(985484327, 29, FALSE, 'ligula sit amet eleifend pede libero'),
(611031121, 30, FALSE, 'donec diam neque vestibulum eget vulputate ut ultr'),
(738671769, 31, FALSE, 'felis ut'),
(225417396, 32, FALSE, 'mauris ullamcorper purus sit amet nulla quisque ar'),
(704514281, 33, FALSE, 'sed tincidunt eu felis fusce posuere felis'),
(435070897, 34, FALSE, 'lacus purus'),
(111254740, 35, FALSE, 'tristique in tempus sit amet sem fusce consequat n'),
(590192086, 36, FALSE, 'in tempus sit amet sem fusce consequat nulla nisl '),
(176886983, 37, FALSE, 'tristique fusce congue diam id ornare imperdiet sa'),
(813258328, 38, FALSE, 'ultrices enim lorem ipsum dolor'),
(289148590, 39, FALSE, 'duis bibendum morbi non quam nec dui luctus rutrum'),
(756133118, 40, FALSE, 'proin at turpis a pede posuere'),
(364971847, 41, FALSE, 'vel sem sed sagittis'),
(297923464, 42, FALSE, 'dignissim vestibulum vestibulum ante ipsum primis '),
(775088812, 43, FALSE, 'augue vestibulum ante ipsum primis'),
(29838266, 44, FALSE, 'fusce consequat nulla nisl nunc nisl duis'),
(485450163, 45, TRUE, 'dapibus dolor vel est donec odio justo sollicitudi'),
(390040675, 46, FALSE, 'auctor gravida'),
(73619400, 47, FALSE, 'sociis natoque penatibus et magnis dis parturient '),
(163754776, 48, FALSE, 'risus semper porta volutpat quam pede lobortis lig'),
(616403927, 49, FALSE, 'amet justo morbi ut odio cras mi pede malesuada in'),
(580430780, 50, FALSE, 'semper est quam pharetra magna ac consequat metus ');

