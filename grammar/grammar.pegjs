start
= tree

tree
= node*

node
= statement

statement
= if_statement 
/ proc_statement

if_statement
= if_factor 'Y' edge branch1:proc_factor '\n' 'N' '\n' edge branch2:statement { return ['if',branch1,'else',branch2]; }

proc_statement
= proc_factor tree
/ proc_factor tree edge

proc_factor
= '[' procexp:proc_expression ']' { return procexp; }
if_factor
= '<' ifexp:if_expression '>' { return ifexp; }

proc_expression
= element (' ' element)*

if_expression
= element

element
= characters:[a-zA-Z0-9-_]+ { return characters.join('') }

edge
= symbols:[-|\n]+ { return symbols.join('') }

