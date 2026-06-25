grammar LaTeXMathExperimental;

// =========================================================================
// PARSER RULES
// =========================================================================

// Root entry point
prog : expr EOF ;

// Expression Precedence Hierarchy (Lowest to Highest)
expr      : addExpr ;
addExpr   : mulExpr (('+' | '-') mulExpr)* ;
mulExpr   : unaryExpr (MULOP? unaryExpr)* ;  // Juxtaposition handled as implicit mult
unaryExpr : ('+' | '-') unaryExpr | powExpr ;
powExpr   : indexable ( '^' primary )? ;     // Separates algebraic powers from tensor components

// A base atom followed by an arbitrary stream of tensor sub/superscripts
indexable : primary tensorIndices? ;

// Supports multi-index layouts, gaps, and interleaving (e.g., R_i^j_k)
tensorIndices : ( subScript | superScript )+ ;
subScript     : '_' group ;
superScript   : '^' group ;

group
  : '(' expr ')'

  | '[' expr ']'
  | '{' expr '}'
  | '\\{' expr '\\}'
  ;

primary
  : NUMBER

  | ID
  | greek
  | CMD_FUNC arg

  | operatorExpr   // Explicit operator-target grouping to bypass juxtaposition
  | frac
  | '(' expr ')'

  | '{' expr '}'   // Explicitly grouped atom
  ;

// Explicit operator grouping (e.g., \partial_{i} \phi or \nabla^k \psi)
operatorExpr
  : ( CMD_PARTIAL | CMD_NABLA ) tensorIndices? primary 
  ;

frac : CMD_FRAC '{' expr '}' '{' expr '}' ;

greek : CMD_GREEK ;

arg : '{' expr '}' | '(' expr ')' ;


// =========================================================================
// LEXER RULES
// =========================================================================

// Specific LaTeX Math Commands
CMD_FRAC    : '\\frac' ;
CMD_NABLA   : '\\nabla' ;
CMD_PARTIAL : '\\partial' ;
CMD_TIMES   : '\\times' ;
CMD_DOT     : '\\cdot' ;

// Explicit Greek alphabet capturing
CMD_GREEK   : '\\' ('alpha'|'beta'|'gamma'|'Gamma'|'delta'|'Delta'|'epsilon'|'zeta'|'eta'|'theta'|'Theta'

                  |'iota'|'kappa'|'lambda'|'Lambda'|'mu'|'nu'|'xi'|'Xi'|'pi'|'Pi'|'rho'|'sigma'|'Sigma'
                  |'tau'|'upsilon'|'Upsilon'|'phi'|'Phi'|'chi'|'psi'|'Psi'|'omega'|'Omega') ;

// Catch-all for standard trigonometric/algebraic functions
CMD_FUNC    : '\\' [a-zA-Z]+ ;

MULOP       : '*' | '/' | CMD_DOT | CMD_TIMES ;

ID          : [a-zA-Z_] [a-zA-Z_0-9]* ;
NUMBER      : [0-9]+ ('.' [0-9]+)? ([eE] [+-]? [0-9]+)? ;

// Channels and skipped tokens
WS          : [ \t\r\n]+ -> skip ;
SPCMD       : ('\\,' | '\\;' | '\\!' | '\\:') -> skip ;
CMD_LEFT    : '\\left'  -> skip ;
CMD_RIGHT   : '\\right' -> skip ;
