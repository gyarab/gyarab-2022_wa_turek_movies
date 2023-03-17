# GamDB
Databáze filmů Gymnázia Arabská.<br/> 
Návod pro spuštění:
1. Stáhněte obsah tohoto repozitáře
2. Ve stažené složce s projektem vytvořte Python virtual environment pomocí <i>python -m venv venv</i> ve Windows
3. Aktivujte venv spuštěním scriptu activate ve se složce scripts
4. Přejděte v terminálu do složky gamdb
5. Zde spuste nasledující dvojici příkazů pro vytvoření databáze <i>py manage.py makemigrations<i/> a <i>py manage.py migrate<i/>
6. Následně zde spuste nasledující dvojici příkazů pro naplnění databáze daty <i>py manage.py --format yaml ./fixtures/users.yaml<i/> a <i>py manage.py --format yaml ./fixtures/users.yaml<i/>
7. Aplikaci spuste příkazem <i>py manage.py runserver<i/>
8. Nyní otevřete v prohlížeči adresu, jenž se objevila v příkazové řádce
9. Gratuluji, úspěšně jste spustili filmovou databázi GamDB
