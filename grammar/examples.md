web site for check
---------
http://pegjs.majda.cz/online

output statement
----------------
    Normal
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
    N
    |
    |
    |
    |
    |
    [output other_item]
