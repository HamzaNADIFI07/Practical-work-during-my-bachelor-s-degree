<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Premier exercice PHP</title>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="iniPHP.css" />
    </head>
    <body>
        <header>
            <h1>Premier exercice PHP</h1>
            <h2>Réalisé par <span class="nom">Hamza NADIFI</span></h2>
        </header>
        <!-- section résultat. Créer une section pour chaque question -->
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p>Nous sommes le <?= date('d / m / Y') ?></p>
        </section>
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p>La fonction afficheVar(): <?= afficheVar(56,'chaine') ?></p>
        </section>
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p><?= n_parag('chaine_caractere',5) ?></p>
        </section>
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p><?= paragrapheTronque('abcdfeghij' , 5) ?></p>
            <p><?= paragrapheTronque('abcdfeghij' , 4) ?></p>
            <p><?= paragrapheTronque('abcdfeghij' , 3) ?></p>
            <p><?= paragrapheTronque('abcdfeghij' , 2) ?></p>
            <p><?= paragrapheTronque('abcdfeghij' , 1) ?></p>
            <p><?= diminue('azertyuiop') ?></p>
        </section>
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p><?= diminue1('qwertyuiop') ?></p>
        </section>
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p><?= tableMultiplication(2) ?></p>
        </section>
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p><?= tableMultiplications() ?></p>
        </section>
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p><?= tableauMult() ?></p>
        </section>
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p><?= q8("123+234+345+456+567") ?></p>
            <p><?= q8("987+876+765+654+543") ?></p>
        </section>
        <section>
            <h2>Question <?= $num_quest++ ?></h2>
            <p><?= enSpan("123 - 234 - 345 - 456 - 567 ") ?></p>
            <p><?= enSpan("987 - 876 - 765 - 654 - 543") ?></p>
        </section>

        
    </body>
    
</html>