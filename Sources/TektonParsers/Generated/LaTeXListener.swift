// Generated from /Volumes/GitHubDeveloper/Packages/TektonParsers/Grammar/LaTeX.g4 by ANTLR 4.13.2
@preconcurrency import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link LaTeXParser}.
 */
public protocol LaTeXListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#math}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMath(_ ctx: LaTeXParser.MathContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#math}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMath(_ ctx: LaTeXParser.MathContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#relation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRelation(_ ctx: LaTeXParser.RelationContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#relation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRelation(_ ctx: LaTeXParser.RelationContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#equality}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEquality(_ ctx: LaTeXParser.EqualityContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#equality}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEquality(_ ctx: LaTeXParser.EqualityContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpr(_ ctx: LaTeXParser.ExprContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpr(_ ctx: LaTeXParser.ExprContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#additive}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAdditive(_ ctx: LaTeXParser.AdditiveContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#additive}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAdditive(_ ctx: LaTeXParser.AdditiveContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#mp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMp(_ ctx: LaTeXParser.MpContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#mp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMp(_ ctx: LaTeXParser.MpContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#mp_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMp_nofunc(_ ctx: LaTeXParser.Mp_nofuncContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#mp_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMp_nofunc(_ ctx: LaTeXParser.Mp_nofuncContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#unary}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnary(_ ctx: LaTeXParser.UnaryContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#unary}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnary(_ ctx: LaTeXParser.UnaryContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#unary_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnary_nofunc(_ ctx: LaTeXParser.Unary_nofuncContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#unary_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnary_nofunc(_ ctx: LaTeXParser.Unary_nofuncContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#postfix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPostfix(_ ctx: LaTeXParser.PostfixContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#postfix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPostfix(_ ctx: LaTeXParser.PostfixContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#postfix_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPostfix_nofunc(_ ctx: LaTeXParser.Postfix_nofuncContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#postfix_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPostfix_nofunc(_ ctx: LaTeXParser.Postfix_nofuncContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#postfix_op}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPostfix_op(_ ctx: LaTeXParser.Postfix_opContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#postfix_op}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPostfix_op(_ ctx: LaTeXParser.Postfix_opContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#eval_at}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEval_at(_ ctx: LaTeXParser.Eval_atContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#eval_at}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEval_at(_ ctx: LaTeXParser.Eval_atContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#eval_at_sub}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEval_at_sub(_ ctx: LaTeXParser.Eval_at_subContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#eval_at_sub}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEval_at_sub(_ ctx: LaTeXParser.Eval_at_subContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#eval_at_sup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEval_at_sup(_ ctx: LaTeXParser.Eval_at_supContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#eval_at_sup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEval_at_sup(_ ctx: LaTeXParser.Eval_at_supContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExp(_ ctx: LaTeXParser.ExpContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExp(_ ctx: LaTeXParser.ExpContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#exp_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExp_nofunc(_ ctx: LaTeXParser.Exp_nofuncContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#exp_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExp_nofunc(_ ctx: LaTeXParser.Exp_nofuncContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#comp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterComp(_ ctx: LaTeXParser.CompContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#comp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitComp(_ ctx: LaTeXParser.CompContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#comp_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterComp_nofunc(_ ctx: LaTeXParser.Comp_nofuncContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#comp_nofunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitComp_nofunc(_ ctx: LaTeXParser.Comp_nofuncContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#group}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGroup(_ ctx: LaTeXParser.GroupContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#group}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGroup(_ ctx: LaTeXParser.GroupContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#abs_group}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAbs_group(_ ctx: LaTeXParser.Abs_groupContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#abs_group}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAbs_group(_ ctx: LaTeXParser.Abs_groupContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#number}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNumber(_ ctx: LaTeXParser.NumberContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#number}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNumber(_ ctx: LaTeXParser.NumberContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#atom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAtom(_ ctx: LaTeXParser.AtomContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#atom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAtom(_ ctx: LaTeXParser.AtomContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#bra}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBra(_ ctx: LaTeXParser.BraContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#bra}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBra(_ ctx: LaTeXParser.BraContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#ket}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterKet(_ ctx: LaTeXParser.KetContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#ket}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitKet(_ ctx: LaTeXParser.KetContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#mathit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMathit(_ ctx: LaTeXParser.MathitContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#mathit}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMathit(_ ctx: LaTeXParser.MathitContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#mathit_text}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMathit_text(_ ctx: LaTeXParser.Mathit_textContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#mathit_text}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMathit_text(_ ctx: LaTeXParser.Mathit_textContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#frac}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFrac(_ ctx: LaTeXParser.FracContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#frac}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFrac(_ ctx: LaTeXParser.FracContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#binom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBinom(_ ctx: LaTeXParser.BinomContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#binom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBinom(_ ctx: LaTeXParser.BinomContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#floor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFloor(_ ctx: LaTeXParser.FloorContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#floor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFloor(_ ctx: LaTeXParser.FloorContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#ceil}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCeil(_ ctx: LaTeXParser.CeilContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#ceil}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCeil(_ ctx: LaTeXParser.CeilContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#func_normal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunc_normal(_ ctx: LaTeXParser.Func_normalContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#func_normal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunc_normal(_ ctx: LaTeXParser.Func_normalContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#func}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunc(_ ctx: LaTeXParser.FuncContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#func}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunc(_ ctx: LaTeXParser.FuncContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#args}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArgs(_ ctx: LaTeXParser.ArgsContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#args}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArgs(_ ctx: LaTeXParser.ArgsContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#limit_sub}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLimit_sub(_ ctx: LaTeXParser.Limit_subContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#limit_sub}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLimit_sub(_ ctx: LaTeXParser.Limit_subContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#func_arg}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunc_arg(_ ctx: LaTeXParser.Func_argContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#func_arg}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunc_arg(_ ctx: LaTeXParser.Func_argContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#func_arg_noparens}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunc_arg_noparens(_ ctx: LaTeXParser.Func_arg_noparensContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#func_arg_noparens}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunc_arg_noparens(_ ctx: LaTeXParser.Func_arg_noparensContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#subexpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubexpr(_ ctx: LaTeXParser.SubexprContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#subexpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubexpr(_ ctx: LaTeXParser.SubexprContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#supexpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSupexpr(_ ctx: LaTeXParser.SupexprContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#supexpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSupexpr(_ ctx: LaTeXParser.SupexprContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#subeq}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubeq(_ ctx: LaTeXParser.SubeqContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#subeq}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubeq(_ ctx: LaTeXParser.SubeqContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXParser#supeq}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSupeq(_ ctx: LaTeXParser.SupeqContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXParser#supeq}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSupeq(_ ctx: LaTeXParser.SupeqContext)
}