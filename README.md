Shake's Complete
================

Currently deploying to: http://shakescomplete.herokuapp.com

Text prediction based on the works of shakespeare,
and a search through the corpus yielding title,
act, and scene.

In support of some blog articles, and to practice
the probabilities programming that go along with
big data techniques.


Setup
-----

do:

    gem install bundler
    bundle install
    compass compile

    npm install -g coffee-script
    coffee --output public/js --compile coffee

thereafter:

    ./script/watch-all.sh

done.

Yet To Do
---------

* clean the Shakespeare corpus into lines to
retrieve autocompleted phrases cheaply and
ensure the UI works correctly.
* create trigram set to match based on scoring algorithm
* create bigram set to match on probability?

Questions? ben@vandgrift.com


