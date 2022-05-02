import os
import requests

os.system("Clear")
ip = input("Enter IP Address: ")
ip_url = requests.get(f"https://ipapi.co/{ip}/json")
print(ip_url.text)