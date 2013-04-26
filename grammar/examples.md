web site for check
---------
http://pegjs.majda.cz/online

output statement
----------------
    Normal
<<<<<<< HEAD
    [output something]

    Processes
    [output ichibaItem]----[output travelItem]

if statement
----------------
    Normal
    <hastravelitem>Y---[output travel]
    N
    |
    |
    [output ichiba]

    Nest
    <hasTravelBrowsingHistory>Y---[output travel_item]
    N
    |
    |
    <hasIchibaBrowsingHistory>Y-----[output ichiba_item]
=======
    [do something]

    Processes
    [do something]---[do something arg1]

if statement
----------------
    Normal If
    <hasAccount>Y---[follow the_account]
    N
    |
    |
    [Goodbye]

    Nest
    <hasTwitterAccount>Y---[follow twitter_account]
    N
    |
    |
    <hasFacebookAccount>Y-----[request friend facebook_account]
>>>>>>> master
    N
    |
    |
    |
    |
    |
<<<<<<< HEAD
    [output other_item]
=======
    [Goodbye]
>>>>>>> master
