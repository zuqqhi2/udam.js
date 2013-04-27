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
    <hasAccount>Y---[follow the_account]
    N
    |
    |
    [goodbye]

    Nest
    <hasTwitterAccount>Y---[follow twitter_account]
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

    Nest2
    <hasTwitterAccount zuqqhi2>Y---[follow twitter_account]---[submit comment,hello]
    N
    |
    |
    <hasFacebookAccount zuqqhi2>Y-----[request friend,facebook_account]
    N
    |
    |
    |
    |
    |
    [Goodbye]
