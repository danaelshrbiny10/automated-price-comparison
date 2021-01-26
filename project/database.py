import psycopg2

conn = psycopg2.connect(database="automated_price_comparison", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")

print ("Opened database successfully")


cur = conn.cursor()



cur.execute('''CREATE TABLE SOUQ
      (ID INT      NOT NULL,
      SKU VARCHAR(50),
      TITLE VARCHAR(300),
      MANUFACTURE VARCHAR(50),
      DESCRIPTION TEXT    NOT NULL,
      ImG TEXT    NOT NULL,
      CATEGORY INT     NOT NULL,
      KEYWORDS TEXT    NOT NULL,
      EAN VARCHAR(50),
      ACTIVE BOOLEAN,
      LASTPRICE VARCHAR(50),
      PRODUCT_ID INT NOT NULL ,
      SOUQ_ID INT     NOT NULL,
      RATE INT     NOT NULL,
      PRIMARY KEY (ID),
      FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID)  ON DELETE CASCADE,
      FOREIGN KEY (CATEGORY) REFERENCES CATEGORY(ID) ON DELETE CASCADE)''');


cur.execute('''CREATE TABLE JUMIA
      (ID INT NOT NULL,
      SKU VARCHAR(520),
      NAME VARCHAR(300),
      CATEGORIES INT NOT NULL,
      PRODUCT_ID INT NOT NULL ,
      PRICES VARCHAR(500),
      rating double precision    NOT NULL,
      PRIMARY KEY (ID),
      FOREIGN KEY (CATEGORIES) REFERENCES CATEGORY(ID) ON DELETE CASCADE,
      FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID) ON DELETE CASCADE)''');           


cur.execute('''CREATE TABLE NOON
      (ID INT    NOT NULL,
      SKU VARCHAR(50),
      TITLE VARCHAR(300),
      MANUFACTURE VARCHAR(50),
      CATEGORY INT     NOT NULL,
      KEYWORDS TEXT    NOT NULL,
      EAN VARCHAR(50),
      ACTIVE BOOLEAN,
      LASTPRICE VARCHAR(50),
      PRODUCT_ID INT NOT NULL ,
      NOON_ID INT     NOT NULL,
      RATE INT     NOT NULL,
      PRIMARY KEY (ID),
      FOREIGN KEY (CATEGORY) REFERENCES CATEGORY(ID) ON DELETE CASCADE,
      FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID) ON DELETE CASCADE)''');


cur.execute('''CREATE TABLE PRODUCT
      (ID INT  PRIMARY KEY   NOT NULL,
      SKU VARCHAR(50),
      TITLE VARCHAR(300),
      MANUFACTURE VARCHAR(50),
      DESCRIPTION TEXT    NOT NULL,
      CATEGORY INT     NOT NULL,
      KEYWORDS TEXT    NOT NULL,
      EAN VARCHAR(50),
      LOWPRICE VARCHAR(50),
      AVG_RATE INT     NOT NULL,
      FOREIGN KEY (CATEGORY) REFERENCES CATEGORY(ID) ON DELETE CASCADE,
      FOREIGN KEY (CATEGORY) REFERENCES PRICE_HISTORY(ID) ON DELETE CASCADE)''');

cur.execute('''CREATE TABLE PRICE_HISTORY
      (PRODUCT_ID INT NOT NULL,
      PRICES VARCHAR(50),
      PRIMARY KEY (PRODUCT_ID),
      FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID) ON DELETE CASCADE)''');

cur.execute('''CREATE TABLE CATEGORY
      (ID INT NOT NULL ,
      NAME VARCHAR(300),
      url VARCHAR (500),
      PRIMARY KEY (ID))''');

cur.execute('''CREATE TABLE IMG
      (ID INT   NOT NULL,
      PRODUCT_ID INT     NOT NULL,
      IMG_PATH VARCHAR(50),
      PRIMARY KEY (ID),
      FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID) ON DELETE CASCADE)''');

cur.execute('''CREATE TABLE CUSTOMER
      (ID INT   NOT NULL,
      FIRSTNAME VARCHAR(50),
      LASTNAME VARCHAR(50),
      EMAIL VARCHAR(100),
      PRIMARY KEY (ID),
      PASSWORD VARCHAR(300))''');


cur.execute('''CREATE TABLE NOTIFY
      (ID INT  NOT NULL,
      CUSTOMER_ID INT     NOT NULL,
      PRODECT_ID INT     NOT NULL,
      IM_PRICE VARCHAR(100),
      ENDED BOOLEAN,
      PRIMARY KEY (ID),
      FOREIGN KEY (PRODECT_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE,
      FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(ID) ON DELETE CASCADE)''');


print ("Table created successfully")
conn.commit()
conn.close()