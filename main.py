import os
import time 
import pyfiglet
from colorama import Fore

result = pyfiglet.figlet_format("TREE", font="3-d")
print(f'{Fore.RED}' + result + f'{Fore.WHITE}')
print("Loading...")
time.sleep(3)
os.system("clear")

print('''
╔═══════════════════════╗
║/Tor                   ║
║/BaseHack              ║
║/WebHack               ║
║./Osint                ║ 	   	
╚═══════════════════════╝ ''')
console = input("shell~$ ")

if console == "/Tor":
    os.system("clear")
    os.chdir("Scripts")
    os.system("bash Tor.sh")

if console == "/BaseHack":
    os.system("clear")
    os.chdir("Scripts")
    os.system("bash AutoScripts.sh")
    
if console == "/WebHack":
    os.system("clear")
    os.chdir("Scripts")
    os.system("bash WebHack.sh")

if console == "./Osint":
    log = input("Would you like the Osint Framework? (Y/N): ")
    if log == "Y":
        os.system("clear")
        print('''
╔═══════════════════════╗
║/IPInfo                ║
║/WebInfo               ║
║/PhoneInfo             ║
║./Back                 ║ 	   	
╚═══════════════════════╝''')
Osint = input("osint@shell~$ ")

if Osint == "/IPInfo":
    os.system("clear")
    os.chdir("PyScripts")
    os.system("python3 IPInfo.py")

if Osint == "/WebInfo":
    os.system("clear")
    os.chdir("PyScripts")
    os.system("python3 WebInfo.py")

if Osint == "/PhoneInfo":
    os.system("clear")
    os.chdir("PyScripts")
    os.system("python3 PhoneInfo.py")

if Osint == "./Back":
    os.system("clear")
    os.system("python3 main.py")