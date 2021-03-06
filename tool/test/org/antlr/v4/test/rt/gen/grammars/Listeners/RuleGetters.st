grammar <grammarName>;
@parser::header {
<ImportListener(grammarName)>
}

@parser::members {
<RuleGetterListener(grammarName)>
}

s
@after {
<ToStringTree("$ctx.r"):writeln()>
<WalkListener("$ctx.r")>
}
  : r=a ;
a : b b		// forces list
  | b		// a list still
  ;
b : ID | INT;
MULT: '*' ;
ADD : '+' ;
INT : [0-9]+ ;
ID  : [a-z]+ ;
WS : [ \t\n]+ -> skip ;
