web site for check
---------
http://pegjs.majda.cz/online

output statement
----------------
    Normal
    [do something]

    Processes
    [do something]---[do something arg1]

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
    <hasFacebookAccount>Y-----[request friend facebook_account]
    N
    |
    |
    |
    |
    |
    [Goodbye]
