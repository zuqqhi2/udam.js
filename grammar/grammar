tree           = node*
node           = statement
statement      = if_statement / proc_statement

if_statement   = if_factor 'Y' branch_symbol+ proc_factor end_of_line 'N' end_of_line branch_symbol+ statement
proc_statement = proc_factor tree branch_symbol*

proc_factor    = '[' proc_expression ']'
if_factor      = '<' if_expression '>'

proc_expression= element+ (' ' element+)*
if_expression  = element+

process        = 'output'
element        = character / digit / '-' / '_'
character      = ( 'a' / 'b' / 'c' / 'd' / 'e' / 'f' / 'g' / 'h' / 'i' / 'j' / 'k' / 'l' / 'm' / 'n' / 'o' / 'p' / 'q' / 'r' / 's' / 't' / 'u' / 'v' / 'w' / 'x' / 'y' / 'Z' / 'A' / 'B' / 'C' / 'D' / 'E' / 'F' / 'G' / 'H' / 'I' / 'J' / 'K' / 'L' / 'M' / 'N' / 'O' / 'P' / 'Q' / 'R' / 'S' / 'T' / 'U' / 'V' / 'W' / 'X' / 'Y' / 'Z')
digit          = ( '0' / '1' / '2' / '3' / '4' / '5' / '6' / '7' / '8' / '9' ) 
branch_symbol  = ( '|' / '-' / end_of_line)
end_of_line    = ( '\n' )
