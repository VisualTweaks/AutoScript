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
║/BaseHack              ║
║                       ║
║                       ║ 	   	
╚═══════════════════════╝ ''')
console = input("shell~$ ")

if console == "/BaseHack":
    os.system("clear")
    os.chdir("Scripts")
    os.system("bash AutoScripts.sh")