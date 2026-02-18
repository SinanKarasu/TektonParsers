// Generated from /Volumes/GitHubDeveloper/Projects/TektonParsers/Grammar/LaTeX.g4 by ANTLR 4.13.2
@preconcurrency import Antlr4

open class LaTeXParser: Parser {

	internal static let _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = LaTeXParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(LaTeXParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, WS = 3, THINSPACE = 4, MEDSPACE = 5, 
                 THICKSPACE = 6, QUAD = 7, QQUAD = 8, NEGTHINSPACE = 9, 
                 NEGMEDSPACE = 10, NEGTHICKSPACE = 11, CMD_LEFT = 12, CMD_RIGHT = 13, 
                 IGNORE = 14, ADD = 15, SUB = 16, MUL = 17, DIV = 18, L_PAREN = 19, 
                 R_PAREN = 20, L_BRACE = 21, R_BRACE = 22, L_BRACE_LITERAL = 23, 
                 R_BRACE_LITERAL = 24, L_BRACKET = 25, R_BRACKET = 26, BAR = 27, 
                 R_BAR = 28, L_BAR = 29, L_ANGLE = 30, R_ANGLE = 31, FUNC_LIM = 32, 
                 LIM_APPROACH_SYM = 33, FUNC_INT = 34, FUNC_SUM = 35, FUNC_PROD = 36, 
                 FUNC_EXP = 37, FUNC_LOG = 38, FUNC_LG = 39, FUNC_LN = 40, 
                 FUNC_SIN = 41, FUNC_COS = 42, FUNC_TAN = 43, FUNC_CSC = 44, 
                 FUNC_SEC = 45, FUNC_COT = 46, FUNC_ARCSIN = 47, FUNC_ARCCOS = 48, 
                 FUNC_ARCTAN = 49, FUNC_ARCCSC = 50, FUNC_ARCSEC = 51, FUNC_ARCCOT = 52, 
                 FUNC_SINH = 53, FUNC_COSH = 54, FUNC_TANH = 55, FUNC_ARSINH = 56, 
                 FUNC_ARCOSH = 57, FUNC_ARTANH = 58, L_FLOOR = 59, R_FLOOR = 60, 
                 L_CEIL = 61, R_CEIL = 62, FUNC_SQRT = 63, FUNC_OVERLINE = 64, 
                 CMD_TIMES = 65, CMD_CDOT = 66, CMD_DIV = 67, CMD_FRAC = 68, 
                 CMD_BINOM = 69, CMD_DBINOM = 70, CMD_TBINOM = 71, CMD_MATHIT = 72, 
                 UNDERSCORE = 73, CARET = 74, COLON = 75, DIFFERENTIAL = 76, 
                 LETTER = 77, DIGIT = 78, EQUAL = 79, NEQ = 80, LT = 81, 
                 LTE = 82, LTE_Q = 83, LTE_S = 84, GT = 85, GTE = 86, GTE_Q = 87, 
                 GTE_S = 88, BANG = 89, SINGLE_QUOTES = 90, SYMBOL = 91
	}

	public
	static let RULE_math = 0, RULE_relation = 1, RULE_equality = 2, RULE_expr = 3, 
            RULE_additive = 4, RULE_mp = 5, RULE_mp_nofunc = 6, RULE_unary = 7, 
            RULE_unary_nofunc = 8, RULE_postfix = 9, RULE_postfix_nofunc = 10, 
            RULE_postfix_op = 11, RULE_eval_at = 12, RULE_eval_at_sub = 13, 
            RULE_eval_at_sup = 14, RULE_exp = 15, RULE_exp_nofunc = 16, 
            RULE_comp = 17, RULE_comp_nofunc = 18, RULE_group = 19, RULE_abs_group = 20, 
            RULE_number = 21, RULE_atom = 22, RULE_bra = 23, RULE_ket = 24, 
            RULE_mathit = 25, RULE_mathit_text = 26, RULE_frac = 27, RULE_binom = 28, 
            RULE_floor = 29, RULE_ceil = 30, RULE_func_normal = 31, RULE_func = 32, 
            RULE_args = 33, RULE_limit_sub = 34, RULE_func_arg = 35, RULE_func_arg_noparens = 36, 
            RULE_subexpr = 37, RULE_supexpr = 38, RULE_subeq = 39, RULE_supeq = 40

	public
	static let ruleNames: [String] = [
		"math", "relation", "equality", "expr", "additive", "mp", "mp_nofunc", 
		"unary", "unary_nofunc", "postfix", "postfix_nofunc", "postfix_op", "eval_at", 
		"eval_at_sub", "eval_at_sup", "exp", "exp_nofunc", "comp", "comp_nofunc", 
		"group", "abs_group", "number", "atom", "bra", "ket", "mathit", "mathit_text", 
		"frac", "binom", "floor", "ceil", "func_normal", "func", "args", "limit_sub", 
		"func_arg", "func_arg_noparens", "subexpr", "supexpr", "subeq", "supeq"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "','", "'.'", nil, nil, nil, nil, "'\\quad'", "'\\qquad'", nil, "'\\negmedspace'", 
		"'\\negthickspace'", "'\\left'", "'\\right'", nil, "'+'", "'-'", "'*'", 
		"'/'", "'('", "')'", "'{'", "'}'", "'\\{'", "'\\}'", "'['", "']'", "'|'", 
		"'\\right|'", "'\\left|'", "'\\langle'", "'\\rangle'", "'\\lim'", nil, 
		nil, "'\\sum'", "'\\prod'", "'\\exp'", "'\\log'", "'\\lg'", "'\\ln'", 
		"'\\sin'", "'\\cos'", "'\\tan'", "'\\csc'", "'\\sec'", "'\\cot'", "'\\arcsin'", 
		"'\\arccos'", "'\\arctan'", "'\\arccsc'", "'\\arcsec'", "'\\arccot'", 
		"'\\sinh'", "'\\cosh'", "'\\tanh'", "'\\arsinh'", "'\\arcosh'", "'\\artanh'", 
		"'\\lfloor'", "'\\rfloor'", "'\\lceil'", "'\\rceil'", "'\\sqrt'", "'\\overline'", 
		"'\\times'", "'\\cdot'", "'\\div'", nil, "'\\binom'", "'\\dbinom'", "'\\tbinom'", 
		"'\\mathit'", "'_'", "'^'", "':'", nil, nil, nil, nil, "'\\neq'", "'<'", 
		nil, "'\\leqq'", "'\\leqslant'", "'>'", nil, "'\\geqq'", "'\\geqslant'", 
		"'!'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, "WS", "THINSPACE", "MEDSPACE", "THICKSPACE", "QUAD", "QQUAD", 
		"NEGTHINSPACE", "NEGMEDSPACE", "NEGTHICKSPACE", "CMD_LEFT", "CMD_RIGHT", 
		"IGNORE", "ADD", "SUB", "MUL", "DIV", "L_PAREN", "R_PAREN", "L_BRACE", 
		"R_BRACE", "L_BRACE_LITERAL", "R_BRACE_LITERAL", "L_BRACKET", "R_BRACKET", 
		"BAR", "R_BAR", "L_BAR", "L_ANGLE", "R_ANGLE", "FUNC_LIM", "LIM_APPROACH_SYM", 
		"FUNC_INT", "FUNC_SUM", "FUNC_PROD", "FUNC_EXP", "FUNC_LOG", "FUNC_LG", 
		"FUNC_LN", "FUNC_SIN", "FUNC_COS", "FUNC_TAN", "FUNC_CSC", "FUNC_SEC", 
		"FUNC_COT", "FUNC_ARCSIN", "FUNC_ARCCOS", "FUNC_ARCTAN", "FUNC_ARCCSC", 
		"FUNC_ARCSEC", "FUNC_ARCCOT", "FUNC_SINH", "FUNC_COSH", "FUNC_TANH", "FUNC_ARSINH", 
		"FUNC_ARCOSH", "FUNC_ARTANH", "L_FLOOR", "R_FLOOR", "L_CEIL", "R_CEIL", 
		"FUNC_SQRT", "FUNC_OVERLINE", "CMD_TIMES", "CMD_CDOT", "CMD_DIV", "CMD_FRAC", 
		"CMD_BINOM", "CMD_DBINOM", "CMD_TBINOM", "CMD_MATHIT", "UNDERSCORE", "CARET", 
		"COLON", "DIFFERENTIAL", "LETTER", "DIGIT", "EQUAL", "NEQ", "LT", "LTE", 
		"LTE_Q", "LTE_S", "GT", "GTE", "GTE_Q", "GTE_S", "BANG", "SINGLE_QUOTES", 
		"SYMBOL"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "LaTeX.g4" }

	override open
	func getRuleNames() -> [String] { return LaTeXParser.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return LaTeXParser._serializedATN }

	override open
	func getATN() -> ATN { return LaTeXParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return LaTeXParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.13.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,LaTeXParser._ATN,LaTeXParser._decisionToDFA, LaTeXParser._sharedContextCache)
	}


	public class MathContext: ParserRuleContext {
			open
			func relation() -> RelationContext? {
				return getRuleContext(RelationContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_math
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterMath(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitMath(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitMath(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitMath(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func math() throws -> MathContext {
		var _localctx: MathContext
		_localctx = MathContext(_ctx, getState())
		try enterRule(_localctx, 0, LaTeXParser.RULE_math)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(82)
		 	try relation(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class RelationContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func relation() -> [RelationContext] {
				return getRuleContexts(RelationContext.self)
			}
			open
			func relation(_ i: Int) -> RelationContext? {
				return getRuleContext(RelationContext.self, i)
			}
			open
			func EQUAL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.EQUAL.rawValue, 0)
			}
			open
			func LT() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.LT.rawValue, 0)
			}
			open
			func LTE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.LTE.rawValue, 0)
			}
			open
			func GT() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.GT.rawValue, 0)
			}
			open
			func GTE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.GTE.rawValue, 0)
			}
			open
			func NEQ() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.NEQ.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_relation
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterRelation(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitRelation(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitRelation(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitRelation(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func relation( ) throws -> RelationContext   {
		return try relation(0)
	}
	@discardableResult
	private func relation(_ _p: Int) throws -> RelationContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: RelationContext
		_localctx = RelationContext(_ctx, _parentState)
		var _prevctx: RelationContext = _localctx
		let _startState: Int = 2
		try enterRecursionRule(_localctx, 2, LaTeXParser.RULE_relation, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(85)
			try expr()

			_ctx!.stop = try _input.LT(-1)
			setState(92)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = RelationContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, LaTeXParser.RULE_relation)
					setState(87)
					if (!(precpred(_ctx, 2))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
					}
					setState(88)
					_la = try _input.LA(1)
					if (!(((Int64((_la - 79)) & ~0x3f) == 0 && ((Int64(1) << (_la - 79)) & 207) != 0))) {
					try _errHandler.recoverInline(self)
					}
					else {
						_errHandler.reportMatch(self)
						try consume()
					}
					setState(89)
					try relation(3)

			 
				}
				setState(94)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,0,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class EqualityContext: ParserRuleContext {
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func EQUAL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.EQUAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_equality
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterEquality(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitEquality(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitEquality(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitEquality(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func equality() throws -> EqualityContext {
		var _localctx: EqualityContext
		_localctx = EqualityContext(_ctx, getState())
		try enterRule(_localctx, 4, LaTeXParser.RULE_equality)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(95)
		 	try expr()
		 	setState(96)
		 	try match(LaTeXParser.Tokens.EQUAL.rawValue)
		 	setState(97)
		 	try expr()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExprContext: ParserRuleContext {
			open
			func additive() -> AdditiveContext? {
				return getRuleContext(AdditiveContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_expr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitExpr(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func expr() throws -> ExprContext {
		var _localctx: ExprContext
		_localctx = ExprContext(_ctx, getState())
		try enterRule(_localctx, 6, LaTeXParser.RULE_expr)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(99)
		 	try additive(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class AdditiveContext: ParserRuleContext {
			open
			func mp() -> MpContext? {
				return getRuleContext(MpContext.self, 0)
			}
			open
			func additive() -> [AdditiveContext] {
				return getRuleContexts(AdditiveContext.self)
			}
			open
			func additive(_ i: Int) -> AdditiveContext? {
				return getRuleContext(AdditiveContext.self, i)
			}
			open
			func ADD() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.ADD.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.SUB.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_additive
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterAdditive(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitAdditive(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitAdditive(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitAdditive(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func additive( ) throws -> AdditiveContext   {
		return try additive(0)
	}
	@discardableResult
	private func additive(_ _p: Int) throws -> AdditiveContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: AdditiveContext
		_localctx = AdditiveContext(_ctx, _parentState)
		var _prevctx: AdditiveContext = _localctx
		let _startState: Int = 8
		try enterRecursionRule(_localctx, 8, LaTeXParser.RULE_additive, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(102)
			try mp(0)

			_ctx!.stop = try _input.LT(-1)
			setState(109)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,1,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = AdditiveContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, LaTeXParser.RULE_additive)
					setState(104)
					if (!(precpred(_ctx, 2))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
					}
					setState(105)
					_la = try _input.LA(1)
					if (!(_la == LaTeXParser.Tokens.ADD.rawValue || _la == LaTeXParser.Tokens.SUB.rawValue)) {
					try _errHandler.recoverInline(self)
					}
					else {
						_errHandler.reportMatch(self)
						try consume()
					}
					setState(106)
					try additive(3)

			 
				}
				setState(111)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,1,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}


	public class MpContext: ParserRuleContext {
			open
			func unary() -> UnaryContext? {
				return getRuleContext(UnaryContext.self, 0)
			}
			open
			func mp() -> [MpContext] {
				return getRuleContexts(MpContext.self)
			}
			open
			func mp(_ i: Int) -> MpContext? {
				return getRuleContext(MpContext.self, i)
			}
			open
			func MUL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.MUL.rawValue, 0)
			}
			open
			func CMD_TIMES() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_TIMES.rawValue, 0)
			}
			open
			func CMD_CDOT() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_CDOT.rawValue, 0)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.DIV.rawValue, 0)
			}
			open
			func CMD_DIV() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_DIV.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_mp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterMp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitMp(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitMp(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitMp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func mp( ) throws -> MpContext   {
		return try mp(0)
	}
	@discardableResult
	private func mp(_ _p: Int) throws -> MpContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: MpContext
		_localctx = MpContext(_ctx, _parentState)
		var _prevctx: MpContext = _localctx
		let _startState: Int = 10
		try enterRecursionRule(_localctx, 10, LaTeXParser.RULE_mp, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(113)
			try unary()

			_ctx!.stop = try _input.LT(-1)
			setState(120)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,2,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = MpContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, LaTeXParser.RULE_mp)
					setState(115)
					if (!(precpred(_ctx, 2))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
					}
					setState(116)
					_la = try _input.LA(1)
					if (!(((Int64((_la - 17)) & ~0x3f) == 0 && ((Int64(1) << (_la - 17)) & 290200700988686339) != 0))) {
					try _errHandler.recoverInline(self)
					}
					else {
						_errHandler.reportMatch(self)
						try consume()
					}
					setState(117)
					try mp(3)

			 
				}
				setState(122)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,2,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}


	public class Mp_nofuncContext: ParserRuleContext {
			open
			func unary_nofunc() -> Unary_nofuncContext? {
				return getRuleContext(Unary_nofuncContext.self, 0)
			}
			open
			func mp_nofunc() -> [Mp_nofuncContext] {
				return getRuleContexts(Mp_nofuncContext.self)
			}
			open
			func mp_nofunc(_ i: Int) -> Mp_nofuncContext? {
				return getRuleContext(Mp_nofuncContext.self, i)
			}
			open
			func MUL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.MUL.rawValue, 0)
			}
			open
			func CMD_TIMES() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_TIMES.rawValue, 0)
			}
			open
			func CMD_CDOT() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_CDOT.rawValue, 0)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.DIV.rawValue, 0)
			}
			open
			func CMD_DIV() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_DIV.rawValue, 0)
			}
			open
			func COLON() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.COLON.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_mp_nofunc
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterMp_nofunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitMp_nofunc(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitMp_nofunc(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitMp_nofunc(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func mp_nofunc( ) throws -> Mp_nofuncContext   {
		return try mp_nofunc(0)
	}
	@discardableResult
	private func mp_nofunc(_ _p: Int) throws -> Mp_nofuncContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: Mp_nofuncContext
		_localctx = Mp_nofuncContext(_ctx, _parentState)
		var _prevctx: Mp_nofuncContext = _localctx
		let _startState: Int = 12
		try enterRecursionRule(_localctx, 12, LaTeXParser.RULE_mp_nofunc, _p)
		var _la: Int = 0
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(124)
			try unary_nofunc()

			_ctx!.stop = try _input.LT(-1)
			setState(131)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,3,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = Mp_nofuncContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, LaTeXParser.RULE_mp_nofunc)
					setState(126)
					if (!(precpred(_ctx, 2))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
					}
					setState(127)
					_la = try _input.LA(1)
					if (!(((Int64((_la - 17)) & ~0x3f) == 0 && ((Int64(1) << (_la - 17)) & 290200700988686339) != 0))) {
					try _errHandler.recoverInline(self)
					}
					else {
						_errHandler.reportMatch(self)
						try consume()
					}
					setState(128)
					try mp_nofunc(3)

			 
				}
				setState(133)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,3,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class UnaryContext: ParserRuleContext {
			open
			func unary() -> UnaryContext? {
				return getRuleContext(UnaryContext.self, 0)
			}
			open
			func ADD() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.ADD.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.SUB.rawValue, 0)
			}
			open
			func `postfix`() -> [PostfixContext] {
				return getRuleContexts(PostfixContext.self)
			}
			open
			func `postfix`(_ i: Int) -> PostfixContext? {
				return getRuleContext(PostfixContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_unary
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterUnary(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitUnary(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitUnary(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitUnary(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func unary() throws -> UnaryContext {
		var _localctx: UnaryContext
		_localctx = UnaryContext(_ctx, getState())
		try enterRule(_localctx, 14, LaTeXParser.RULE_unary)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(141)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .ADD:fallthrough
		 	case .SUB:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(134)
		 		_la = try _input.LA(1)
		 		if (!(_la == LaTeXParser.Tokens.ADD.rawValue || _la == LaTeXParser.Tokens.SUB.rawValue)) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(135)
		 		try unary()

		 		break
		 	case .L_PAREN:fallthrough
		 	case .L_BRACE:fallthrough
		 	case .L_BRACE_LITERAL:fallthrough
		 	case .L_BRACKET:fallthrough
		 	case .BAR:fallthrough
		 	case .L_BAR:fallthrough
		 	case .L_ANGLE:fallthrough
		 	case .FUNC_LIM:fallthrough
		 	case .FUNC_INT:fallthrough
		 	case .FUNC_SUM:fallthrough
		 	case .FUNC_PROD:fallthrough
		 	case .FUNC_EXP:fallthrough
		 	case .FUNC_LOG:fallthrough
		 	case .FUNC_LG:fallthrough
		 	case .FUNC_LN:fallthrough
		 	case .FUNC_SIN:fallthrough
		 	case .FUNC_COS:fallthrough
		 	case .FUNC_TAN:fallthrough
		 	case .FUNC_CSC:fallthrough
		 	case .FUNC_SEC:fallthrough
		 	case .FUNC_COT:fallthrough
		 	case .FUNC_ARCSIN:fallthrough
		 	case .FUNC_ARCCOS:fallthrough
		 	case .FUNC_ARCTAN:fallthrough
		 	case .FUNC_ARCCSC:fallthrough
		 	case .FUNC_ARCSEC:fallthrough
		 	case .FUNC_ARCCOT:fallthrough
		 	case .FUNC_SINH:fallthrough
		 	case .FUNC_COSH:fallthrough
		 	case .FUNC_TANH:fallthrough
		 	case .FUNC_ARSINH:fallthrough
		 	case .FUNC_ARCOSH:fallthrough
		 	case .FUNC_ARTANH:fallthrough
		 	case .L_FLOOR:fallthrough
		 	case .L_CEIL:fallthrough
		 	case .FUNC_SQRT:fallthrough
		 	case .FUNC_OVERLINE:fallthrough
		 	case .CMD_FRAC:fallthrough
		 	case .CMD_BINOM:fallthrough
		 	case .CMD_DBINOM:fallthrough
		 	case .CMD_TBINOM:fallthrough
		 	case .CMD_MATHIT:fallthrough
		 	case .DIFFERENTIAL:fallthrough
		 	case .LETTER:fallthrough
		 	case .DIGIT:fallthrough
		 	case .SYMBOL:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(137); 
		 		try _errHandler.sync(self)
		 		_alt = 1;
		 		repeat {
		 			switch (_alt) {
		 			case 1:
		 				setState(136)
		 				try `postfix`()


		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}
		 			setState(139); 
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,4,_ctx)
		 		} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Unary_nofuncContext: ParserRuleContext {
			open
			func unary_nofunc() -> Unary_nofuncContext? {
				return getRuleContext(Unary_nofuncContext.self, 0)
			}
			open
			func ADD() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.ADD.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.SUB.rawValue, 0)
			}
			open
			func `postfix`() -> PostfixContext? {
				return getRuleContext(PostfixContext.self, 0)
			}
			open
			func postfix_nofunc() -> [Postfix_nofuncContext] {
				return getRuleContexts(Postfix_nofuncContext.self)
			}
			open
			func postfix_nofunc(_ i: Int) -> Postfix_nofuncContext? {
				return getRuleContext(Postfix_nofuncContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_unary_nofunc
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterUnary_nofunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitUnary_nofunc(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitUnary_nofunc(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitUnary_nofunc(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func unary_nofunc() throws -> Unary_nofuncContext {
		var _localctx: Unary_nofuncContext
		_localctx = Unary_nofuncContext(_ctx, getState())
		try enterRule(_localctx, 16, LaTeXParser.RULE_unary_nofunc)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	setState(152)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .ADD:fallthrough
		 	case .SUB:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(143)
		 		_la = try _input.LA(1)
		 		if (!(_la == LaTeXParser.Tokens.ADD.rawValue || _la == LaTeXParser.Tokens.SUB.rawValue)) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(144)
		 		try unary_nofunc()

		 		break
		 	case .L_PAREN:fallthrough
		 	case .L_BRACE:fallthrough
		 	case .L_BRACE_LITERAL:fallthrough
		 	case .L_BRACKET:fallthrough
		 	case .BAR:fallthrough
		 	case .L_BAR:fallthrough
		 	case .L_ANGLE:fallthrough
		 	case .FUNC_LIM:fallthrough
		 	case .FUNC_INT:fallthrough
		 	case .FUNC_SUM:fallthrough
		 	case .FUNC_PROD:fallthrough
		 	case .FUNC_EXP:fallthrough
		 	case .FUNC_LOG:fallthrough
		 	case .FUNC_LG:fallthrough
		 	case .FUNC_LN:fallthrough
		 	case .FUNC_SIN:fallthrough
		 	case .FUNC_COS:fallthrough
		 	case .FUNC_TAN:fallthrough
		 	case .FUNC_CSC:fallthrough
		 	case .FUNC_SEC:fallthrough
		 	case .FUNC_COT:fallthrough
		 	case .FUNC_ARCSIN:fallthrough
		 	case .FUNC_ARCCOS:fallthrough
		 	case .FUNC_ARCTAN:fallthrough
		 	case .FUNC_ARCCSC:fallthrough
		 	case .FUNC_ARCSEC:fallthrough
		 	case .FUNC_ARCCOT:fallthrough
		 	case .FUNC_SINH:fallthrough
		 	case .FUNC_COSH:fallthrough
		 	case .FUNC_TANH:fallthrough
		 	case .FUNC_ARSINH:fallthrough
		 	case .FUNC_ARCOSH:fallthrough
		 	case .FUNC_ARTANH:fallthrough
		 	case .L_FLOOR:fallthrough
		 	case .L_CEIL:fallthrough
		 	case .FUNC_SQRT:fallthrough
		 	case .FUNC_OVERLINE:fallthrough
		 	case .CMD_FRAC:fallthrough
		 	case .CMD_BINOM:fallthrough
		 	case .CMD_DBINOM:fallthrough
		 	case .CMD_TBINOM:fallthrough
		 	case .CMD_MATHIT:fallthrough
		 	case .DIFFERENTIAL:fallthrough
		 	case .LETTER:fallthrough
		 	case .DIGIT:fallthrough
		 	case .SYMBOL:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(145)
		 		try `postfix`()
		 		setState(149)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,6,_ctx)
		 		while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 			if ( _alt==1 ) {
		 				setState(146)
		 				try postfix_nofunc()

		 		 
		 			}
		 			setState(151)
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,6,_ctx)
		 		}

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PostfixContext: ParserRuleContext {
			open
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
			}
			open
			func postfix_op() -> [Postfix_opContext] {
				return getRuleContexts(Postfix_opContext.self)
			}
			open
			func postfix_op(_ i: Int) -> Postfix_opContext? {
				return getRuleContext(Postfix_opContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_postfix
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterPostfix(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitPostfix(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitPostfix(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitPostfix(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func `postfix`() throws -> PostfixContext {
		var _localctx: PostfixContext
		_localctx = PostfixContext(_ctx, getState())
		try enterRule(_localctx, 18, LaTeXParser.RULE_postfix)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(154)
		 	try exp(0)
		 	setState(158)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,8,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(155)
		 			try postfix_op()

		 	 
		 		}
		 		setState(160)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,8,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Postfix_nofuncContext: ParserRuleContext {
			open
			func exp_nofunc() -> Exp_nofuncContext? {
				return getRuleContext(Exp_nofuncContext.self, 0)
			}
			open
			func postfix_op() -> [Postfix_opContext] {
				return getRuleContexts(Postfix_opContext.self)
			}
			open
			func postfix_op(_ i: Int) -> Postfix_opContext? {
				return getRuleContext(Postfix_opContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_postfix_nofunc
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterPostfix_nofunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitPostfix_nofunc(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitPostfix_nofunc(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitPostfix_nofunc(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func postfix_nofunc() throws -> Postfix_nofuncContext {
		var _localctx: Postfix_nofuncContext
		_localctx = Postfix_nofuncContext(_ctx, getState())
		try enterRule(_localctx, 20, LaTeXParser.RULE_postfix_nofunc)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(161)
		 	try exp_nofunc(0)
		 	setState(165)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,9,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(162)
		 			try postfix_op()

		 	 
		 		}
		 		setState(167)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,9,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Postfix_opContext: ParserRuleContext {
			open
			func BANG() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.BANG.rawValue, 0)
			}
			open
			func eval_at() -> Eval_atContext? {
				return getRuleContext(Eval_atContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_postfix_op
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterPostfix_op(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitPostfix_op(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitPostfix_op(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitPostfix_op(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func postfix_op() throws -> Postfix_opContext {
		var _localctx: Postfix_opContext
		_localctx = Postfix_opContext(_ctx, getState())
		try enterRule(_localctx, 22, LaTeXParser.RULE_postfix_op)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(170)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .BANG:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(168)
		 		try match(LaTeXParser.Tokens.BANG.rawValue)

		 		break

		 	case .BAR:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(169)
		 		try eval_at()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Eval_atContext: ParserRuleContext {
			open
			func BAR() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.BAR.rawValue, 0)
			}
			open
			func eval_at_sup() -> Eval_at_supContext? {
				return getRuleContext(Eval_at_supContext.self, 0)
			}
			open
			func eval_at_sub() -> Eval_at_subContext? {
				return getRuleContext(Eval_at_subContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_eval_at
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterEval_at(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitEval_at(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitEval_at(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitEval_at(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func eval_at() throws -> Eval_atContext {
		var _localctx: Eval_atContext
		_localctx = Eval_atContext(_ctx, getState())
		try enterRule(_localctx, 24, LaTeXParser.RULE_eval_at)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(172)
		 	try match(LaTeXParser.Tokens.BAR.rawValue)
		 	setState(178)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,11, _ctx)) {
		 	case 1:
		 		setState(173)
		 		try eval_at_sup()

		 		break
		 	case 2:
		 		setState(174)
		 		try eval_at_sub()

		 		break
		 	case 3:
		 		setState(175)
		 		try eval_at_sup()
		 		setState(176)
		 		try eval_at_sub()

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Eval_at_subContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func equality() -> EqualityContext? {
				return getRuleContext(EqualityContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_eval_at_sub
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterEval_at_sub(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitEval_at_sub(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitEval_at_sub(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitEval_at_sub(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func eval_at_sub() throws -> Eval_at_subContext {
		var _localctx: Eval_at_subContext
		_localctx = Eval_at_subContext(_ctx, getState())
		try enterRule(_localctx, 26, LaTeXParser.RULE_eval_at_sub)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(180)
		 	try match(LaTeXParser.Tokens.UNDERSCORE.rawValue)
		 	setState(181)
		 	try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 	setState(184)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,12, _ctx)) {
		 	case 1:
		 		setState(182)
		 		try expr()

		 		break
		 	case 2:
		 		setState(183)
		 		try equality()

		 		break
		 	default: break
		 	}
		 	setState(186)
		 	try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Eval_at_supContext: ParserRuleContext {
			open
			func CARET() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CARET.rawValue, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func equality() -> EqualityContext? {
				return getRuleContext(EqualityContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_eval_at_sup
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterEval_at_sup(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitEval_at_sup(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitEval_at_sup(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitEval_at_sup(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func eval_at_sup() throws -> Eval_at_supContext {
		var _localctx: Eval_at_supContext
		_localctx = Eval_at_supContext(_ctx, getState())
		try enterRule(_localctx, 28, LaTeXParser.RULE_eval_at_sup)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(188)
		 	try match(LaTeXParser.Tokens.CARET.rawValue)
		 	setState(189)
		 	try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 	setState(192)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,13, _ctx)) {
		 	case 1:
		 		setState(190)
		 		try expr()

		 		break
		 	case 2:
		 		setState(191)
		 		try equality()

		 		break
		 	default: break
		 	}
		 	setState(194)
		 	try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class ExpContext: ParserRuleContext {
			open
			func comp() -> CompContext? {
				return getRuleContext(CompContext.self, 0)
			}
			open
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
			}
			open
			func CARET() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CARET.rawValue, 0)
			}
			open
			func atom() -> AtomContext? {
				return getRuleContext(AtomContext.self, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
			open
			func subexpr() -> SubexprContext? {
				return getRuleContext(SubexprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_exp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterExp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitExp(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitExp(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitExp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func exp( ) throws -> ExpContext   {
		return try exp(0)
	}
	@discardableResult
	private func exp(_ _p: Int) throws -> ExpContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: ExpContext
		_localctx = ExpContext(_ctx, _parentState)
		var _prevctx: ExpContext = _localctx
		let _startState: Int = 30
		try enterRecursionRule(_localctx, 30, LaTeXParser.RULE_exp, _p)
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(197)
			try comp()

			_ctx!.stop = try _input.LT(-1)
			setState(213)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,16,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = ExpContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, LaTeXParser.RULE_exp)
					setState(199)
					if (!(precpred(_ctx, 2))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
					}
					setState(200)
					try match(LaTeXParser.Tokens.CARET.rawValue)
					setState(206)
					try _errHandler.sync(self)
					switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
					case .BAR:fallthrough
					case .L_BAR:fallthrough
					case .L_ANGLE:fallthrough
					case .CMD_FRAC:fallthrough
					case .CMD_BINOM:fallthrough
					case .CMD_DBINOM:fallthrough
					case .CMD_TBINOM:fallthrough
					case .CMD_MATHIT:fallthrough
					case .DIFFERENTIAL:fallthrough
					case .LETTER:fallthrough
					case .DIGIT:fallthrough
					case .SYMBOL:
						setState(201)
						try atom()

						break

					case .L_BRACE:
						setState(202)
						try match(LaTeXParser.Tokens.L_BRACE.rawValue)
						setState(203)
						try expr()
						setState(204)
						try match(LaTeXParser.Tokens.R_BRACE.rawValue)

						break
					default:
						throw ANTLRException.recognition(e: NoViableAltException(self))
					}
					setState(209)
					try _errHandler.sync(self)
					switch (try getInterpreter().adaptivePredict(_input,15,_ctx)) {
					case 1:
						setState(208)
						try subexpr()

						break
					default: break
					}

			 
				}
				setState(215)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,16,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}


	public class Exp_nofuncContext: ParserRuleContext {
			open
			func comp_nofunc() -> Comp_nofuncContext? {
				return getRuleContext(Comp_nofuncContext.self, 0)
			}
			open
			func exp_nofunc() -> Exp_nofuncContext? {
				return getRuleContext(Exp_nofuncContext.self, 0)
			}
			open
			func CARET() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CARET.rawValue, 0)
			}
			open
			func atom() -> AtomContext? {
				return getRuleContext(AtomContext.self, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
			open
			func subexpr() -> SubexprContext? {
				return getRuleContext(SubexprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_exp_nofunc
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterExp_nofunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitExp_nofunc(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitExp_nofunc(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitExp_nofunc(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func exp_nofunc( ) throws -> Exp_nofuncContext   {
		return try exp_nofunc(0)
	}
	@discardableResult
	private func exp_nofunc(_ _p: Int) throws -> Exp_nofuncContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: Exp_nofuncContext
		_localctx = Exp_nofuncContext(_ctx, _parentState)
		var _prevctx: Exp_nofuncContext = _localctx
		let _startState: Int = 32
		try enterRecursionRule(_localctx, 32, LaTeXParser.RULE_exp_nofunc, _p)
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(217)
			try comp_nofunc()

			_ctx!.stop = try _input.LT(-1)
			setState(233)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,19,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = Exp_nofuncContext(_parentctx, _parentState);
					try pushNewRecursionContext(_localctx, _startState, LaTeXParser.RULE_exp_nofunc)
					setState(219)
					if (!(precpred(_ctx, 2))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
					}
					setState(220)
					try match(LaTeXParser.Tokens.CARET.rawValue)
					setState(226)
					try _errHandler.sync(self)
					switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
					case .BAR:fallthrough
					case .L_BAR:fallthrough
					case .L_ANGLE:fallthrough
					case .CMD_FRAC:fallthrough
					case .CMD_BINOM:fallthrough
					case .CMD_DBINOM:fallthrough
					case .CMD_TBINOM:fallthrough
					case .CMD_MATHIT:fallthrough
					case .DIFFERENTIAL:fallthrough
					case .LETTER:fallthrough
					case .DIGIT:fallthrough
					case .SYMBOL:
						setState(221)
						try atom()

						break

					case .L_BRACE:
						setState(222)
						try match(LaTeXParser.Tokens.L_BRACE.rawValue)
						setState(223)
						try expr()
						setState(224)
						try match(LaTeXParser.Tokens.R_BRACE.rawValue)

						break
					default:
						throw ANTLRException.recognition(e: NoViableAltException(self))
					}
					setState(229)
					try _errHandler.sync(self)
					switch (try getInterpreter().adaptivePredict(_input,18,_ctx)) {
					case 1:
						setState(228)
						try subexpr()

						break
					default: break
					}

			 
				}
				setState(235)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,19,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	public class CompContext: ParserRuleContext {
			open
			func group() -> GroupContext? {
				return getRuleContext(GroupContext.self, 0)
			}
			open
			func abs_group() -> Abs_groupContext? {
				return getRuleContext(Abs_groupContext.self, 0)
			}
			open
			func `func`() -> FuncContext? {
				return getRuleContext(FuncContext.self, 0)
			}
			open
			func atom() -> AtomContext? {
				return getRuleContext(AtomContext.self, 0)
			}
			open
			func floor() -> FloorContext? {
				return getRuleContext(FloorContext.self, 0)
			}
			open
			func ceil() -> CeilContext? {
				return getRuleContext(CeilContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_comp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterComp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitComp(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitComp(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitComp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func comp() throws -> CompContext {
		var _localctx: CompContext
		_localctx = CompContext(_ctx, getState())
		try enterRule(_localctx, 34, LaTeXParser.RULE_comp)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(242)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,20, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(236)
		 		try group()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(237)
		 		try abs_group()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(238)
		 		try `func`()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(239)
		 		try atom()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(240)
		 		try floor()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(241)
		 		try ceil()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Comp_nofuncContext: ParserRuleContext {
			open
			func group() -> GroupContext? {
				return getRuleContext(GroupContext.self, 0)
			}
			open
			func abs_group() -> Abs_groupContext? {
				return getRuleContext(Abs_groupContext.self, 0)
			}
			open
			func atom() -> AtomContext? {
				return getRuleContext(AtomContext.self, 0)
			}
			open
			func floor() -> FloorContext? {
				return getRuleContext(FloorContext.self, 0)
			}
			open
			func ceil() -> CeilContext? {
				return getRuleContext(CeilContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_comp_nofunc
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterComp_nofunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitComp_nofunc(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitComp_nofunc(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitComp_nofunc(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func comp_nofunc() throws -> Comp_nofuncContext {
		var _localctx: Comp_nofuncContext
		_localctx = Comp_nofuncContext(_ctx, getState())
		try enterRule(_localctx, 36, LaTeXParser.RULE_comp_nofunc)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(249)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,21, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(244)
		 		try group()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(245)
		 		try abs_group()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(246)
		 		try atom()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(247)
		 		try floor()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(248)
		 		try ceil()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class GroupContext: ParserRuleContext {
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
			open
			func L_BRACE_LITERAL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE_LITERAL.rawValue, 0)
			}
			open
			func R_BRACE_LITERAL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE_LITERAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_group
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterGroup(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitGroup(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitGroup(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitGroup(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func group() throws -> GroupContext {
		var _localctx: GroupContext
		_localctx = GroupContext(_ctx, getState())
		try enterRule(_localctx, 38, LaTeXParser.RULE_group)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(267)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .L_PAREN:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(251)
		 		try match(LaTeXParser.Tokens.L_PAREN.rawValue)
		 		setState(252)
		 		try expr()
		 		setState(253)
		 		try match(LaTeXParser.Tokens.R_PAREN.rawValue)

		 		break

		 	case .L_BRACKET:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(255)
		 		try match(LaTeXParser.Tokens.L_BRACKET.rawValue)
		 		setState(256)
		 		try expr()
		 		setState(257)
		 		try match(LaTeXParser.Tokens.R_BRACKET.rawValue)

		 		break

		 	case .L_BRACE:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(259)
		 		try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 		setState(260)
		 		try expr()
		 		setState(261)
		 		try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		 		break

		 	case .L_BRACE_LITERAL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(263)
		 		try match(LaTeXParser.Tokens.L_BRACE_LITERAL.rawValue)
		 		setState(264)
		 		try expr()
		 		setState(265)
		 		try match(LaTeXParser.Tokens.R_BRACE_LITERAL.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Abs_groupContext: ParserRuleContext {
			open
			func BAR() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.BAR.rawValue)
			}
			open
			func BAR(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.BAR.rawValue, i)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_abs_group
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterAbs_group(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitAbs_group(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitAbs_group(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitAbs_group(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func abs_group() throws -> Abs_groupContext {
		var _localctx: Abs_groupContext
		_localctx = Abs_groupContext(_ctx, getState())
		try enterRule(_localctx, 40, LaTeXParser.RULE_abs_group)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(269)
		 	try match(LaTeXParser.Tokens.BAR.rawValue)
		 	setState(270)
		 	try expr()
		 	setState(271)
		 	try match(LaTeXParser.Tokens.BAR.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class NumberContext: ParserRuleContext {
			open
			func DIGIT() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.DIGIT.rawValue)
			}
			open
			func DIGIT(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.DIGIT.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_number
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterNumber(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitNumber(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitNumber(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitNumber(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func number() throws -> NumberContext {
		var _localctx: NumberContext
		_localctx = NumberContext(_ctx, getState())
		try enterRule(_localctx, 42, LaTeXParser.RULE_number)
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(274); 
		 	try _errHandler.sync(self)
		 	_alt = 1;
		 	repeat {
		 		switch (_alt) {
		 		case 1:
		 			setState(273)
		 			try match(LaTeXParser.Tokens.DIGIT.rawValue)


		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(276); 
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,23,_ctx)
		 	} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)
		 	setState(284)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,24,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(278)
		 			try match(LaTeXParser.Tokens.T__0.rawValue)
		 			setState(279)
		 			try match(LaTeXParser.Tokens.DIGIT.rawValue)
		 			setState(280)
		 			try match(LaTeXParser.Tokens.DIGIT.rawValue)
		 			setState(281)
		 			try match(LaTeXParser.Tokens.DIGIT.rawValue)

		 	 
		 		}
		 		setState(286)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,24,_ctx)
		 	}
		 	setState(293)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,26,_ctx)) {
		 	case 1:
		 		setState(287)
		 		try match(LaTeXParser.Tokens.T__1.rawValue)
		 		setState(289); 
		 		try _errHandler.sync(self)
		 		_alt = 1;
		 		repeat {
		 			switch (_alt) {
		 			case 1:
		 				setState(288)
		 				try match(LaTeXParser.Tokens.DIGIT.rawValue)


		 				break
		 			default:
		 				throw ANTLRException.recognition(e: NoViableAltException(self))
		 			}
		 			setState(291); 
		 			try _errHandler.sync(self)
		 			_alt = try getInterpreter().adaptivePredict(_input,25,_ctx)
		 		} while (_alt != 2 && _alt !=  ATN.INVALID_ALT_NUMBER)

		 		break
		 	default: break
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AtomContext: ParserRuleContext {
			open
			func LETTER() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.LETTER.rawValue, 0)
			}
			open
			func SYMBOL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.SYMBOL.rawValue, 0)
			}
			open
			func subexpr() -> SubexprContext? {
				return getRuleContext(SubexprContext.self, 0)
			}
			open
			func SINGLE_QUOTES() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.SINGLE_QUOTES.rawValue, 0)
			}
			open
			func number() -> NumberContext? {
				return getRuleContext(NumberContext.self, 0)
			}
			open
			func DIFFERENTIAL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.DIFFERENTIAL.rawValue, 0)
			}
			open
			func mathit() -> MathitContext? {
				return getRuleContext(MathitContext.self, 0)
			}
			open
			func frac() -> FracContext? {
				return getRuleContext(FracContext.self, 0)
			}
			open
			func binom() -> BinomContext? {
				return getRuleContext(BinomContext.self, 0)
			}
			open
			func bra() -> BraContext? {
				return getRuleContext(BraContext.self, 0)
			}
			open
			func ket() -> KetContext? {
				return getRuleContext(KetContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_atom
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterAtom(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitAtom(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitAtom(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitAtom(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func atom() throws -> AtomContext {
		var _localctx: AtomContext
		_localctx = AtomContext(_ctx, getState())
		try enterRule(_localctx, 44, LaTeXParser.RULE_atom)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(317)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LETTER:fallthrough
		 	case .SYMBOL:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(295)
		 		_la = try _input.LA(1)
		 		if (!(_la == LaTeXParser.Tokens.LETTER.rawValue || _la == LaTeXParser.Tokens.SYMBOL.rawValue)) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(308)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,31, _ctx)) {
		 		case 1:
		 			setState(297)
		 			try _errHandler.sync(self)
		 			switch (try getInterpreter().adaptivePredict(_input,27,_ctx)) {
		 			case 1:
		 				setState(296)
		 				try subexpr()

		 				break
		 			default: break
		 			}
		 			setState(300)
		 			try _errHandler.sync(self)
		 			switch (try getInterpreter().adaptivePredict(_input,28,_ctx)) {
		 			case 1:
		 				setState(299)
		 				try match(LaTeXParser.Tokens.SINGLE_QUOTES.rawValue)

		 				break
		 			default: break
		 			}

		 			break
		 		case 2:
		 			setState(303)
		 			try _errHandler.sync(self)
		 			switch (try getInterpreter().adaptivePredict(_input,29,_ctx)) {
		 			case 1:
		 				setState(302)
		 				try match(LaTeXParser.Tokens.SINGLE_QUOTES.rawValue)

		 				break
		 			default: break
		 			}
		 			setState(306)
		 			try _errHandler.sync(self)
		 			switch (try getInterpreter().adaptivePredict(_input,30,_ctx)) {
		 			case 1:
		 				setState(305)
		 				try subexpr()

		 				break
		 			default: break
		 			}

		 			break
		 		default: break
		 		}

		 		break

		 	case .DIGIT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(310)
		 		try number()

		 		break

		 	case .DIFFERENTIAL:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(311)
		 		try match(LaTeXParser.Tokens.DIFFERENTIAL.rawValue)

		 		break

		 	case .CMD_MATHIT:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(312)
		 		try mathit()

		 		break

		 	case .CMD_FRAC:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(313)
		 		try frac()

		 		break
		 	case .CMD_BINOM:fallthrough
		 	case .CMD_DBINOM:fallthrough
		 	case .CMD_TBINOM:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(314)
		 		try binom()

		 		break

		 	case .L_ANGLE:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(315)
		 		try bra()

		 		break
		 	case .BAR:fallthrough
		 	case .L_BAR:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(316)
		 		try ket()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BraContext: ParserRuleContext {
			open
			func L_ANGLE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_ANGLE.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func R_BAR() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BAR.rawValue, 0)
			}
			open
			func BAR() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.BAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_bra
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterBra(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitBra(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitBra(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitBra(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func bra() throws -> BraContext {
		var _localctx: BraContext
		_localctx = BraContext(_ctx, getState())
		try enterRule(_localctx, 46, LaTeXParser.RULE_bra)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(319)
		 	try match(LaTeXParser.Tokens.L_ANGLE.rawValue)
		 	setState(320)
		 	try expr()
		 	setState(321)
		 	_la = try _input.LA(1)
		 	if (!(_la == LaTeXParser.Tokens.BAR.rawValue || _la == LaTeXParser.Tokens.R_BAR.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class KetContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func R_ANGLE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_ANGLE.rawValue, 0)
			}
			open
			func L_BAR() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BAR.rawValue, 0)
			}
			open
			func BAR() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.BAR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_ket
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterKet(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitKet(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitKet(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitKet(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func ket() throws -> KetContext {
		var _localctx: KetContext
		_localctx = KetContext(_ctx, getState())
		try enterRule(_localctx, 48, LaTeXParser.RULE_ket)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(323)
		 	_la = try _input.LA(1)
		 	if (!(_la == LaTeXParser.Tokens.BAR.rawValue || _la == LaTeXParser.Tokens.L_BAR.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(324)
		 	try expr()
		 	setState(325)
		 	try match(LaTeXParser.Tokens.R_ANGLE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MathitContext: ParserRuleContext {
			open
			func CMD_MATHIT() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_MATHIT.rawValue, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func mathit_text() -> Mathit_textContext? {
				return getRuleContext(Mathit_textContext.self, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_mathit
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterMathit(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitMathit(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitMathit(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitMathit(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func mathit() throws -> MathitContext {
		var _localctx: MathitContext
		_localctx = MathitContext(_ctx, getState())
		try enterRule(_localctx, 50, LaTeXParser.RULE_mathit)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(327)
		 	try match(LaTeXParser.Tokens.CMD_MATHIT.rawValue)
		 	setState(328)
		 	try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 	setState(329)
		 	try mathit_text()
		 	setState(330)
		 	try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Mathit_textContext: ParserRuleContext {
			open
			func LETTER() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.LETTER.rawValue)
			}
			open
			func LETTER(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.LETTER.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_mathit_text
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterMathit_text(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitMathit_text(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitMathit_text(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitMathit_text(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func mathit_text() throws -> Mathit_textContext {
		var _localctx: Mathit_textContext
		_localctx = Mathit_textContext(_ctx, getState())
		try enterRule(_localctx, 52, LaTeXParser.RULE_mathit_text)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(335)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == LaTeXParser.Tokens.LETTER.rawValue) {
		 		setState(332)
		 		try match(LaTeXParser.Tokens.LETTER.rawValue)


		 		setState(337)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FracContext: ParserRuleContext {
		open var upperd: Token!
		open var upper: ExprContext!
		open var lowerd: Token!
		open var lower: ExprContext!
			open
			func CMD_FRAC() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_FRAC.rawValue, 0)
			}
			open
			func L_BRACE() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.L_BRACE.rawValue)
			}
			open
			func L_BRACE(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, i)
			}
			open
			func R_BRACE() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.R_BRACE.rawValue)
			}
			open
			func R_BRACE(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, i)
			}
			open
			func DIGIT() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.DIGIT.rawValue)
			}
			open
			func DIGIT(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.DIGIT.rawValue, i)
			}
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_frac
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterFrac(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitFrac(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitFrac(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitFrac(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func frac() throws -> FracContext {
		var _localctx: FracContext
		_localctx = FracContext(_ctx, getState())
		try enterRule(_localctx, 54, LaTeXParser.RULE_frac)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(338)
		 	try match(LaTeXParser.Tokens.CMD_FRAC.rawValue)
		 	setState(344)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .DIGIT:
		 		setState(339)
		 		try {
		 				let assignmentValue = try match(LaTeXParser.Tokens.DIGIT.rawValue)
		 				_localctx.castdown(FracContext.self).upperd = assignmentValue
		 		     }()


		 		break

		 	case .L_BRACE:
		 		setState(340)
		 		try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 		setState(341)
		 		try {
		 				let assignmentValue = try expr()
		 				_localctx.castdown(FracContext.self).upper = assignmentValue
		 		     }()

		 		setState(342)
		 		try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		 	setState(351)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .DIGIT:
		 		setState(346)
		 		try {
		 				let assignmentValue = try match(LaTeXParser.Tokens.DIGIT.rawValue)
		 				_localctx.castdown(FracContext.self).lowerd = assignmentValue
		 		     }()


		 		break

		 	case .L_BRACE:
		 		setState(347)
		 		try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 		setState(348)
		 		try {
		 				let assignmentValue = try expr()
		 				_localctx.castdown(FracContext.self).lower = assignmentValue
		 		     }()

		 		setState(349)
		 		try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BinomContext: ParserRuleContext {
		open var n: ExprContext!
		open var k: ExprContext!
			open
			func L_BRACE() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.L_BRACE.rawValue)
			}
			open
			func L_BRACE(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, i)
			}
			open
			func R_BRACE() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.R_BRACE.rawValue)
			}
			open
			func R_BRACE(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, i)
			}
			open
			func CMD_BINOM() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_BINOM.rawValue, 0)
			}
			open
			func CMD_DBINOM() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_DBINOM.rawValue, 0)
			}
			open
			func CMD_TBINOM() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CMD_TBINOM.rawValue, 0)
			}
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_binom
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterBinom(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitBinom(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitBinom(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitBinom(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func binom() throws -> BinomContext {
		var _localctx: BinomContext
		_localctx = BinomContext(_ctx, getState())
		try enterRule(_localctx, 56, LaTeXParser.RULE_binom)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(353)
		 	_la = try _input.LA(1)
		 	if (!(((Int64((_la - 69)) & ~0x3f) == 0 && ((Int64(1) << (_la - 69)) & 7) != 0))) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(354)
		 	try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 	setState(355)
		 	try {
		 			let assignmentValue = try expr()
		 			_localctx.castdown(BinomContext.self).n = assignmentValue
		 	     }()

		 	setState(356)
		 	try match(LaTeXParser.Tokens.R_BRACE.rawValue)
		 	setState(357)
		 	try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 	setState(358)
		 	try {
		 			let assignmentValue = try expr()
		 			_localctx.castdown(BinomContext.self).k = assignmentValue
		 	     }()

		 	setState(359)
		 	try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FloorContext: ParserRuleContext {
		open var val: ExprContext!
			open
			func L_FLOOR() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_FLOOR.rawValue, 0)
			}
			open
			func R_FLOOR() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_FLOOR.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_floor
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterFloor(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitFloor(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitFloor(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitFloor(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func floor() throws -> FloorContext {
		var _localctx: FloorContext
		_localctx = FloorContext(_ctx, getState())
		try enterRule(_localctx, 58, LaTeXParser.RULE_floor)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(361)
		 	try match(LaTeXParser.Tokens.L_FLOOR.rawValue)
		 	setState(362)
		 	try {
		 			let assignmentValue = try expr()
		 			_localctx.castdown(FloorContext.self).val = assignmentValue
		 	     }()

		 	setState(363)
		 	try match(LaTeXParser.Tokens.R_FLOOR.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class CeilContext: ParserRuleContext {
		open var val: ExprContext!
			open
			func L_CEIL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_CEIL.rawValue, 0)
			}
			open
			func R_CEIL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_CEIL.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_ceil
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterCeil(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitCeil(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitCeil(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitCeil(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func ceil() throws -> CeilContext {
		var _localctx: CeilContext
		_localctx = CeilContext(_ctx, getState())
		try enterRule(_localctx, 60, LaTeXParser.RULE_ceil)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(365)
		 	try match(LaTeXParser.Tokens.L_CEIL.rawValue)
		 	setState(366)
		 	try {
		 			let assignmentValue = try expr()
		 			_localctx.castdown(CeilContext.self).val = assignmentValue
		 	     }()

		 	setState(367)
		 	try match(LaTeXParser.Tokens.R_CEIL.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Func_normalContext: ParserRuleContext {
			open
			func FUNC_EXP() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_EXP.rawValue, 0)
			}
			open
			func FUNC_LOG() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_LOG.rawValue, 0)
			}
			open
			func FUNC_LG() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_LG.rawValue, 0)
			}
			open
			func FUNC_LN() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_LN.rawValue, 0)
			}
			open
			func FUNC_SIN() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_SIN.rawValue, 0)
			}
			open
			func FUNC_COS() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_COS.rawValue, 0)
			}
			open
			func FUNC_TAN() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_TAN.rawValue, 0)
			}
			open
			func FUNC_CSC() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_CSC.rawValue, 0)
			}
			open
			func FUNC_SEC() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_SEC.rawValue, 0)
			}
			open
			func FUNC_COT() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_COT.rawValue, 0)
			}
			open
			func FUNC_ARCSIN() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_ARCSIN.rawValue, 0)
			}
			open
			func FUNC_ARCCOS() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_ARCCOS.rawValue, 0)
			}
			open
			func FUNC_ARCTAN() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_ARCTAN.rawValue, 0)
			}
			open
			func FUNC_ARCCSC() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_ARCCSC.rawValue, 0)
			}
			open
			func FUNC_ARCSEC() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_ARCSEC.rawValue, 0)
			}
			open
			func FUNC_ARCCOT() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_ARCCOT.rawValue, 0)
			}
			open
			func FUNC_SINH() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_SINH.rawValue, 0)
			}
			open
			func FUNC_COSH() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_COSH.rawValue, 0)
			}
			open
			func FUNC_TANH() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_TANH.rawValue, 0)
			}
			open
			func FUNC_ARSINH() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_ARSINH.rawValue, 0)
			}
			open
			func FUNC_ARCOSH() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_ARCOSH.rawValue, 0)
			}
			open
			func FUNC_ARTANH() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_ARTANH.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_func_normal
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterFunc_normal(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitFunc_normal(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitFunc_normal(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitFunc_normal(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func func_normal() throws -> Func_normalContext {
		var _localctx: Func_normalContext
		_localctx = Func_normalContext(_ctx, getState())
		try enterRule(_localctx, 62, LaTeXParser.RULE_func_normal)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(369)
		 	_la = try _input.LA(1)
		 	if (!(((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 576460614864470016) != 0))) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FuncContext: ParserRuleContext {
		open var root: ExprContext!
		open var base: ExprContext!
			open
			func func_normal() -> Func_normalContext? {
				return getRuleContext(Func_normalContext.self, 0)
			}
			open
			func L_PAREN() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_PAREN.rawValue, 0)
			}
			open
			func func_arg() -> Func_argContext? {
				return getRuleContext(Func_argContext.self, 0)
			}
			open
			func R_PAREN() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_PAREN.rawValue, 0)
			}
			open
			func func_arg_noparens() -> Func_arg_noparensContext? {
				return getRuleContext(Func_arg_noparensContext.self, 0)
			}
			open
			func subexpr() -> SubexprContext? {
				return getRuleContext(SubexprContext.self, 0)
			}
			open
			func supexpr() -> SupexprContext? {
				return getRuleContext(SupexprContext.self, 0)
			}
			open
			func args() -> ArgsContext? {
				return getRuleContext(ArgsContext.self, 0)
			}
			open
			func LETTER() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.LETTER.rawValue, 0)
			}
			open
			func SYMBOL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.SYMBOL.rawValue, 0)
			}
			open
			func SINGLE_QUOTES() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.SINGLE_QUOTES.rawValue, 0)
			}
			open
			func FUNC_INT() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_INT.rawValue, 0)
			}
			open
			func DIFFERENTIAL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.DIFFERENTIAL.rawValue, 0)
			}
			open
			func frac() -> FracContext? {
				return getRuleContext(FracContext.self, 0)
			}
			open
			func additive() -> AdditiveContext? {
				return getRuleContext(AdditiveContext.self, 0)
			}
			open
			func FUNC_SQRT() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_SQRT.rawValue, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
			open
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			open
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			open
			func L_BRACKET() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACKET.rawValue, 0)
			}
			open
			func R_BRACKET() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACKET.rawValue, 0)
			}
			open
			func FUNC_OVERLINE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_OVERLINE.rawValue, 0)
			}
			open
			func mp() -> MpContext? {
				return getRuleContext(MpContext.self, 0)
			}
			open
			func FUNC_SUM() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_SUM.rawValue, 0)
			}
			open
			func FUNC_PROD() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_PROD.rawValue, 0)
			}
			open
			func subeq() -> SubeqContext? {
				return getRuleContext(SubeqContext.self, 0)
			}
			open
			func FUNC_LIM() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.FUNC_LIM.rawValue, 0)
			}
			open
			func limit_sub() -> Limit_subContext? {
				return getRuleContext(Limit_subContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_func
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterFunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitFunc(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitFunc(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitFunc(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func `func`() throws -> FuncContext {
		var _localctx: FuncContext
		_localctx = FuncContext(_ctx, getState())
		try enterRule(_localctx, 64, LaTeXParser.RULE_func)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(460)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .FUNC_EXP:fallthrough
		 	case .FUNC_LOG:fallthrough
		 	case .FUNC_LG:fallthrough
		 	case .FUNC_LN:fallthrough
		 	case .FUNC_SIN:fallthrough
		 	case .FUNC_COS:fallthrough
		 	case .FUNC_TAN:fallthrough
		 	case .FUNC_CSC:fallthrough
		 	case .FUNC_SEC:fallthrough
		 	case .FUNC_COT:fallthrough
		 	case .FUNC_ARCSIN:fallthrough
		 	case .FUNC_ARCCOS:fallthrough
		 	case .FUNC_ARCTAN:fallthrough
		 	case .FUNC_ARCCSC:fallthrough
		 	case .FUNC_ARCSEC:fallthrough
		 	case .FUNC_ARCCOT:fallthrough
		 	case .FUNC_SINH:fallthrough
		 	case .FUNC_COSH:fallthrough
		 	case .FUNC_TANH:fallthrough
		 	case .FUNC_ARSINH:fallthrough
		 	case .FUNC_ARCOSH:fallthrough
		 	case .FUNC_ARTANH:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(371)
		 		try func_normal()
		 		setState(384)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,40, _ctx)) {
		 		case 1:
		 			setState(373)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (_la == LaTeXParser.Tokens.UNDERSCORE.rawValue) {
		 				setState(372)
		 				try subexpr()

		 			}

		 			setState(376)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (_la == LaTeXParser.Tokens.CARET.rawValue) {
		 				setState(375)
		 				try supexpr()

		 			}


		 			break
		 		case 2:
		 			setState(379)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (_la == LaTeXParser.Tokens.CARET.rawValue) {
		 				setState(378)
		 				try supexpr()

		 			}

		 			setState(382)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (_la == LaTeXParser.Tokens.UNDERSCORE.rawValue) {
		 				setState(381)
		 				try subexpr()

		 			}


		 			break
		 		default: break
		 		}
		 		setState(391)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,41, _ctx)) {
		 		case 1:
		 			setState(386)
		 			try match(LaTeXParser.Tokens.L_PAREN.rawValue)
		 			setState(387)
		 			try func_arg()
		 			setState(388)
		 			try match(LaTeXParser.Tokens.R_PAREN.rawValue)

		 			break
		 		case 2:
		 			setState(390)
		 			try func_arg_noparens()

		 			break
		 		default: break
		 		}

		 		break
		 	case .LETTER:fallthrough
		 	case .SYMBOL:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(393)
		 		_la = try _input.LA(1)
		 		if (!(_la == LaTeXParser.Tokens.LETTER.rawValue || _la == LaTeXParser.Tokens.SYMBOL.rawValue)) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(406)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,46, _ctx)) {
		 		case 1:
		 			setState(395)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (_la == LaTeXParser.Tokens.UNDERSCORE.rawValue) {
		 				setState(394)
		 				try subexpr()

		 			}

		 			setState(398)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (_la == LaTeXParser.Tokens.SINGLE_QUOTES.rawValue) {
		 				setState(397)
		 				try match(LaTeXParser.Tokens.SINGLE_QUOTES.rawValue)

		 			}


		 			break
		 		case 2:
		 			setState(401)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (_la == LaTeXParser.Tokens.SINGLE_QUOTES.rawValue) {
		 				setState(400)
		 				try match(LaTeXParser.Tokens.SINGLE_QUOTES.rawValue)

		 			}

		 			setState(404)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (_la == LaTeXParser.Tokens.UNDERSCORE.rawValue) {
		 				setState(403)
		 				try subexpr()

		 			}


		 			break
		 		default: break
		 		}
		 		setState(408)
		 		try match(LaTeXParser.Tokens.L_PAREN.rawValue)
		 		setState(409)
		 		try args()
		 		setState(410)
		 		try match(LaTeXParser.Tokens.R_PAREN.rawValue)

		 		break

		 	case .FUNC_INT:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(412)
		 		try match(LaTeXParser.Tokens.FUNC_INT.rawValue)
		 		setState(419)
		 		try _errHandler.sync(self)
		 		switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 		case .UNDERSCORE:
		 		 	setState(413)
		 		 	try subexpr()
		 		 	setState(414)
		 		 	try supexpr()

		 			break

		 		case .CARET:
		 		 	setState(416)
		 		 	try supexpr()
		 		 	setState(417)
		 		 	try subexpr()

		 			break
		 		case .ADD:fallthrough
		 		case .SUB:fallthrough
		 		case .L_PAREN:fallthrough
		 		case .L_BRACE:fallthrough
		 		case .L_BRACE_LITERAL:fallthrough
		 		case .L_BRACKET:fallthrough
		 		case .BAR:fallthrough
		 		case .L_BAR:fallthrough
		 		case .L_ANGLE:fallthrough
		 		case .FUNC_LIM:fallthrough
		 		case .FUNC_INT:fallthrough
		 		case .FUNC_SUM:fallthrough
		 		case .FUNC_PROD:fallthrough
		 		case .FUNC_EXP:fallthrough
		 		case .FUNC_LOG:fallthrough
		 		case .FUNC_LG:fallthrough
		 		case .FUNC_LN:fallthrough
		 		case .FUNC_SIN:fallthrough
		 		case .FUNC_COS:fallthrough
		 		case .FUNC_TAN:fallthrough
		 		case .FUNC_CSC:fallthrough
		 		case .FUNC_SEC:fallthrough
		 		case .FUNC_COT:fallthrough
		 		case .FUNC_ARCSIN:fallthrough
		 		case .FUNC_ARCCOS:fallthrough
		 		case .FUNC_ARCTAN:fallthrough
		 		case .FUNC_ARCCSC:fallthrough
		 		case .FUNC_ARCSEC:fallthrough
		 		case .FUNC_ARCCOT:fallthrough
		 		case .FUNC_SINH:fallthrough
		 		case .FUNC_COSH:fallthrough
		 		case .FUNC_TANH:fallthrough
		 		case .FUNC_ARSINH:fallthrough
		 		case .FUNC_ARCOSH:fallthrough
		 		case .FUNC_ARTANH:fallthrough
		 		case .L_FLOOR:fallthrough
		 		case .L_CEIL:fallthrough
		 		case .FUNC_SQRT:fallthrough
		 		case .FUNC_OVERLINE:fallthrough
		 		case .CMD_FRAC:fallthrough
		 		case .CMD_BINOM:fallthrough
		 		case .CMD_DBINOM:fallthrough
		 		case .CMD_TBINOM:fallthrough
		 		case .CMD_MATHIT:fallthrough
		 		case .DIFFERENTIAL:fallthrough
		 		case .LETTER:fallthrough
		 		case .DIGIT:fallthrough
		 		case .SYMBOL:
		 			break
		 		default:
		 			break
		 		}
		 		setState(427)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,49, _ctx)) {
		 		case 1:
		 			setState(422)
		 			try _errHandler.sync(self)
		 			switch (try getInterpreter().adaptivePredict(_input,48,_ctx)) {
		 			case 1:
		 				setState(421)
		 				try additive(0)

		 				break
		 			default: break
		 			}
		 			setState(424)
		 			try match(LaTeXParser.Tokens.DIFFERENTIAL.rawValue)

		 			break
		 		case 2:
		 			setState(425)
		 			try frac()

		 			break
		 		case 3:
		 			setState(426)
		 			try additive(0)

		 			break
		 		default: break
		 		}

		 		break

		 	case .FUNC_SQRT:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(429)
		 		try match(LaTeXParser.Tokens.FUNC_SQRT.rawValue)
		 		setState(434)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == LaTeXParser.Tokens.L_BRACKET.rawValue) {
		 			setState(430)
		 			try match(LaTeXParser.Tokens.L_BRACKET.rawValue)
		 			setState(431)
		 			try {
		 					let assignmentValue = try expr()
		 					_localctx.castdown(FuncContext.self).root = assignmentValue
		 			     }()

		 			setState(432)
		 			try match(LaTeXParser.Tokens.R_BRACKET.rawValue)

		 		}

		 		setState(436)
		 		try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 		setState(437)
		 		try {
		 				let assignmentValue = try expr()
		 				_localctx.castdown(FuncContext.self).base = assignmentValue
		 		     }()

		 		setState(438)
		 		try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		 		break

		 	case .FUNC_OVERLINE:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(440)
		 		try match(LaTeXParser.Tokens.FUNC_OVERLINE.rawValue)
		 		setState(441)
		 		try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 		setState(442)
		 		try {
		 				let assignmentValue = try expr()
		 				_localctx.castdown(FuncContext.self).base = assignmentValue
		 		     }()

		 		setState(443)
		 		try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		 		break
		 	case .FUNC_SUM:fallthrough
		 	case .FUNC_PROD:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(445)
		 		_la = try _input.LA(1)
		 		if (!(_la == LaTeXParser.Tokens.FUNC_SUM.rawValue || _la == LaTeXParser.Tokens.FUNC_PROD.rawValue)) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(452)
		 		try _errHandler.sync(self)
		 		switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 		case .UNDERSCORE:
		 			setState(446)
		 			try subeq()
		 			setState(447)
		 			try supexpr()

		 			break

		 		case .CARET:
		 			setState(449)
		 			try supexpr()
		 			setState(450)
		 			try subeq()

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}
		 		setState(454)
		 		try mp(0)

		 		break

		 	case .FUNC_LIM:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(456)
		 		try match(LaTeXParser.Tokens.FUNC_LIM.rawValue)
		 		setState(457)
		 		try limit_sub()
		 		setState(458)
		 		try mp(0)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgsContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func args() -> ArgsContext? {
				return getRuleContext(ArgsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_args
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterArgs(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitArgs(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitArgs(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitArgs(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func args() throws -> ArgsContext {
		var _localctx: ArgsContext
		_localctx = ArgsContext(_ctx, getState())
		try enterRule(_localctx, 66, LaTeXParser.RULE_args)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(467)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,53, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(462)
		 		try expr()
		 		setState(463)
		 		try match(LaTeXParser.Tokens.T__0.rawValue)
		 		setState(464)
		 		try args()


		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(466)
		 		try expr()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Limit_subContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func L_BRACE() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.L_BRACE.rawValue)
			}
			open
			func L_BRACE(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, i)
			}
			open
			func LIM_APPROACH_SYM() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.LIM_APPROACH_SYM.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func R_BRACE() -> [TerminalNode] {
				return getTokens(LaTeXParser.Tokens.R_BRACE.rawValue)
			}
			open
			func R_BRACE(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, i)
			}
			open
			func LETTER() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.LETTER.rawValue, 0)
			}
			open
			func SYMBOL() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.SYMBOL.rawValue, 0)
			}
			open
			func CARET() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CARET.rawValue, 0)
			}
			open
			func ADD() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.ADD.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.SUB.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_limit_sub
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterLimit_sub(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitLimit_sub(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitLimit_sub(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitLimit_sub(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func limit_sub() throws -> Limit_subContext {
		var _localctx: Limit_subContext
		_localctx = Limit_subContext(_ctx, getState())
		try enterRule(_localctx, 68, LaTeXParser.RULE_limit_sub)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(469)
		 	try match(LaTeXParser.Tokens.UNDERSCORE.rawValue)
		 	setState(470)
		 	try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 	setState(471)
		 	_la = try _input.LA(1)
		 	if (!(_la == LaTeXParser.Tokens.LETTER.rawValue || _la == LaTeXParser.Tokens.SYMBOL.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(472)
		 	try match(LaTeXParser.Tokens.LIM_APPROACH_SYM.rawValue)
		 	setState(473)
		 	try expr()
		 	setState(482)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == LaTeXParser.Tokens.CARET.rawValue) {
		 		setState(474)
		 		try match(LaTeXParser.Tokens.CARET.rawValue)
		 		setState(480)
		 		try _errHandler.sync(self)
		 		switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 		case .L_BRACE:
		 			setState(475)
		 			try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 			setState(476)
		 			_la = try _input.LA(1)
		 			if (!(_la == LaTeXParser.Tokens.ADD.rawValue || _la == LaTeXParser.Tokens.SUB.rawValue)) {
		 			try _errHandler.recoverInline(self)
		 			}
		 			else {
		 				_errHandler.reportMatch(self)
		 				try consume()
		 			}
		 			setState(477)
		 			try match(LaTeXParser.Tokens.R_BRACE.rawValue)


		 			break

		 		case .ADD:
		 			setState(478)
		 			try match(LaTeXParser.Tokens.ADD.rawValue)

		 			break

		 		case .SUB:
		 			setState(479)
		 			try match(LaTeXParser.Tokens.SUB.rawValue)

		 			break
		 		default:
		 			throw ANTLRException.recognition(e: NoViableAltException(self))
		 		}

		 	}

		 	setState(484)
		 	try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Func_argContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func func_arg() -> Func_argContext? {
				return getRuleContext(Func_argContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_func_arg
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterFunc_arg(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitFunc_arg(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitFunc_arg(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitFunc_arg(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func func_arg() throws -> Func_argContext {
		var _localctx: Func_argContext
		_localctx = Func_argContext(_ctx, getState())
		try enterRule(_localctx, 70, LaTeXParser.RULE_func_arg)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(491)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,56, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(486)
		 		try expr()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(487)
		 		try expr()
		 		setState(488)
		 		try match(LaTeXParser.Tokens.T__0.rawValue)
		 		setState(489)
		 		try func_arg()


		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class Func_arg_noparensContext: ParserRuleContext {
			open
			func mp_nofunc() -> Mp_nofuncContext? {
				return getRuleContext(Mp_nofuncContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_func_arg_noparens
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterFunc_arg_noparens(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitFunc_arg_noparens(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitFunc_arg_noparens(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitFunc_arg_noparens(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func func_arg_noparens() throws -> Func_arg_noparensContext {
		var _localctx: Func_arg_noparensContext
		_localctx = Func_arg_noparensContext(_ctx, getState())
		try enterRule(_localctx, 72, LaTeXParser.RULE_func_arg_noparens)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(493)
		 	try mp_nofunc(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SubexprContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func atom() -> AtomContext? {
				return getRuleContext(AtomContext.self, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_subexpr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterSubexpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitSubexpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitSubexpr(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitSubexpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func subexpr() throws -> SubexprContext {
		var _localctx: SubexprContext
		_localctx = SubexprContext(_ctx, getState())
		try enterRule(_localctx, 74, LaTeXParser.RULE_subexpr)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(495)
		 	try match(LaTeXParser.Tokens.UNDERSCORE.rawValue)
		 	setState(501)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .BAR:fallthrough
		 	case .L_BAR:fallthrough
		 	case .L_ANGLE:fallthrough
		 	case .CMD_FRAC:fallthrough
		 	case .CMD_BINOM:fallthrough
		 	case .CMD_DBINOM:fallthrough
		 	case .CMD_TBINOM:fallthrough
		 	case .CMD_MATHIT:fallthrough
		 	case .DIFFERENTIAL:fallthrough
		 	case .LETTER:fallthrough
		 	case .DIGIT:fallthrough
		 	case .SYMBOL:
		 		setState(496)
		 		try atom()

		 		break

		 	case .L_BRACE:
		 		setState(497)
		 		try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 		setState(498)
		 		try expr()
		 		setState(499)
		 		try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SupexprContext: ParserRuleContext {
			open
			func CARET() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.CARET.rawValue, 0)
			}
			open
			func atom() -> AtomContext? {
				return getRuleContext(AtomContext.self, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_supexpr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterSupexpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitSupexpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitSupexpr(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitSupexpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func supexpr() throws -> SupexprContext {
		var _localctx: SupexprContext
		_localctx = SupexprContext(_ctx, getState())
		try enterRule(_localctx, 76, LaTeXParser.RULE_supexpr)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(503)
		 	try match(LaTeXParser.Tokens.CARET.rawValue)
		 	setState(509)
		 	try _errHandler.sync(self)
		 	switch (LaTeXParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .BAR:fallthrough
		 	case .L_BAR:fallthrough
		 	case .L_ANGLE:fallthrough
		 	case .CMD_FRAC:fallthrough
		 	case .CMD_BINOM:fallthrough
		 	case .CMD_DBINOM:fallthrough
		 	case .CMD_TBINOM:fallthrough
		 	case .CMD_MATHIT:fallthrough
		 	case .DIFFERENTIAL:fallthrough
		 	case .LETTER:fallthrough
		 	case .DIGIT:fallthrough
		 	case .SYMBOL:
		 		setState(504)
		 		try atom()

		 		break

		 	case .L_BRACE:
		 		setState(505)
		 		try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 		setState(506)
		 		try expr()
		 		setState(507)
		 		try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SubeqContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func equality() -> EqualityContext? {
				return getRuleContext(EqualityContext.self, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_subeq
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterSubeq(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitSubeq(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitSubeq(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitSubeq(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func subeq() throws -> SubeqContext {
		var _localctx: SubeqContext
		_localctx = SubeqContext(_ctx, getState())
		try enterRule(_localctx, 78, LaTeXParser.RULE_subeq)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(511)
		 	try match(LaTeXParser.Tokens.UNDERSCORE.rawValue)
		 	setState(512)
		 	try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 	setState(513)
		 	try equality()
		 	setState(514)
		 	try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SupeqContext: ParserRuleContext {
			open
			func UNDERSCORE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.UNDERSCORE.rawValue, 0)
			}
			open
			func L_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.L_BRACE.rawValue, 0)
			}
			open
			func equality() -> EqualityContext? {
				return getRuleContext(EqualityContext.self, 0)
			}
			open
			func R_BRACE() -> TerminalNode? {
				return getToken(LaTeXParser.Tokens.R_BRACE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXParser.RULE_supeq
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.enterSupeq(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXListener {
				listener.exitSupeq(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXVisitor {
			    return visitor.visitSupeq(self)
			}
			else if let visitor = visitor as? LaTeXBaseVisitor {
			    return visitor.visitSupeq(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func supeq() throws -> SupeqContext {
		var _localctx: SupeqContext
		_localctx = SupeqContext(_ctx, getState())
		try enterRule(_localctx, 80, LaTeXParser.RULE_supeq)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(516)
		 	try match(LaTeXParser.Tokens.UNDERSCORE.rawValue)
		 	setState(517)
		 	try match(LaTeXParser.Tokens.L_BRACE.rawValue)
		 	setState(518)
		 	try equality()
		 	setState(519)
		 	try match(LaTeXParser.Tokens.R_BRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  1:
			return try relation_sempred(_localctx?.castdown(RelationContext.self), predIndex)
		case  4:
			return try additive_sempred(_localctx?.castdown(AdditiveContext.self), predIndex)
		case  5:
			return try mp_sempred(_localctx?.castdown(MpContext.self), predIndex)
		case  6:
			return try mp_nofunc_sempred(_localctx?.castdown(Mp_nofuncContext.self), predIndex)
		case  15:
			return try exp_sempred(_localctx?.castdown(ExpContext.self), predIndex)
		case  16:
			return try exp_nofunc_sempred(_localctx?.castdown(Exp_nofuncContext.self), predIndex)
	    default: return true
		}
	}
	private func relation_sempred(_ _localctx: RelationContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 2)
		    default: return true
		}
	}
	private func additive_sempred(_ _localctx: AdditiveContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 1:return precpred(_ctx, 2)
		    default: return true
		}
	}
	private func mp_sempred(_ _localctx: MpContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 2:return precpred(_ctx, 2)
		    default: return true
		}
	}
	private func mp_nofunc_sempred(_ _localctx: Mp_nofuncContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 3:return precpred(_ctx, 2)
		    default: return true
		}
	}
	private func exp_sempred(_ _localctx: ExpContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 4:return precpred(_ctx, 2)
		    default: return true
		}
	}
	private func exp_nofunc_sempred(_ _localctx: Exp_nofuncContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 5:return precpred(_ctx, 2)
		    default: return true
		}
	}

	static let _serializedATN:[Int] = [
		4,1,91,522,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,7,
		7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,14,
		2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,7,21,
		2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,7,28,
		2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,2,35,7,35,
		2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,1,0,1,0,1,1,1,1,1,1,
		1,1,1,1,1,1,5,1,91,8,1,10,1,12,1,94,9,1,1,2,1,2,1,2,1,2,1,3,1,3,1,4,1,
		4,1,4,1,4,1,4,1,4,5,4,108,8,4,10,4,12,4,111,9,4,1,5,1,5,1,5,1,5,1,5,1,
		5,5,5,119,8,5,10,5,12,5,122,9,5,1,6,1,6,1,6,1,6,1,6,1,6,5,6,130,8,6,10,
		6,12,6,133,9,6,1,7,1,7,1,7,4,7,138,8,7,11,7,12,7,139,3,7,142,8,7,1,8,1,
		8,1,8,1,8,5,8,148,8,8,10,8,12,8,151,9,8,3,8,153,8,8,1,9,1,9,5,9,157,8,
		9,10,9,12,9,160,9,9,1,10,1,10,5,10,164,8,10,10,10,12,10,167,9,10,1,11,
		1,11,3,11,171,8,11,1,12,1,12,1,12,1,12,1,12,1,12,3,12,179,8,12,1,13,1,
		13,1,13,1,13,3,13,185,8,13,1,13,1,13,1,14,1,14,1,14,1,14,3,14,193,8,14,
		1,14,1,14,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,1,15,3,15,207,8,
		15,1,15,3,15,210,8,15,5,15,212,8,15,10,15,12,15,215,9,15,1,16,1,16,1,16,
		1,16,1,16,1,16,1,16,1,16,1,16,1,16,3,16,227,8,16,1,16,3,16,230,8,16,5,
		16,232,8,16,10,16,12,16,235,9,16,1,17,1,17,1,17,1,17,1,17,1,17,3,17,243,
		8,17,1,18,1,18,1,18,1,18,1,18,3,18,250,8,18,1,19,1,19,1,19,1,19,1,19,1,
		19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,3,19,268,8,19,1,20,
		1,20,1,20,1,20,1,21,4,21,275,8,21,11,21,12,21,276,1,21,1,21,1,21,1,21,
		5,21,283,8,21,10,21,12,21,286,9,21,1,21,1,21,4,21,290,8,21,11,21,12,21,
		291,3,21,294,8,21,1,22,1,22,3,22,298,8,22,1,22,3,22,301,8,22,1,22,3,22,
		304,8,22,1,22,3,22,307,8,22,3,22,309,8,22,1,22,1,22,1,22,1,22,1,22,1,22,
		1,22,3,22,318,8,22,1,23,1,23,1,23,1,23,1,24,1,24,1,24,1,24,1,25,1,25,1,
		25,1,25,1,25,1,26,5,26,334,8,26,10,26,12,26,337,9,26,1,27,1,27,1,27,1,
		27,1,27,1,27,3,27,345,8,27,1,27,1,27,1,27,1,27,1,27,3,27,352,8,27,1,28,
		1,28,1,28,1,28,1,28,1,28,1,28,1,28,1,29,1,29,1,29,1,29,1,30,1,30,1,30,
		1,30,1,31,1,31,1,32,1,32,3,32,374,8,32,1,32,3,32,377,8,32,1,32,3,32,380,
		8,32,1,32,3,32,383,8,32,3,32,385,8,32,1,32,1,32,1,32,1,32,1,32,3,32,392,
		8,32,1,32,1,32,3,32,396,8,32,1,32,3,32,399,8,32,1,32,3,32,402,8,32,1,32,
		3,32,405,8,32,3,32,407,8,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,
		32,1,32,1,32,3,32,420,8,32,1,32,3,32,423,8,32,1,32,1,32,1,32,3,32,428,
		8,32,1,32,1,32,1,32,1,32,1,32,3,32,435,8,32,1,32,1,32,1,32,1,32,1,32,1,
		32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,3,32,453,8,32,1,32,
		1,32,1,32,1,32,1,32,1,32,3,32,461,8,32,1,33,1,33,1,33,1,33,1,33,3,33,468,
		8,33,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,1,34,3,34,481,8,
		34,3,34,483,8,34,1,34,1,34,1,35,1,35,1,35,1,35,1,35,3,35,492,8,35,1,36,
		1,36,1,37,1,37,1,37,1,37,1,37,1,37,3,37,502,8,37,1,38,1,38,1,38,1,38,1,
		38,1,38,3,38,510,8,38,1,39,1,39,1,39,1,39,1,39,1,40,1,40,1,40,1,40,1,40,
		1,40,0,6,2,8,10,12,30,32,41,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,
		32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,
		80,0,9,2,0,79,82,85,86,1,0,15,16,3,0,17,18,65,67,75,75,2,0,77,77,91,91,
		1,0,27,28,2,0,27,27,29,29,1,0,69,71,1,0,37,58,1,0,35,36,563,0,82,1,0,0,
		0,2,84,1,0,0,0,4,95,1,0,0,0,6,99,1,0,0,0,8,101,1,0,0,0,10,112,1,0,0,0,
		12,123,1,0,0,0,14,141,1,0,0,0,16,152,1,0,0,0,18,154,1,0,0,0,20,161,1,0,
		0,0,22,170,1,0,0,0,24,172,1,0,0,0,26,180,1,0,0,0,28,188,1,0,0,0,30,196,
		1,0,0,0,32,216,1,0,0,0,34,242,1,0,0,0,36,249,1,0,0,0,38,267,1,0,0,0,40,
		269,1,0,0,0,42,274,1,0,0,0,44,317,1,0,0,0,46,319,1,0,0,0,48,323,1,0,0,
		0,50,327,1,0,0,0,52,335,1,0,0,0,54,338,1,0,0,0,56,353,1,0,0,0,58,361,1,
		0,0,0,60,365,1,0,0,0,62,369,1,0,0,0,64,460,1,0,0,0,66,467,1,0,0,0,68,469,
		1,0,0,0,70,491,1,0,0,0,72,493,1,0,0,0,74,495,1,0,0,0,76,503,1,0,0,0,78,
		511,1,0,0,0,80,516,1,0,0,0,82,83,3,2,1,0,83,1,1,0,0,0,84,85,6,1,-1,0,85,
		86,3,6,3,0,86,92,1,0,0,0,87,88,10,2,0,0,88,89,7,0,0,0,89,91,3,2,1,3,90,
		87,1,0,0,0,91,94,1,0,0,0,92,90,1,0,0,0,92,93,1,0,0,0,93,3,1,0,0,0,94,92,
		1,0,0,0,95,96,3,6,3,0,96,97,5,79,0,0,97,98,3,6,3,0,98,5,1,0,0,0,99,100,
		3,8,4,0,100,7,1,0,0,0,101,102,6,4,-1,0,102,103,3,10,5,0,103,109,1,0,0,
		0,104,105,10,2,0,0,105,106,7,1,0,0,106,108,3,8,4,3,107,104,1,0,0,0,108,
		111,1,0,0,0,109,107,1,0,0,0,109,110,1,0,0,0,110,9,1,0,0,0,111,109,1,0,
		0,0,112,113,6,5,-1,0,113,114,3,14,7,0,114,120,1,0,0,0,115,116,10,2,0,0,
		116,117,7,2,0,0,117,119,3,10,5,3,118,115,1,0,0,0,119,122,1,0,0,0,120,118,
		1,0,0,0,120,121,1,0,0,0,121,11,1,0,0,0,122,120,1,0,0,0,123,124,6,6,-1,
		0,124,125,3,16,8,0,125,131,1,0,0,0,126,127,10,2,0,0,127,128,7,2,0,0,128,
		130,3,12,6,3,129,126,1,0,0,0,130,133,1,0,0,0,131,129,1,0,0,0,131,132,1,
		0,0,0,132,13,1,0,0,0,133,131,1,0,0,0,134,135,7,1,0,0,135,142,3,14,7,0,
		136,138,3,18,9,0,137,136,1,0,0,0,138,139,1,0,0,0,139,137,1,0,0,0,139,140,
		1,0,0,0,140,142,1,0,0,0,141,134,1,0,0,0,141,137,1,0,0,0,142,15,1,0,0,0,
		143,144,7,1,0,0,144,153,3,16,8,0,145,149,3,18,9,0,146,148,3,20,10,0,147,
		146,1,0,0,0,148,151,1,0,0,0,149,147,1,0,0,0,149,150,1,0,0,0,150,153,1,
		0,0,0,151,149,1,0,0,0,152,143,1,0,0,0,152,145,1,0,0,0,153,17,1,0,0,0,154,
		158,3,30,15,0,155,157,3,22,11,0,156,155,1,0,0,0,157,160,1,0,0,0,158,156,
		1,0,0,0,158,159,1,0,0,0,159,19,1,0,0,0,160,158,1,0,0,0,161,165,3,32,16,
		0,162,164,3,22,11,0,163,162,1,0,0,0,164,167,1,0,0,0,165,163,1,0,0,0,165,
		166,1,0,0,0,166,21,1,0,0,0,167,165,1,0,0,0,168,171,5,89,0,0,169,171,3,
		24,12,0,170,168,1,0,0,0,170,169,1,0,0,0,171,23,1,0,0,0,172,178,5,27,0,
		0,173,179,3,28,14,0,174,179,3,26,13,0,175,176,3,28,14,0,176,177,3,26,13,
		0,177,179,1,0,0,0,178,173,1,0,0,0,178,174,1,0,0,0,178,175,1,0,0,0,179,
		25,1,0,0,0,180,181,5,73,0,0,181,184,5,21,0,0,182,185,3,6,3,0,183,185,3,
		4,2,0,184,182,1,0,0,0,184,183,1,0,0,0,185,186,1,0,0,0,186,187,5,22,0,0,
		187,27,1,0,0,0,188,189,5,74,0,0,189,192,5,21,0,0,190,193,3,6,3,0,191,193,
		3,4,2,0,192,190,1,0,0,0,192,191,1,0,0,0,193,194,1,0,0,0,194,195,5,22,0,
		0,195,29,1,0,0,0,196,197,6,15,-1,0,197,198,3,34,17,0,198,213,1,0,0,0,199,
		200,10,2,0,0,200,206,5,74,0,0,201,207,3,44,22,0,202,203,5,21,0,0,203,204,
		3,6,3,0,204,205,5,22,0,0,205,207,1,0,0,0,206,201,1,0,0,0,206,202,1,0,0,
		0,207,209,1,0,0,0,208,210,3,74,37,0,209,208,1,0,0,0,209,210,1,0,0,0,210,
		212,1,0,0,0,211,199,1,0,0,0,212,215,1,0,0,0,213,211,1,0,0,0,213,214,1,
		0,0,0,214,31,1,0,0,0,215,213,1,0,0,0,216,217,6,16,-1,0,217,218,3,36,18,
		0,218,233,1,0,0,0,219,220,10,2,0,0,220,226,5,74,0,0,221,227,3,44,22,0,
		222,223,5,21,0,0,223,224,3,6,3,0,224,225,5,22,0,0,225,227,1,0,0,0,226,
		221,1,0,0,0,226,222,1,0,0,0,227,229,1,0,0,0,228,230,3,74,37,0,229,228,
		1,0,0,0,229,230,1,0,0,0,230,232,1,0,0,0,231,219,1,0,0,0,232,235,1,0,0,
		0,233,231,1,0,0,0,233,234,1,0,0,0,234,33,1,0,0,0,235,233,1,0,0,0,236,243,
		3,38,19,0,237,243,3,40,20,0,238,243,3,64,32,0,239,243,3,44,22,0,240,243,
		3,58,29,0,241,243,3,60,30,0,242,236,1,0,0,0,242,237,1,0,0,0,242,238,1,
		0,0,0,242,239,1,0,0,0,242,240,1,0,0,0,242,241,1,0,0,0,243,35,1,0,0,0,244,
		250,3,38,19,0,245,250,3,40,20,0,246,250,3,44,22,0,247,250,3,58,29,0,248,
		250,3,60,30,0,249,244,1,0,0,0,249,245,1,0,0,0,249,246,1,0,0,0,249,247,
		1,0,0,0,249,248,1,0,0,0,250,37,1,0,0,0,251,252,5,19,0,0,252,253,3,6,3,
		0,253,254,5,20,0,0,254,268,1,0,0,0,255,256,5,25,0,0,256,257,3,6,3,0,257,
		258,5,26,0,0,258,268,1,0,0,0,259,260,5,21,0,0,260,261,3,6,3,0,261,262,
		5,22,0,0,262,268,1,0,0,0,263,264,5,23,0,0,264,265,3,6,3,0,265,266,5,24,
		0,0,266,268,1,0,0,0,267,251,1,0,0,0,267,255,1,0,0,0,267,259,1,0,0,0,267,
		263,1,0,0,0,268,39,1,0,0,0,269,270,5,27,0,0,270,271,3,6,3,0,271,272,5,
		27,0,0,272,41,1,0,0,0,273,275,5,78,0,0,274,273,1,0,0,0,275,276,1,0,0,0,
		276,274,1,0,0,0,276,277,1,0,0,0,277,284,1,0,0,0,278,279,5,1,0,0,279,280,
		5,78,0,0,280,281,5,78,0,0,281,283,5,78,0,0,282,278,1,0,0,0,283,286,1,0,
		0,0,284,282,1,0,0,0,284,285,1,0,0,0,285,293,1,0,0,0,286,284,1,0,0,0,287,
		289,5,2,0,0,288,290,5,78,0,0,289,288,1,0,0,0,290,291,1,0,0,0,291,289,1,
		0,0,0,291,292,1,0,0,0,292,294,1,0,0,0,293,287,1,0,0,0,293,294,1,0,0,0,
		294,43,1,0,0,0,295,308,7,3,0,0,296,298,3,74,37,0,297,296,1,0,0,0,297,298,
		1,0,0,0,298,300,1,0,0,0,299,301,5,90,0,0,300,299,1,0,0,0,300,301,1,0,0,
		0,301,309,1,0,0,0,302,304,5,90,0,0,303,302,1,0,0,0,303,304,1,0,0,0,304,
		306,1,0,0,0,305,307,3,74,37,0,306,305,1,0,0,0,306,307,1,0,0,0,307,309,
		1,0,0,0,308,297,1,0,0,0,308,303,1,0,0,0,309,318,1,0,0,0,310,318,3,42,21,
		0,311,318,5,76,0,0,312,318,3,50,25,0,313,318,3,54,27,0,314,318,3,56,28,
		0,315,318,3,46,23,0,316,318,3,48,24,0,317,295,1,0,0,0,317,310,1,0,0,0,
		317,311,1,0,0,0,317,312,1,0,0,0,317,313,1,0,0,0,317,314,1,0,0,0,317,315,
		1,0,0,0,317,316,1,0,0,0,318,45,1,0,0,0,319,320,5,30,0,0,320,321,3,6,3,
		0,321,322,7,4,0,0,322,47,1,0,0,0,323,324,7,5,0,0,324,325,3,6,3,0,325,326,
		5,31,0,0,326,49,1,0,0,0,327,328,5,72,0,0,328,329,5,21,0,0,329,330,3,52,
		26,0,330,331,5,22,0,0,331,51,1,0,0,0,332,334,5,77,0,0,333,332,1,0,0,0,
		334,337,1,0,0,0,335,333,1,0,0,0,335,336,1,0,0,0,336,53,1,0,0,0,337,335,
		1,0,0,0,338,344,5,68,0,0,339,345,5,78,0,0,340,341,5,21,0,0,341,342,3,6,
		3,0,342,343,5,22,0,0,343,345,1,0,0,0,344,339,1,0,0,0,344,340,1,0,0,0,345,
		351,1,0,0,0,346,352,5,78,0,0,347,348,5,21,0,0,348,349,3,6,3,0,349,350,
		5,22,0,0,350,352,1,0,0,0,351,346,1,0,0,0,351,347,1,0,0,0,352,55,1,0,0,
		0,353,354,7,6,0,0,354,355,5,21,0,0,355,356,3,6,3,0,356,357,5,22,0,0,357,
		358,5,21,0,0,358,359,3,6,3,0,359,360,5,22,0,0,360,57,1,0,0,0,361,362,5,
		59,0,0,362,363,3,6,3,0,363,364,5,60,0,0,364,59,1,0,0,0,365,366,5,61,0,
		0,366,367,3,6,3,0,367,368,5,62,0,0,368,61,1,0,0,0,369,370,7,7,0,0,370,
		63,1,0,0,0,371,384,3,62,31,0,372,374,3,74,37,0,373,372,1,0,0,0,373,374,
		1,0,0,0,374,376,1,0,0,0,375,377,3,76,38,0,376,375,1,0,0,0,376,377,1,0,
		0,0,377,385,1,0,0,0,378,380,3,76,38,0,379,378,1,0,0,0,379,380,1,0,0,0,
		380,382,1,0,0,0,381,383,3,74,37,0,382,381,1,0,0,0,382,383,1,0,0,0,383,
		385,1,0,0,0,384,373,1,0,0,0,384,379,1,0,0,0,385,391,1,0,0,0,386,387,5,
		19,0,0,387,388,3,70,35,0,388,389,5,20,0,0,389,392,1,0,0,0,390,392,3,72,
		36,0,391,386,1,0,0,0,391,390,1,0,0,0,392,461,1,0,0,0,393,406,7,3,0,0,394,
		396,3,74,37,0,395,394,1,0,0,0,395,396,1,0,0,0,396,398,1,0,0,0,397,399,
		5,90,0,0,398,397,1,0,0,0,398,399,1,0,0,0,399,407,1,0,0,0,400,402,5,90,
		0,0,401,400,1,0,0,0,401,402,1,0,0,0,402,404,1,0,0,0,403,405,3,74,37,0,
		404,403,1,0,0,0,404,405,1,0,0,0,405,407,1,0,0,0,406,395,1,0,0,0,406,401,
		1,0,0,0,407,408,1,0,0,0,408,409,5,19,0,0,409,410,3,66,33,0,410,411,5,20,
		0,0,411,461,1,0,0,0,412,419,5,34,0,0,413,414,3,74,37,0,414,415,3,76,38,
		0,415,420,1,0,0,0,416,417,3,76,38,0,417,418,3,74,37,0,418,420,1,0,0,0,
		419,413,1,0,0,0,419,416,1,0,0,0,419,420,1,0,0,0,420,427,1,0,0,0,421,423,
		3,8,4,0,422,421,1,0,0,0,422,423,1,0,0,0,423,424,1,0,0,0,424,428,5,76,0,
		0,425,428,3,54,27,0,426,428,3,8,4,0,427,422,1,0,0,0,427,425,1,0,0,0,427,
		426,1,0,0,0,428,461,1,0,0,0,429,434,5,63,0,0,430,431,5,25,0,0,431,432,
		3,6,3,0,432,433,5,26,0,0,433,435,1,0,0,0,434,430,1,0,0,0,434,435,1,0,0,
		0,435,436,1,0,0,0,436,437,5,21,0,0,437,438,3,6,3,0,438,439,5,22,0,0,439,
		461,1,0,0,0,440,441,5,64,0,0,441,442,5,21,0,0,442,443,3,6,3,0,443,444,
		5,22,0,0,444,461,1,0,0,0,445,452,7,8,0,0,446,447,3,78,39,0,447,448,3,76,
		38,0,448,453,1,0,0,0,449,450,3,76,38,0,450,451,3,78,39,0,451,453,1,0,0,
		0,452,446,1,0,0,0,452,449,1,0,0,0,453,454,1,0,0,0,454,455,3,10,5,0,455,
		461,1,0,0,0,456,457,5,32,0,0,457,458,3,68,34,0,458,459,3,10,5,0,459,461,
		1,0,0,0,460,371,1,0,0,0,460,393,1,0,0,0,460,412,1,0,0,0,460,429,1,0,0,
		0,460,440,1,0,0,0,460,445,1,0,0,0,460,456,1,0,0,0,461,65,1,0,0,0,462,463,
		3,6,3,0,463,464,5,1,0,0,464,465,3,66,33,0,465,468,1,0,0,0,466,468,3,6,
		3,0,467,462,1,0,0,0,467,466,1,0,0,0,468,67,1,0,0,0,469,470,5,73,0,0,470,
		471,5,21,0,0,471,472,7,3,0,0,472,473,5,33,0,0,473,482,3,6,3,0,474,480,
		5,74,0,0,475,476,5,21,0,0,476,477,7,1,0,0,477,481,5,22,0,0,478,481,5,15,
		0,0,479,481,5,16,0,0,480,475,1,0,0,0,480,478,1,0,0,0,480,479,1,0,0,0,481,
		483,1,0,0,0,482,474,1,0,0,0,482,483,1,0,0,0,483,484,1,0,0,0,484,485,5,
		22,0,0,485,69,1,0,0,0,486,492,3,6,3,0,487,488,3,6,3,0,488,489,5,1,0,0,
		489,490,3,70,35,0,490,492,1,0,0,0,491,486,1,0,0,0,491,487,1,0,0,0,492,
		71,1,0,0,0,493,494,3,12,6,0,494,73,1,0,0,0,495,501,5,73,0,0,496,502,3,
		44,22,0,497,498,5,21,0,0,498,499,3,6,3,0,499,500,5,22,0,0,500,502,1,0,
		0,0,501,496,1,0,0,0,501,497,1,0,0,0,502,75,1,0,0,0,503,509,5,74,0,0,504,
		510,3,44,22,0,505,506,5,21,0,0,506,507,3,6,3,0,507,508,5,22,0,0,508,510,
		1,0,0,0,509,504,1,0,0,0,509,505,1,0,0,0,510,77,1,0,0,0,511,512,5,73,0,
		0,512,513,5,21,0,0,513,514,3,4,2,0,514,515,5,22,0,0,515,79,1,0,0,0,516,
		517,5,73,0,0,517,518,5,21,0,0,518,519,3,4,2,0,519,520,5,22,0,0,520,81,
		1,0,0,0,59,92,109,120,131,139,141,149,152,158,165,170,178,184,192,206,
		209,213,226,229,233,242,249,267,276,284,291,293,297,300,303,306,308,317,
		335,344,351,373,376,379,382,384,391,395,398,401,404,406,419,422,427,434,
		452,460,467,480,482,491,501,509
	]

	public
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}