start
= tree

tree
= stat:statement? { return stat; }

statement
= stat:if_statement { return stat.toString(); }
/ stat:proc_statement { return stat.toString(); }

if_statement
 = if_factor 'Y' edge branch1:proc_statement '\n'
             'N' '\n' edge branch2:statement
   { return branch2.toString().match(/if/) ?
     'if\n\t' + branch1 + '\nelse ' + branch2
     : 'if\n\t' + branch1 + '\nelse\n\t' + branch2;}

proc_statement
= fac1:proc_factor [-|]+ fac2:proc_statement { return fac1 + ',' + fac2; }
/ factor:proc_factor { return factor; }

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
