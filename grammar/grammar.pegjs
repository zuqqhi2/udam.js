start
= tree

tree
= node:node? { return node; }

node
= stat:statement { return stat; }

statement
= stat:if_statement { return stat.toString(); }
/ stat:proc_statement { return stat.toString(); }

if_statement
= if_factor 'Y' edge branch1:proc_factor '\n'
  'N' '\n' edge branch2:statement
  { return 'if\n\t' + branch1 + '\nelse\n' + branch2; }

proc_statement
= proc_factor tree
/ proc_factor tree edge

proc_factor
= '[' procexp:expression ']' { return procexp; }
if_factor
= '<' ifexp:expression '>' { return ifexp; }

expression
= elem:element ' ' cdr:arguments { return elem.toString() + '(' +cdr + ')'; }
/ elem:element { return elem.toString(); }

arguments
= elem:element ',' arg:arguments { return elem.toString() + ',' + arg; }
/ elem:element { return elem.toString(); }

element
= characters:[a-zA-Z0-9-_]+ { return characters.join('') }

edge
= symbols:[-|\n]+ { return symbols.join('') }
