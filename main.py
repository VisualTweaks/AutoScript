from multiprocessing.context import ForkProcess
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
║                       ║ 	   	
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