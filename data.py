import requests
import time
import psycopg2

def des(sku,offer_code):
  url1 = f"https://www.noon.com/_svc/catalog/api/u/{sku}/p?o={offer_code}"
  payload1={} 
  headers1 = {
    'authority': 'www.noon.com',
    'pragma': 'no-cache',
    'cache-control': 'no-cache, max-age=0, must-revalidate, no-store',
    'x-locale': 'en-eg',
    'x-content': 'mobile',
    'x-mp': 'noon',
    'user-agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',
    'x-cms': 'v2',
    'accept': 'application/json, text/plain, */*',
    'x-platform': 'web',
    'sec-fetch-site': 'same-origin',
    'sec-fetch-mode': 'cors',
    'sec-fetch-dest': 'empty',
    'referer': 'https://www.noon.com/egypt-en/iphone-12-pro-max-with-facetime-256gb-graphite-5g-middle-east-version/N41044056A/p?o=e0211e466e4a3c6a',
    'accept-language': 'en-US,en;q=0.9',
  }
  response1 = requests.request("GET", url1, headers=headers1, data=payload1)
  if(response1.status_code==429):
    print(response1.status_code)
    time.sleep(5)
    a=des(sku,offer_code)
  else:
    response1=response1.json()
    a=[response1['product']['feature_bullets']]
    print(a)
  # conn,cur=connn()
  # # cur.execute("INSERT INTO noon(fullDescription) VALUES (%s)",(z))
  # cur.execute("INSERT INTO noon(fullDescription) VALUES (%s)",(z))
  # conn.commit()

  return(a)
lists=[['electronics-and-mobiles/mobiles-and-accessories'],['electronics-and-mobiles/computers-and-accessories'],['electronics-and-mobiles/video-games-10181'],['electronics-and-mobiles/television-and-video'],['electronics-and-mobiles/camera-and-photo-16165'],['electronics-and-mobiles/portable-audio-and-video'],['electronics-and-mobiles/wearable-technology'],['electronics-and-mobiles/home-audio'],['electronics-and-mobiles/accessories-and-supplies']]
for l in lists:
  l=l
  page_number=1
  a=True
  while a :
    url = "https://www.noon.com/_svc/catalog/api/search"
    payload="{\"brand\":[\"apple\"],\"category\":[\"electronics-and-mobiles/mobiles-and-accessories/mobiles-20905\"],\"filterKey\":[],\"f\":{},\"sort\":{\"by\":\"popularity\",\"dir\":\"desc\"},\"limit\":50,\"page\":2}"
    headers = {
    'authority': 'www.noon.com',
    'pragma': 'no-cache',
    'cache-control': 'no-cache, max-age=0, must-revalidate, no-store',
    'x-locale': 'en-eg',
    'x-content': 'mobile',
    'x-mp': 'noon',
    'x-platform': 'web',
    'x-cms': 'v2',
    'content-type': 'application/json',
    'accept': 'application/json, text/plain, */*',
    'user-agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1',
    'origin': 'https://www.noon.com',
    'sec-fetch-site': 'same-origin',
    'sec-fetch-mode': 'cors',
    'sec-fetch-dest': 'empty',
    'referer': 'https://www.noon.com/egypt-en/electronics-and-mobiles/mobiles-and-accessories/mobiles-20905/apple',
    'accept-language': 'en-US,en;q=0.9,ar;q=0.8',}
    payload={"brand":[],"category":l,"filterKey":[],"f":{},"sort":{"by":"popularity","dir":"desc"},"limit":50,"page":page_number}
    response = requests.request("POST", url, headers=headers, json=payload)
    if(response.status_code==429):
      time.sleep(5)
    else:
      response=response.json()
      v=response.get('hits')
      k=0
      for item in v:
        des(v[k]['sku'],v[k]['offer_code'])
        k+=1
    
    page_number+=1


      
