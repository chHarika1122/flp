


CREATE TABLE customer(
  customer_id int(25) PRIMARY KEY auto_increment,
  name varchar(50) Not NULL,
  email varchar(50) NOT NULL,
  password varchar(20) NOT NULL,
  address varchar(50) NOT NULL,
  mobile_no varchar(12) NOT NULL,
  gender varchar(10) Not NULL
);





CREATE TABLE customer_orders (
  
  customer_id int NOT NULL references customer(customer_id),
  product_name varchar(20) NOT NULL,
  order_id  int primary key auto_increment,
  quantity int,
  amount double(10,2)
) ;


CREATE TABLE feedback_table (
  feedback_id int PRIMARY KEY auto_increment,
  feedback varchar(255) DEFAULT NULL,
  customer_id int NOT NULL references customer(customer_id),
  rating double DEFAULT NULL
) ;



CREATE TABLE wishlist_product (
  prod_id BIGINT NOT NULL references product(prod_Id),
  wishlist_id int primary key auto_increment
);



CREATE TABLE carddetails (
  cardno long primary key,
  card_holder_name varchar(50),
  expirymonth int Not Null,
  expiry_year int not NULL,
  cvv int not null,
  customer_id int references customer(customer_id)
);









