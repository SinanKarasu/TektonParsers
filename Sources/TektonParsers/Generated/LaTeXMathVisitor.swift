// Generated from /Volumes/GitHubDeveloper/Packages/TektonParsers/Grammar/LaTeXMath.g4 by ANTLR 4.13.2
@preconcurrency import Antlr4

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link LaTeXMathParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
open class LaTeXMathVisitor<T>: ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#prog}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitProg(_ ctx: LaTeXMathParser.ProgContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitExpr(_ ctx: LaTeXMathParser.ExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#addExpr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitAddExpr(_ ctx: LaTeXMathParser.AddExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#mulExpr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitMulExpr(_ ctx: LaTeXMathParser.MulExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#unaryExpr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitUnaryExpr(_ ctx: LaTeXMathParser.UnaryExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#powExpr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPowExpr(_ ctx: LaTeXMathParser.PowExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#postfix}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPostfix(_ ctx: LaTeXMathParser.PostfixContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#scripts}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitScripts(_ ctx: LaTeXMathParser.ScriptsContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#group}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitGroup(_ ctx: LaTeXMathParser.GroupContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#primary}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPrimary(_ ctx: LaTeXMathParser.PrimaryContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#frac}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitFrac(_ ctx: LaTeXMathParser.FracContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#nabla}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNabla(_ ctx: LaTeXMathParser.NablaContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#partial}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPartial(_ ctx: LaTeXMathParser.PartialContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#greek}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitGreek(_ ctx: LaTeXMathParser.GreekContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link LaTeXMathParser#arg}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitArg(_ ctx: LaTeXMathParser.ArgContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

}