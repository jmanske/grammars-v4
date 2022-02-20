/*
MIT License

Copyright (c) 2022 Mustafa Said Ağca

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

lexer grammar VerilogLexer;

channels { COMMENTS, DIRECTIVES }

EM : '!' ;
EMEQ : '!=' ;
EMEQEQ : '!==' ;
DQ : '"' ;
HA : '#' ;
DL : '$' ;
DLFULLSKEW : '$fullskew' ;
DLHOLD : '$hold' ;
DLNOCHANGE : '$nochange' ;
DLPERIOD : '$period' ;
DLRECOVERY : '$recovery' ;
DLRECREM : '$recrem' ;
DLREMOVAL : '$removal' ;
DLSETUP : '$setup' ;
DLSETUPHOLD : '$setuphold' ;
DLSKEW : '$skew' ;
DLTIMESKEW : '$timeskew' ;
DLWIDTH : '$width' ;
MO : '%' ;
AM : '&' ;
AMAM : '&&' ;
AMAMAM : '&&&' ;
LP : '(' ;
RP : ')' ;
AS : '*' ;
ASAS : '**' ;
ASSL : '*/' ;
ASGT : '*>' ;
PL : '+' ;
PLCL : '+:' ;
CO : ',' ;
MI : '-' ;
MICL : '-:' ;
MIGT : '->' ;
MIINCDIR : '-incdir' ;
DT : '.' ;
SL : '/' ;
SLAS : '/*' ;
SLSL : '//' ;
CL : ':' ;
SC : ';' ;
LT : '<' ;
LTLT : '<<' ;
LTLTLT : '<<<' ;
LTEQ : '<=' ;
EQ : '=' ;
EQEQ : '==' ;
EQEQEQ : '===' ;
EQGT : '=>' ;
GT : '>' ;
GTEQ : '>=' ;
GTGT : '>>' ;
GTGTGT : '>>>' ;
QM : '?' ;
AT : '@' ;
PATHPULSEDL : 'PATHPULSE$' ;
LB : '[' ;
BSAP : '\'' ;
RB : ']' ;
CA : '^' ;
CATI : '^~' ;
GA : '`' -> channel(DIRECTIVES), pushMode(DIRECTIVE_MODE) ;
ALWAYS : 'always' ;
AND : 'and' ;
ASSIGN : 'assign' ;
AUTOMATIC : 'automatic' ;
BEGIN : 'begin' ;
BUF : 'buf' ;
BUFIFZERO : 'bufif0' ;
BUFIFONE : 'bufif1' ;
CASE : 'case' ;
CASEX : 'casex' ;
CASEZ : 'casez' ;
CELL : 'cell' ;
CMOS : 'cmos' ;
CONFIG : 'config' ;
DEASSIGN : 'deassign' ;
DEFAULT : 'default' ;
DEFPARAM : 'defparam' ;
DESIGN : 'design' ;
DISABLE : 'disable' ;
EDGE : 'edge' ;
ELSE : 'else' ;
END : 'end' ;
ENDCASE : 'endcase' ;
ENDCONFIG : 'endconfig' ;
ENDFUNCTION : 'endfunction' ;
ENDGENERATE : 'endgenerate' ;
ENDMODULE : 'endmodule' ;
ENDPRIMITIVE : 'endprimitive' ;
ENDSPECIFY : 'endspecify' ;
ENDTABLE : 'endtable' ;
ENDTASK : 'endtask' ;
EVENT : 'event' ;
FOR : 'for' ;
FORCE : 'force' ;
FOREVER : 'forever' ;
FORK : 'fork' ;
FUNCTION : 'function' ;
GENERATE : 'generate' ;
GENVAR : 'genvar' ;
HIGHZZERO : 'highz0' ;
HIGHZONE : 'highz1' ;
IF : 'if' ;
IFNONE : 'ifnone' ;
INCLUDE : 'include' ;
INITIAL : 'initial' ;
INOUT : 'inout' ;
INPUT : 'input' ;
INSTANCE : 'instance' ;
INTEGER : 'integer' ;
JOIN : 'join' ;
LARGE : 'large' ;
LIBLIST : 'liblist' ;
LIBRARY : 'library' ;
LOCALPARAM : 'localparam' ;
MACROMODULE : 'macromodule' ;
MEDIUM : 'medium' ;
MODULE : 'module' ;
NAND : 'nand' ;
NEGEDGE : 'negedge' ;
NMOS : 'nmos' ;
NOR : 'nor' ;
NOSHOWCANCELLED : 'noshowcancelled' ;
NOT : 'not' ;
NOTIFZERO : 'notif0' ;
NOTIFONE : 'notif1' ;
OR : 'or' ;
OUTPUT : 'output' ;
PARAMETER : 'parameter' ;
PMOS : 'pmos' ;
POSEDGE : 'posedge' ;
PRIMITIVE : 'primitive' ;
PULLZERO : 'pull0' ;
PULLONE : 'pull1' ;
PULLDOWN : 'pulldown' ;
PULLUP : 'pullup' ;
PULSESTYLE_ONDETECT : 'pulsestyle_ondetect' ;
PULSESTYLE_ONEVENT : 'pulsestyle_onevent' ;
RCMOS : 'rcmos' ;
REAL : 'real' ;
REALTIME : 'realtime' ;
REG : 'reg' ;
RELEASE : 'release' ;
REPEAT : 'repeat' ;
RNMOS : 'rnmos' ;
RPMOS : 'rpmos' ;
RTRAN : 'rtran' ;
RTRANIFZERO : 'rtranif0' ;
RTRANIFONE : 'rtranif1' ;
SCALARED : 'scalared' ;
SHOWCANCELLED : 'showcancelled' ;
SIGNED : 'signed' ;
SMALL : 'small' ;
SPECIFY : 'specify' ;
SPECPARAM : 'specparam' ;
STRONGZERO : 'strong0' ;
STRONGONE : 'strong1' ;
SUPPLYZERO : 'supply0' ;
SUPPLYONE : 'supply1' ;
TABLE : 'table' ;
TASK : 'task' ;
TIME : 'time' ;
TRAN : 'tran' ;
TRANIFZERO : 'tranif0' ;
TRANIFONE : 'tranif1' ;
TRI : 'tri' ;
TRIZERO : 'tri0' ;
TRIONE : 'tri1' ;
TRIAND : 'triand' ;
TRIOR : 'trior' ;
TRIREG : 'trireg' ;
USE : 'use' ;
UWIRE : 'uwire' ;
VECTORED : 'vectored' ;
WAIT : 'wait' ;
WAND : 'wand' ;
WEAKZERO : 'weak0' ;
WEAKONE : 'weak1' ;
WHILE : 'while' ;
WIRE : 'wire' ;
WOR : 'wor' ;
XNOR : 'xnor' ;
XOR : 'xor' ;
LC : '{' ;
VL : '|' ;
VLVL : '||' ;
RC : '}' ;
TI : '~' ;
TIAM : '~&' ;
TICA : '~^' ;
TIVL : '~|' ;
DECIMAL_NUMBER : UNSIGNED_NUMBER | SIZE? DECIMAL_BASE UNSIGNED_NUMBER | SIZE? DECIMAL_BASE X_DIGIT ( '_' )* | SIZE? DECIMAL_BASE Z_DIGIT ( '_' )* ;
BINARY_NUMBER : SIZE? BINARY_BASE BINARY_VALUE ;
OCTAL_NUMBER : SIZE? OCTAL_BASE OCTAL_VALUE ;
HEX_NUMBER : SIZE? HEX_BASE HEX_VALUE ;
fragment SIGN : [+-] ;
fragment SIZE : NON_ZERO_UNSIGNED_NUMBER ;
fragment NON_ZERO_UNSIGNED_NUMBER : NON_ZERO_DECIMAL_DIGIT ( '_' | DECIMAL_DIGIT )* ;
REAL_NUMBER : UNSIGNED_NUMBER '.' UNSIGNED_NUMBER | UNSIGNED_NUMBER ( '.' UNSIGNED_NUMBER )? EXP SIGN? UNSIGNED_NUMBER ;
fragment EXP : [eE] ;
fragment UNSIGNED_NUMBER : DECIMAL_DIGIT ( '_' | DECIMAL_DIGIT )* ;
fragment BINARY_VALUE : BINARY_DIGIT ( '_' | BINARY_DIGIT )* ;
fragment OCTAL_VALUE : OCTAL_DIGIT ( '_' | OCTAL_DIGIT )* ;
fragment HEX_VALUE : HEX_DIGIT ( '_' | HEX_DIGIT )* ;
fragment DECIMAL_BASE : '\'' [sS]? [dD] ;
fragment BINARY_BASE : '\'' [sS]? [bB] ;
fragment OCTAL_BASE : '\'' [sS]? [oO] ;
fragment HEX_BASE : '\'' [sS]? [hH] ;
fragment NON_ZERO_DECIMAL_DIGIT : [1-9] ;
fragment DECIMAL_DIGIT : [0-9] ;
fragment BINARY_DIGIT : [01] | X_DIGIT | Z_DIGIT ;
fragment OCTAL_DIGIT : [0-7] | X_DIGIT | Z_DIGIT ;
fragment HEX_DIGIT : [0-9a-fA-F] | X_DIGIT | Z_DIGIT ;
fragment X_DIGIT : [xX] ;
fragment Z_DIGIT : [zZ?] ;
STRING : '"' ( ~["\\] | '\\' . )* '"' ;
COMMENT : ( ONE_LINE_COMMENT | BLOCK_COMMENT ) -> channel(COMMENTS) ;
fragment ONE_LINE_COMMENT : '//' COMMENT_TEXT '\r'? '\n' ;
fragment BLOCK_COMMENT : '/*' COMMENT_TEXT '*/' ;
fragment COMMENT_TEXT : ASCII_ANY*? ;
ESCAPED_IDENTIFIER : '\\' ASCII_PRINTABLE_EXCEPT_SPACE* WHITE_SPACE ;
SIMPLE_IDENTIFIER : [a-zA-Z_] [a-zA-Z0-9_$]* ;
SYSTEM_TF_IDENTIFIER : '$' [a-zA-Z0-9_$][a-zA-Z0-9_$]* ;
WHITE_SPACE : [ \t\r\n]+ -> channel(HIDDEN) ;
fragment ASCII_ANY : [\u0000-\u007f] ;
fragment ASCII_PRINTABLE : [\u0020-\u007e] ;
fragment ASCII_PRINTABLE_EXCEPT_SPACE : [\u0021-\u007e] ;
// TODO: define new modes to handle the following rules
FILE_PATH_SPEC : './' ASCII_PRINTABLE* ( '.v' | '.vh' ) ; // TODO: remove path name limitations
INIT_VAL : '1\'' [bB][01xX] | [01] ;
OUTPUT_SYMBOL : [01xX] ;
LEVEL_SYMBOL : [01xX?bB] ;
EDGE_SYMBOL : [rRfFpPnN*] ;
EDGE_DESCRIPTOR : '01' | '10' | [zZxX][01] | [01][zZxX] ;
SCALAR_CONSTANT : ( '1'? '\'' [bB] )? [01] ;
mode DIRECTIVE_MODE;
BEGIN_KEYWORDS_DIRECTIVE : 'begin_keywords' -> channel(DIRECTIVES), mode(DIRECTIVE_TEXT_MODE) ;
CELLDEFINE_DIRECTIVE : 'celldefine' -> channel(DIRECTIVES), popMode ;
DEFAULT_NETTYPE_DIRECTIVE : 'default_nettype' -> channel(DIRECTIVES), mode(DIRECTIVE_TEXT_MODE) ;
DEFINE_DIRECTIVE : 'define' -> channel(DIRECTIVES), mode(DEFINE_DIRECTIVE_MODE) ;
ELSE_DIRECTIVE : 'else' -> channel(DIRECTIVES), popMode, mode(SOURCE_TEXT_MODE) ;
ELSIF_DIRECTIVE : 'elsif' -> channel(DIRECTIVES), popMode, mode(ELSIF_DIRECTIVE_MODE) ;
END_KEYWORDS_DIRECTIVE : 'end_keywords' -> channel(DIRECTIVES), popMode ;
ENDCELLDEFINE_DIRECTIVE : 'endcelldefine' -> channel(DIRECTIVES), popMode ;
ENDIF_DIRECTIVE : 'endif' -> channel(DIRECTIVES), popMode, popMode, popMode ;
IFDEF_DIRECTIVE : 'ifdef' -> channel(DIRECTIVES), mode(IFDEF_DIRECTIVE_MODE) ;
IFNDEF_DIRECTIVE : 'ifndef' -> channel(DIRECTIVES), mode(IFDEF_DIRECTIVE_MODE) ;
INCLUDE_DIRECTIVE : 'include' -> channel(DIRECTIVES), mode(DIRECTIVE_TEXT_MODE) ;
LINE_DIRECTIVE : 'line' -> channel(DIRECTIVES), mode(DIRECTIVE_TEXT_MODE) ;
NOUNCONNECTED_DRIVE_DIRECTIVE : 'nounconnected_drive' -> channel(DIRECTIVES), popMode ;
PRAGMA_DIRECTIVE : 'pragma' -> channel(DIRECTIVES), mode(DIRECTIVE_TEXT_MODE) ;
RESETALL_DIRECTIVE : 'resetall' -> channel(DIRECTIVES), popMode ;
TIMESCALE_DIRECTIVE : 'timescale' -> channel(DIRECTIVES), mode(DIRECTIVE_TEXT_MODE) ;
UNCONNECTED_DRIVE_DIRECTIVE : 'unconnected_drive' -> channel(DIRECTIVES), mode(DIRECTIVE_TEXT_MODE) ;
UNDEF_DIRECTIVE : 'undef' -> channel(DIRECTIVES), mode(UNDEF_DIRECTIVE_MODE) ;
DIRECTIVE_IDENTIFIER : ( DIRECTIVE_ESCAPED_IDENTIFIER | DIRECTIVE_SIMPLE_IDENTIFIER ) -> channel(DIRECTIVES), mode(MACRO_USAGE_MODE) ;
fragment DIRECTIVE_ESCAPED_IDENTIFIER : '\\' ASCII_PRINTABLE_EXCEPT_SPACE* WHITE_SPACE ;
fragment DIRECTIVE_SIMPLE_IDENTIFIER : [a-zA-Z_] [a-zA-Z0-9_$]* ;
mode DIRECTIVE_TEXT_MODE;
DIRECTIVE_TEXT : ASCII_ANY*? '\r'? '\n' -> channel(DIRECTIVES), popMode ;
mode DEFINE_DIRECTIVE_MODE;
DD_IDENTIFIER : ( DIRECTIVE_ESCAPED_IDENTIFIER | DIRECTIVE_SIMPLE_IDENTIFIER ) -> channel(DIRECTIVES), type(DIRECTIVE_IDENTIFIER), mode(MACRO_TEXT_MODE) ;
DIRECTIVE_COMMENT : ( ONE_LINE_COMMENT | BLOCK_COMMENT ) -> channel(COMMENTS) ;
DIRECTIVE_WHITE_SPACE : [ \t]+ -> channel(HIDDEN) ;
DIRECTIVE_NEWLINE : '\r'? '\n' -> channel(HIDDEN) ;
mode MACRO_TEXT_MODE;
MACRO_TEXT : ~[\r\n\\]+ -> channel(DIRECTIVES) ;
MT_ESC_NEWLINE : '\\' '\r'? '\n' -> channel(HIDDEN) ;
MT_ESC_SEQ : '\\' . -> channel(DIRECTIVES), type(MACRO_TEXT) ;
MT_NEWLINE : '\r'? '\n' -> channel(HIDDEN), type(DIRECTIVE_NEWLINE), popMode ;
mode UNDEF_DIRECTIVE_MODE;
UD_IDENTIFIER : ( DIRECTIVE_ESCAPED_IDENTIFIER | DIRECTIVE_SIMPLE_IDENTIFIER ) -> channel(DIRECTIVES), type(DIRECTIVE_IDENTIFIER), popMode ;
UD_COMMENT : ( ONE_LINE_COMMENT | BLOCK_COMMENT ) -> channel(COMMENTS), type(DIRECTIVE_COMMENT) ;
UD_WHITE_SPACE : [ \t]+ -> channel(HIDDEN), type(DIRECTIVE_WHITE_SPACE) ;
UD_NEWLINE : '\r'? '\n' -> channel(HIDDEN), type(DIRECTIVE_NEWLINE) ;
mode MACRO_USAGE_MODE;
MACRO_ARGS : '(' ( MACRO_ARGS | . )*? ')' -> channel(DIRECTIVES), popMode ;
MU_COMMENT : ( ONE_LINE_COMMENT | BLOCK_COMMENT ) -> channel(COMMENTS), type(DIRECTIVE_COMMENT) ;
MU_WHITE_SPACE : [ \t]+ -> channel(HIDDEN), type(DIRECTIVE_WHITE_SPACE) ;
MU_NEWLINE : '\r'? '\n' -> channel(HIDDEN), type(DIRECTIVE_NEWLINE), popMode ;
MU_OTHER : . -> more, popMode ; // TODO: do not use 'more' and do not consume the token
mode IFDEF_DIRECTIVE_MODE;
ID_IDENTIFIER : ( DIRECTIVE_ESCAPED_IDENTIFIER | DIRECTIVE_SIMPLE_IDENTIFIER ) -> channel(DIRECTIVES), type(DIRECTIVE_IDENTIFIER), pushMode(SOURCE_TEXT_MODE) ;
ID_COMMENT : ( ONE_LINE_COMMENT | BLOCK_COMMENT ) -> channel(COMMENTS), type(DIRECTIVE_COMMENT) ;
ID_WHITE_SPACE : [ \t]+ -> channel(HIDDEN), type(DIRECTIVE_WHITE_SPACE) ;
ID_NEWLINE : '\r'? '\n' -> channel(HIDDEN), type(DIRECTIVE_NEWLINE) ;
mode ELSIF_DIRECTIVE_MODE;
ED_IDENTIFIER : ( DIRECTIVE_ESCAPED_IDENTIFIER | DIRECTIVE_SIMPLE_IDENTIFIER ) -> channel(DIRECTIVES), type(DIRECTIVE_IDENTIFIER), mode(SOURCE_TEXT_MODE) ;
ED_COMMENT : ( ONE_LINE_COMMENT | BLOCK_COMMENT ) -> channel(COMMENTS), type(DIRECTIVE_COMMENT) ;
ED_WHITE_SPACE : [ \t]+ -> channel(HIDDEN), type(DIRECTIVE_WHITE_SPACE) ;
ED_NEWLINE : '\r'? '\n' -> channel(HIDDEN), type(DIRECTIVE_NEWLINE) ;
mode SOURCE_TEXT_MODE;
SOURCE_TEXT : ~'`'+ -> channel(DIRECTIVES) ;
STGA : '`' -> channel(DIRECTIVES), type(GA), pushMode(DIRECTIVE_MODE) ;
