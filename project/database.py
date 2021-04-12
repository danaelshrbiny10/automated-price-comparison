import psycopg2 

# conn = psycopg2.connect(database="automated_price_comparison", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")
conn = psycopg2.connect(database="APC", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")
# conn = psycopg2.connect(database="noon", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")
print ("Opened database successfully")


cur = conn.cursor()



cur.execute('''CREATE TABLE SOUQ
    (ID SERIAL      NOT NULL,
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
    PRODUCT_ID SERIAL NOT NULL ,
    SOUQ_ID SERIAL     NOT NULL,
    RATE INT     NOT NULL,
    PRIMARY KEY (ID))''');

cur.execute('''CREATE TABLE JUMIA
    (ID SERIAL      NOT NULL,
    SKU VARCHAR(520),
    NAME VARCHAR(300),
    CATEGORIES VARCHAR(500),
    PRICES VARCHAR(500),
    ImG TEXT    NOT NULL,
    rating double precision    NOT NULL)''');


cur.execute('''CREATE TABLE NOON
    (ID SERIAL    NOT NULL,
    SKU VARCHAR(50),
    TITLE VARCHAR(300),
    MANUFACTURE VARCHAR(50),
    CATEGORY INT     NOT NULL,
    KEYWORDS TEXT    NOT NULL,
    EAN VARCHAR(50),
    ACTIVE BOOLEAN,
    LASTPRICE VARCHAR(50),
    PRODUCT_ID SERIAL NOT NULL ,
    NOON_ID SERIAL     NOT NULL,
    RATE INT     NOT NULL,
    PRIMARY KEY (ID))''');

cur.execute('''CREATE TABLE PRODUCT
    (ID SERIAL  PRIMARY KEY   NOT NULL,
    SKU VARCHAR(50),
    TITLE VARCHAR(300),
    MANUFACTURE VARCHAR(50),
    DESCRIPTION TEXT    NOT NULL,
    CATEGORY INT     NOT NULL,
    KEYWORDS TEXT    NOT NULL,
    EAN VARCHAR(50),
    LOWPRICE VARCHAR(50),
    AVG_RATE INT     NOT NULL)''');


cur.execute('''CREATE TABLE PRICE_HISTORY
    (PRICES VARCHAR(50))''');


cur.execute('''CREATE TABLE MAIN_CATEGORY
    (categories VARCHAR(500))''');

cur.execute('''CREATE TABLE CATEGORY
    (NAME VARCHAR(300),
    url VARCHAR (500))''');


cur.execute('''CREATE TABLE IMG 
    (ID SERIAL   NOT NULL,
    PRODUCT_ID SERIAL     NOT NULL,
    IMG_PATH VARCHAR(50),
    PRIMARY KEY (ID))''');


cur.execute('''CREATE TABLE CUSTOMER
    (ID SERIAL   NOT NULL,
    FIRSTNAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    EMAIL VARCHAR(100),
    PRIMARY KEY (ID),
    PASSWORD VARCHAR(300))''');


cur.execute('''CREATE TABLE NOTIFY
    (ID SERIAL  NOT NULL,
    CUSTOMER_ID SERIAL     NOT NULL,
    PRODECT_ID SERIAL     NOT NULL,
    IM_PRICE VARCHAR(100),
    ENDED BOOLEAN,
    PRIMARY KEY (ID))''');

print ("Table created successfully")
conn.commit()