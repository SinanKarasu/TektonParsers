grammar LaTeXMath;

// entry
prog  : expr EOF ;

// precedence (lowest -> highest):
// +,-  ;  multiplication/implicit  ;  unary sign  ;  ^  ;  postfix(scripts)  ;  primary
expr      : addExpr ;
addExpr   : mulExpr (('+'|'-') mulExpr)* ;
mulExpr   : unaryExpr ((MULOP? unaryExpr))* ;       // MULOP optional ≈ implicit mult
unaryExpr : ('+'|'-') unaryExpr | powExpr ;
powExpr   : postfix ( '^' powExpr )? ;              // right-assoc
postfix   : primary scripts? ;                      // x^i_j or x_j^i (either order)

scripts
  : ( '^' group ('_' group)? )                      // ^ then optional _
  | ( '_' group ('^' group)? )                      // _ then optional ^
  ;

group:
	'(' expr ')'
	| '[' expr ']'
	| '{' expr '}'
	| '\\{' expr '\\}';

primary
  : NUMBER
  | ID
  | greek                                          // \alpha, \beta, ...
  | CMD_FUNC arg                                   // \sin{x} or \sin(x)
  | nabla                                          // \nabla_{i}  (argument handled as juxtaposition)
  | partial                                        // \partial_{i}
  | frac                                           // \frac{a}{b}
  | '(' expr ')'
  | '{' expr '}'                                   // grouped atom
  ;

frac      : CMD_FRAC '{' expr '}' '{' expr '}' ;
nabla     : CMD_NABLA scripts? ;
partial   : CMD_PARTIAL scripts? ;
greek     : CMD_GREEK ;

arg       : '{' expr '}' | '(' expr ')' ;

// ---------- LEXER ----------

// specific commands first (longest wins)
CMD_FRAC    : '\\frac' ;
CMD_NABLA   : '\\nabla' ;
CMD_PARTIAL : '\\partial' ;
CMD_LEFT    : '\\left'  -> skip ;
CMD_RIGHT   : '\\right' -> skip ;
CMD_TIMES   : '\\times' ;
CMD_DOT     : '\\cdot' ;

// greek/control words must come before CMD_FUNC to win same-length matches.
CMD_GREEK   : '\\' ('alpha'|'beta'|'gamma'|'Gamma'|'delta'|'Delta'|'epsilon'|'zeta'|'eta'|'theta'|'Theta'
                  |'iota'|'kappa'|'lambda'|'Lambda'|'mu'|'nu'|'xi'|'Xi'|'pi'|'Pi'|'rho'|'sigma'|'Sigma'
                  |'tau'|'upsilon'|'Upsilon'|'phi'|'Phi'|'chi'|'psi'|'Psi'|'omega'|'Omega') ;

// generic control word (functions like \sin, \cos, \Gamma etc.)
CMD_FUNC    : '\\' [a-zA-Z]+ ;

MULOP       : '*' | '/' | CMD_DOT | CMD_TIMES ;

ID          : [a-zA-Z_] [a-zA-Z_0-9]* ;
NUMBER      : [0-9]+ ('.' [0-9]+)? ([eE] [+-]? [0-9]+)? ;

WS          : [ \t\r\n]+ -> skip ;

// allow LaTeX spacing commands to be ignored if they sneak in
SPCMD       : ('\\,' | '\\;' | '\\!' | '\\:') -> skip ;
