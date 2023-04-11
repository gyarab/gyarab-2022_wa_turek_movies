# GamDB
Databáze filmů Gymnázia Arabská.<br/> 
Návod pro spuštění:
1. Stáhněte obsah tohoto repozitáře
2. Ve stažené složce s projektem vytvořte Python virtual environment pomocí ```python -m venv venv``` (Windows)
3. Aktivujte venv spuštěním scriptu activate ve se složce scripts ```./venv/scripts/activate```
4. Pomocí ```pip install -r requirements.txt``` nainstalujte závislosti potřebné pro spuštění 
5. Přejděte v terminálu do složky gamdb ```cd ./gamdb```
6. Zde spuste nasledující dvojici příkazů pro vytvoření databáze ```py manage.py makemigrations<i/> a <i>py manage.py migrate```
7. Následně zde spuste nasledující příkaz pro naplnění databáze daty ```py manage.py loaddata --format yaml ./fixtures/*.yaml```
8. Aplikaci nyní můžete spustit pomocí ```py manage.py runserver```
9. Nyní otevřete v prohlížeči adresu, jenž se objevila v příkazové řádce
10. Gratuluji, úspěšně jste spustili filmovou databázi GamDB
<p align="center">
<img src="https://media.tenor.com/8WPW-T8L3nkAAAAM/bocchi-the-rock-bocchi.gif" width="300" height="300" />
<img src="https://preview.redd.it/spinning-ryo-v0-ptnc0nvm8p7a1.gif?width=480&auto=webp&s=0d48e18579e07bcd3fce1de83c858870b21d96b2" width="300" height="300" />
<img src="https://media.tenor.com/-FrcCsUig4sAAAAC/spin-bocchi.gif" width="300" height="300" />
</p>


