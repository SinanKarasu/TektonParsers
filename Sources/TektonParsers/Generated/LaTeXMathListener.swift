// Generated from /Volumes/GitHubDeveloper/Packages/TektonParsers/Grammar/LaTeXMath.g4 by ANTLR 4.13.2
@preconcurrency import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link LaTeXMathParser}.
 */
public protocol LaTeXMathListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#prog}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProg(_ ctx: LaTeXMathParser.ProgContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#prog}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProg(_ ctx: LaTeXMathParser.ProgContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpr(_ ctx: LaTeXMathParser.ExprContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpr(_ ctx: LaTeXMathParser.ExprContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#addExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAddExpr(_ ctx: LaTeXMathParser.AddExprContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#addExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAddExpr(_ ctx: LaTeXMathParser.AddExprContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#mulExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMulExpr(_ ctx: LaTeXMathParser.MulExprContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#mulExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMulExpr(_ ctx: LaTeXMathParser.MulExprContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#unaryExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnaryExpr(_ ctx: LaTeXMathParser.UnaryExprContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#unaryExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnaryExpr(_ ctx: LaTeXMathParser.UnaryExprContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#powExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPowExpr(_ ctx: LaTeXMathParser.PowExprContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#powExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPowExpr(_ ctx: LaTeXMathParser.PowExprContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#postfix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPostfix(_ ctx: LaTeXMathParser.PostfixContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#postfix}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPostfix(_ ctx: LaTeXMathParser.PostfixContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#scripts}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterScripts(_ ctx: LaTeXMathParser.ScriptsContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#scripts}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitScripts(_ ctx: LaTeXMathParser.ScriptsContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#group}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGroup(_ ctx: LaTeXMathParser.GroupContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#group}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGroup(_ ctx: LaTeXMathParser.GroupContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#primary}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrimary(_ ctx: LaTeXMathParser.PrimaryContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#primary}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrimary(_ ctx: LaTeXMathParser.PrimaryContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#frac}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFrac(_ ctx: LaTeXMathParser.FracContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#frac}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFrac(_ ctx: LaTeXMathParser.FracContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#nabla}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNabla(_ ctx: LaTeXMathParser.NablaContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#nabla}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNabla(_ ctx: LaTeXMathParser.NablaContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#partial}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartial(_ ctx: LaTeXMathParser.PartialContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#partial}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartial(_ ctx: LaTeXMathParser.PartialContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#greek}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGreek(_ ctx: LaTeXMathParser.GreekContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#greek}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGreek(_ ctx: LaTeXMathParser.GreekContext)
	/**
	 * Enter a parse tree produced by {@link LaTeXMathParser#arg}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArg(_ ctx: LaTeXMathParser.ArgContext)
	/**
	 * Exit a parse tree produced by {@link LaTeXMathParser#arg}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArg(_ ctx: LaTeXMathParser.ArgContext)
}