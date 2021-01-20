import requests, psycopg2 , json

url = "https://www.jumia.com.eg/redmi-note-7-6.3-inch-64gb-dual-sim-4g-mobile-phone-neptune-blue-xiaomi-mpg166709.html"

payload={}
headers = {
  'authority': 'www.jumia.com.eg',
  'pragma': 'no-cache',
  'cache-control': 'no-cache',
  'accept': 'application/json',
  'user-agent': 'Mozilla/5.0 (Linux; Android 8.0.0; Pixel 2 XL Build/OPD1.170816.004) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36',
  'sec-fetch-site': 'same-origin',
  'sec-fetch-mode': 'cors',
  'sec-fetch-dest': 'empty',
  'referer': 'https://www.jumia.com.eg/xiaomi-redmi-note-8-6.3-inch-64gb4gb-mobile-phone-space-black-15421326.html',
  'accept-language': 'en-US,en;q=0.9,ar;q=0.8',

}

response = requests.request("GET", url, headers=headers, data=payload).json()

#print(response.text)



# def open_conn(n1 , n2 , n3 ,n4 ,n5):
#     conn = psycopg2.connect(database="automated_price_comparison", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")
#     cur = conn.cursor()
#     return(conn,cur)
#     cur.execute("INSERT INTO JUMIA (SKU,NAME,CATEGORIES,PRICES,rating) values (%s ,%s , %s , %s, %s)")
#     conn.commit()
#     conn.close()

# conn,cur = open_conn("SKU","NAME" , "CATEGORIES","PRICES","rating")

class jumia:
    def __init__(self, SKU, NAME, CATEGORIES, PRICES, rating):
        conn = psycopg2.connect(database="automated_price_comparison", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")
        cur = conn.cursor()
        self.SKU = SKU
        self.NAME = NAME
        self.CATEGORIES = CATEGORIES
        self.PRICES = PRICES
        self.rating = rating
        cur.execute("INSERT INTO JUMIA (SKU,NAME,CATEGORIES,PRICES,rating) values (%s ,%s , %s , %s, %s)" )
        conn.commit()
        conn.close()
# #---------------------------------------------------------------------------------------------------------------------------------------------
# def open_conn(n):
#     conn = psycopg2.connect(database="automated_price_comparison", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")
#     cur = conn.cursor()
#     return(conn,cur)
#     cur.execute("INSERT INTO PRICE_HISTORY (PRICES) values (%s)")
#     conn.commit()
#     conn.close()

# conn,cur = open_conn("PRICES")

class price_history:
    def __init__(self, PRICES):
        conn = psycopg2.connect(database="automated_price_comparison", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")
        cur = conn.cursor()
        self.PRICES = PRICES
        cur.execute("INSERT INTO PRICE_HISTORY (PRICES) values (%s)" )
        conn.commit()
        conn.close()
#---------------------------------------------------------------------------------------------------------------------------------------------
# def open_conn(x1 , x2):
#     conn = psycopg2.connect(database="automated_price_comparison", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")
#     cur = conn.cursor()
#     return(conn,cur)
#     cur.execute("INSERT INTO  category (NAME , url) values (%s ,%s)" )
#     conn.commit()
#     conn.close()

# conn,cur = open_conn("NAME" , "url")

class category:
    def __init__(self, NAME, url):
        conn = psycopg2.connect(database="automated_price_comparison", user = "postgres", password = "dana20499", host = "127.0.0.1", port = "5432")
        cur = conn.cursor()
        self.NAME = NAME
        self.url = url
        cur.execute("INSERT INTO  category (NAME , url) values (%s ,%s)" )
        conn.commit()
        conn.close()
# p1 = category("John", 36)

# print(p1.NAME)
# print(p1.url)

#---------------------------------------------------------------------------------------------------------------------------------------------

## to show tables
# cur = conn.cursor()
# cur.execute("SELECT *  from JUMIA")
# rows = cur.fetchall()
# for row in rows:
#    print ("SKU = "), row[1]
#    print ("NAME = "), row[2]
#    print ("CATEGORIES = "), row[4]
#    print ("PRICES = "), row[8]
#    print ("rating = "), row[11], "\n"

# cur.execute("SELECT * from PRICE_HISTORY")
# rows = cur.fetchall()
# for row in rows:
#    print ("PRICES = "), row[0], "\n"

# cur.execute("SELECT * from CATEGORY")
# rows = cur.fetchall()
# for row in rows:
#    print ("NAME = "), row[0]
#    print ("url = "), row[1], "\n"

# conn.commit()
# print ("Operation done successfully");
# conn.close()
