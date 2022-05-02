import os
import time
import phonenumbers
from phonenumbers import timezone
from phonenumbers import carrier
from phonenumbers import geocoder

l = "-----------------"

os.system('clear')
number = input("Enter Phonenumber: ")
print(l)
 
ch_nmber = phonenumbers.parse(number)
print(phonenumbers.is_possible_number(ch_nmber))
print(l)
time.sleep(0.5)

ch_nmber = phonenumbers.parse(number, "CH")
print(geocoder.description_for_number(ch_nmber, "en"))
print(l)
time.sleep(0.5)
 
ch_nmber = phonenumbers.parse(number)
print(timezone.time_zones_for_number(ch_nmber))
print(l)
time.sleep(0.5)