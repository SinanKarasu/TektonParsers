// Generated from /Volumes/GitHubDeveloper/Packages/TektonParsers/Grammar/LaTeXMath.g4 by ANTLR 4.13.2
@preconcurrency import Antlr4

open class LaTeXMathParser: Parser {

	internal static let _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = LaTeXMathParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(LaTeXMathParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, 
                 T__6 = 7, T__7 = 8, T__8 = 9, T__9 = 10, T__10 = 11, T__11 = 12, 
                 CMD_FRAC = 13, CMD_NABLA = 14, CMD_PARTIAL = 15, CMD_LEFT = 16, 
                 CMD_RIGHT = 17, CMD_TIMES = 18, CMD_DOT = 19, CMD_GREEK = 20, 
                 CMD_FUNC = 21, MULOP = 22, ID = 23, NUMBER = 24, WS = 25, 
                 SPCMD = 26
	}

	public
	static let RULE_prog = 0, RULE_expr = 1, RULE_addExpr = 2, RULE_mulExpr = 3, 
            RULE_unaryExpr = 4, RULE_powExpr = 5, RULE_postfix = 6, RULE_scripts = 7, 
            RULE_group = 8, RULE_primary = 9, RULE_frac = 10, RULE_nabla = 11, 
            RULE_partial = 12, RULE_greek = 13, RULE_arg = 14

	public
	static let ruleNames: [String] = [
		"prog", "expr", "addExpr", "mulExpr", "unaryExpr", "powExpr", "postfix", 
		"scripts", "group", "primary", "frac", "nabla", "partial", "greek", "arg"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'+'", "'-'", "'^'", "'_'", "'('", "')'", "'['", "']'", "'{'", "'}'", 
		"'\\{'", "'\\}'", "'\\frac'", "'\\nabla'", "'\\partial'", "'\\left'", 
		"'\\right'", "'\\times'", "'\\cdot'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "CMD_FRAC", 
		"CMD_NABLA", "CMD_PARTIAL", "CMD_LEFT", "CMD_RIGHT", "CMD_TIMES", "CMD_DOT", 
		"CMD_GREEK", "CMD_FUNC", "MULOP", "ID", "NUMBER", "WS", "SPCMD"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "LaTeXMath.g4" }

	override open
	func getRuleNames() -> [String] { return LaTeXMathParser.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return LaTeXMathParser._serializedATN }

	override open
	func getATN() -> ATN { return LaTeXMathParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return LaTeXMathParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.13.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,LaTeXMathParser._ATN,LaTeXMathParser._decisionToDFA, LaTeXMathParser._sharedContextCache)
	}


	public class ProgContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			open
			func EOF() -> TerminalNode? {
				return getToken(LaTeXMathParser.Tokens.EOF.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_prog
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterProg(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitProg(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitProg(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitProg(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func prog() throws -> ProgContext {
		var _localctx: ProgContext
		_localctx = ProgContext(_ctx, getState())
		try enterRule(_localctx, 0, LaTeXMathParser.RULE_prog)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(30)
		 	try expr()
		 	setState(31)
		 	try match(LaTeXMathParser.Tokens.EOF.rawValue)

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
			func addExpr() -> AddExprContext? {
				return getRuleContext(AddExprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_expr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitExpr(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
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
		try enterRule(_localctx, 2, LaTeXMathParser.RULE_expr)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(33)
		 	try addExpr()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AddExprContext: ParserRuleContext {
			open
			func mulExpr() -> [MulExprContext] {
				return getRuleContexts(MulExprContext.self)
			}
			open
			func mulExpr(_ i: Int) -> MulExprContext? {
				return getRuleContext(MulExprContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_addExpr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterAddExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitAddExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitAddExpr(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitAddExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func addExpr() throws -> AddExprContext {
		var _localctx: AddExprContext
		_localctx = AddExprContext(_ctx, getState())
		try enterRule(_localctx, 4, LaTeXMathParser.RULE_addExpr)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(35)
		 	try mulExpr()
		 	setState(40)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == LaTeXMathParser.Tokens.T__0.rawValue || _la == LaTeXMathParser.Tokens.T__1.rawValue) {
		 		setState(36)
		 		_la = try _input.LA(1)
		 		if (!(_la == LaTeXMathParser.Tokens.T__0.rawValue || _la == LaTeXMathParser.Tokens.T__1.rawValue)) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(37)
		 		try mulExpr()


		 		setState(42)
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

	public class MulExprContext: ParserRuleContext {
			open
			func unaryExpr() -> [UnaryExprContext] {
				return getRuleContexts(UnaryExprContext.self)
			}
			open
			func unaryExpr(_ i: Int) -> UnaryExprContext? {
				return getRuleContext(UnaryExprContext.self, i)
			}
			open
			func MULOP() -> [TerminalNode] {
				return getTokens(LaTeXMathParser.Tokens.MULOP.rawValue)
			}
			open
			func MULOP(_ i:Int) -> TerminalNode? {
				return getToken(LaTeXMathParser.Tokens.MULOP.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_mulExpr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterMulExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitMulExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitMulExpr(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitMulExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func mulExpr() throws -> MulExprContext {
		var _localctx: MulExprContext
		_localctx = MulExprContext(_ctx, getState())
		try enterRule(_localctx, 6, LaTeXMathParser.RULE_mulExpr)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(43)
		 	try unaryExpr()
		 	setState(50)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,2,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(45)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (_la == LaTeXMathParser.Tokens.MULOP.rawValue) {
		 				setState(44)
		 				try match(LaTeXMathParser.Tokens.MULOP.rawValue)

		 			}

		 			setState(47)
		 			try unaryExpr()


		 	 
		 		}
		 		setState(52)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,2,_ctx)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class UnaryExprContext: ParserRuleContext {
			open
			func unaryExpr() -> UnaryExprContext? {
				return getRuleContext(UnaryExprContext.self, 0)
			}
			open
			func powExpr() -> PowExprContext? {
				return getRuleContext(PowExprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_unaryExpr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterUnaryExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitUnaryExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitUnaryExpr(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitUnaryExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func unaryExpr() throws -> UnaryExprContext {
		var _localctx: UnaryExprContext
		_localctx = UnaryExprContext(_ctx, getState())
		try enterRule(_localctx, 8, LaTeXMathParser.RULE_unaryExpr)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(56)
		 	try _errHandler.sync(self)
		 	switch (LaTeXMathParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__0:fallthrough
		 	case .T__1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(53)
		 		_la = try _input.LA(1)
		 		if (!(_la == LaTeXMathParser.Tokens.T__0.rawValue || _la == LaTeXMathParser.Tokens.T__1.rawValue)) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(54)
		 		try unaryExpr()

		 		break
		 	case .T__4:fallthrough
		 	case .T__8:fallthrough
		 	case .CMD_FRAC:fallthrough
		 	case .CMD_NABLA:fallthrough
		 	case .CMD_PARTIAL:fallthrough
		 	case .CMD_GREEK:fallthrough
		 	case .CMD_FUNC:fallthrough
		 	case .ID:fallthrough
		 	case .NUMBER:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(55)
		 		try powExpr()

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

	public class PowExprContext: ParserRuleContext {
			open
			func `postfix`() -> PostfixContext? {
				return getRuleContext(PostfixContext.self, 0)
			}
			open
			func powExpr() -> PowExprContext? {
				return getRuleContext(PowExprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_powExpr
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterPowExpr(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitPowExpr(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitPowExpr(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitPowExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func powExpr() throws -> PowExprContext {
		var _localctx: PowExprContext
		_localctx = PowExprContext(_ctx, getState())
		try enterRule(_localctx, 10, LaTeXMathParser.RULE_powExpr)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(58)
		 	try `postfix`()
		 	setState(61)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == LaTeXMathParser.Tokens.T__2.rawValue) {
		 		setState(59)
		 		try match(LaTeXMathParser.Tokens.T__2.rawValue)
		 		setState(60)
		 		try powExpr()

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
			func primary() -> PrimaryContext? {
				return getRuleContext(PrimaryContext.self, 0)
			}
			open
			func scripts() -> ScriptsContext? {
				return getRuleContext(ScriptsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_postfix
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterPostfix(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitPostfix(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitPostfix(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
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
		try enterRule(_localctx, 12, LaTeXMathParser.RULE_postfix)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(63)
		 	try primary()
		 	setState(65)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,5,_ctx)) {
		 	case 1:
		 		setState(64)
		 		try scripts()

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

	public class ScriptsContext: ParserRuleContext {
			open
			func group() -> [GroupContext] {
				return getRuleContexts(GroupContext.self)
			}
			open
			func group(_ i: Int) -> GroupContext? {
				return getRuleContext(GroupContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_scripts
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterScripts(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitScripts(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitScripts(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitScripts(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func scripts() throws -> ScriptsContext {
		var _localctx: ScriptsContext
		_localctx = ScriptsContext(_ctx, getState())
		try enterRule(_localctx, 14, LaTeXMathParser.RULE_scripts)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(79)
		 	try _errHandler.sync(self)
		 	switch (LaTeXMathParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__2:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(67)
		 		try match(LaTeXMathParser.Tokens.T__2.rawValue)
		 		setState(68)
		 		try group()
		 		setState(71)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,6,_ctx)) {
		 		case 1:
		 			setState(69)
		 			try match(LaTeXMathParser.Tokens.T__3.rawValue)
		 			setState(70)
		 			try group()

		 			break
		 		default: break
		 		}


		 		break

		 	case .T__3:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(73)
		 		try match(LaTeXMathParser.Tokens.T__3.rawValue)
		 		setState(74)
		 		try group()
		 		setState(77)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,7,_ctx)) {
		 		case 1:
		 			setState(75)
		 			try match(LaTeXMathParser.Tokens.T__2.rawValue)
		 			setState(76)
		 			try group()

		 			break
		 		default: break
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

	public class GroupContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_group
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterGroup(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitGroup(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitGroup(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
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
		try enterRule(_localctx, 16, LaTeXMathParser.RULE_group)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(97)
		 	try _errHandler.sync(self)
		 	switch (LaTeXMathParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__4:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(81)
		 		try match(LaTeXMathParser.Tokens.T__4.rawValue)
		 		setState(82)
		 		try expr()
		 		setState(83)
		 		try match(LaTeXMathParser.Tokens.T__5.rawValue)

		 		break

		 	case .T__6:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(85)
		 		try match(LaTeXMathParser.Tokens.T__6.rawValue)
		 		setState(86)
		 		try expr()
		 		setState(87)
		 		try match(LaTeXMathParser.Tokens.T__7.rawValue)

		 		break

		 	case .T__8:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(89)
		 		try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 		setState(90)
		 		try expr()
		 		setState(91)
		 		try match(LaTeXMathParser.Tokens.T__9.rawValue)

		 		break

		 	case .T__10:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(93)
		 		try match(LaTeXMathParser.Tokens.T__10.rawValue)
		 		setState(94)
		 		try expr()
		 		setState(95)
		 		try match(LaTeXMathParser.Tokens.T__11.rawValue)

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

	public class PrimaryContext: ParserRuleContext {
			open
			func NUMBER() -> TerminalNode? {
				return getToken(LaTeXMathParser.Tokens.NUMBER.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(LaTeXMathParser.Tokens.ID.rawValue, 0)
			}
			open
			func greek() -> GreekContext? {
				return getRuleContext(GreekContext.self, 0)
			}
			open
			func CMD_FUNC() -> TerminalNode? {
				return getToken(LaTeXMathParser.Tokens.CMD_FUNC.rawValue, 0)
			}
			open
			func arg() -> ArgContext? {
				return getRuleContext(ArgContext.self, 0)
			}
			open
			func nabla() -> NablaContext? {
				return getRuleContext(NablaContext.self, 0)
			}
			open
			func partial() -> PartialContext? {
				return getRuleContext(PartialContext.self, 0)
			}
			open
			func frac() -> FracContext? {
				return getRuleContext(FracContext.self, 0)
			}
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_primary
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterPrimary(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitPrimary(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitPrimary(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitPrimary(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func primary() throws -> PrimaryContext {
		var _localctx: PrimaryContext
		_localctx = PrimaryContext(_ctx, getState())
		try enterRule(_localctx, 18, LaTeXMathParser.RULE_primary)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(115)
		 	try _errHandler.sync(self)
		 	switch (LaTeXMathParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .NUMBER:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(99)
		 		try match(LaTeXMathParser.Tokens.NUMBER.rawValue)

		 		break

		 	case .ID:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(100)
		 		try match(LaTeXMathParser.Tokens.ID.rawValue)

		 		break

		 	case .CMD_GREEK:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(101)
		 		try greek()

		 		break

		 	case .CMD_FUNC:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(102)
		 		try match(LaTeXMathParser.Tokens.CMD_FUNC.rawValue)
		 		setState(103)
		 		try arg()

		 		break

		 	case .CMD_NABLA:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(104)
		 		try nabla()

		 		break

		 	case .CMD_PARTIAL:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(105)
		 		try partial()

		 		break

		 	case .CMD_FRAC:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(106)
		 		try frac()

		 		break

		 	case .T__4:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(107)
		 		try match(LaTeXMathParser.Tokens.T__4.rawValue)
		 		setState(108)
		 		try expr()
		 		setState(109)
		 		try match(LaTeXMathParser.Tokens.T__5.rawValue)

		 		break

		 	case .T__8:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(111)
		 		try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 		setState(112)
		 		try expr()
		 		setState(113)
		 		try match(LaTeXMathParser.Tokens.T__9.rawValue)

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

	public class FracContext: ParserRuleContext {
			open
			func CMD_FRAC() -> TerminalNode? {
				return getToken(LaTeXMathParser.Tokens.CMD_FRAC.rawValue, 0)
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
			return LaTeXMathParser.RULE_frac
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterFrac(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitFrac(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitFrac(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
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
		try enterRule(_localctx, 20, LaTeXMathParser.RULE_frac)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(117)
		 	try match(LaTeXMathParser.Tokens.CMD_FRAC.rawValue)
		 	setState(118)
		 	try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 	setState(119)
		 	try expr()
		 	setState(120)
		 	try match(LaTeXMathParser.Tokens.T__9.rawValue)
		 	setState(121)
		 	try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 	setState(122)
		 	try expr()
		 	setState(123)
		 	try match(LaTeXMathParser.Tokens.T__9.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class NablaContext: ParserRuleContext {
			open
			func CMD_NABLA() -> TerminalNode? {
				return getToken(LaTeXMathParser.Tokens.CMD_NABLA.rawValue, 0)
			}
			open
			func scripts() -> ScriptsContext? {
				return getRuleContext(ScriptsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_nabla
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterNabla(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitNabla(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitNabla(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitNabla(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func nabla() throws -> NablaContext {
		var _localctx: NablaContext
		_localctx = NablaContext(_ctx, getState())
		try enterRule(_localctx, 22, LaTeXMathParser.RULE_nabla)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(125)
		 	try match(LaTeXMathParser.Tokens.CMD_NABLA.rawValue)
		 	setState(127)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,11,_ctx)) {
		 	case 1:
		 		setState(126)
		 		try scripts()

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

	public class PartialContext: ParserRuleContext {
			open
			func CMD_PARTIAL() -> TerminalNode? {
				return getToken(LaTeXMathParser.Tokens.CMD_PARTIAL.rawValue, 0)
			}
			open
			func scripts() -> ScriptsContext? {
				return getRuleContext(ScriptsContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_partial
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterPartial(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitPartial(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitPartial(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitPartial(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func partial() throws -> PartialContext {
		var _localctx: PartialContext
		_localctx = PartialContext(_ctx, getState())
		try enterRule(_localctx, 24, LaTeXMathParser.RULE_partial)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(129)
		 	try match(LaTeXMathParser.Tokens.CMD_PARTIAL.rawValue)
		 	setState(131)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,12,_ctx)) {
		 	case 1:
		 		setState(130)
		 		try scripts()

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

	public class GreekContext: ParserRuleContext {
			open
			func CMD_GREEK() -> TerminalNode? {
				return getToken(LaTeXMathParser.Tokens.CMD_GREEK.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_greek
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterGreek(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitGreek(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitGreek(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitGreek(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func greek() throws -> GreekContext {
		var _localctx: GreekContext
		_localctx = GreekContext(_ctx, getState())
		try enterRule(_localctx, 26, LaTeXMathParser.RULE_greek)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(133)
		 	try match(LaTeXMathParser.Tokens.CMD_GREEK.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgContext: ParserRuleContext {
			open
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return LaTeXMathParser.RULE_arg
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.enterArg(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? LaTeXMathListener {
				listener.exitArg(self)
			}
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? LaTeXMathVisitor {
			    return visitor.visitArg(self)
			}
			else if let visitor = visitor as? LaTeXMathBaseVisitor {
			    return visitor.visitArg(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func arg() throws -> ArgContext {
		var _localctx: ArgContext
		_localctx = ArgContext(_ctx, getState())
		try enterRule(_localctx, 28, LaTeXMathParser.RULE_arg)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(143)
		 	try _errHandler.sync(self)
		 	switch (LaTeXMathParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__8:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(135)
		 		try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 		setState(136)
		 		try expr()
		 		setState(137)
		 		try match(LaTeXMathParser.Tokens.T__9.rawValue)

		 		break

		 	case .T__4:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(139)
		 		try match(LaTeXMathParser.Tokens.T__4.rawValue)
		 		setState(140)
		 		try expr()
		 		setState(141)
		 		try match(LaTeXMathParser.Tokens.T__5.rawValue)

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

	static let _serializedATN:[Int] = [
		4,1,26,146,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,7,
		7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,14,
		1,0,1,0,1,0,1,1,1,1,1,2,1,2,1,2,5,2,39,8,2,10,2,12,2,42,9,2,1,3,1,3,3,
		3,46,8,3,1,3,5,3,49,8,3,10,3,12,3,52,9,3,1,4,1,4,1,4,3,4,57,8,4,1,5,1,
		5,1,5,3,5,62,8,5,1,6,1,6,3,6,66,8,6,1,7,1,7,1,7,1,7,3,7,72,8,7,1,7,1,7,
		1,7,1,7,3,7,78,8,7,3,7,80,8,7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,
		1,8,1,8,1,8,1,8,1,8,1,8,3,8,98,8,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,
		1,9,1,9,1,9,1,9,1,9,1,9,1,9,3,9,116,8,9,1,10,1,10,1,10,1,10,1,10,1,10,
		1,10,1,10,1,11,1,11,3,11,128,8,11,1,12,1,12,3,12,132,8,12,1,13,1,13,1,
		14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,144,8,14,1,14,0,0,15,0,2,4,
		6,8,10,12,14,16,18,20,22,24,26,28,0,1,1,0,1,2,153,0,30,1,0,0,0,2,33,1,
		0,0,0,4,35,1,0,0,0,6,43,1,0,0,0,8,56,1,0,0,0,10,58,1,0,0,0,12,63,1,0,0,
		0,14,79,1,0,0,0,16,97,1,0,0,0,18,115,1,0,0,0,20,117,1,0,0,0,22,125,1,0,
		0,0,24,129,1,0,0,0,26,133,1,0,0,0,28,143,1,0,0,0,30,31,3,2,1,0,31,32,5,
		0,0,1,32,1,1,0,0,0,33,34,3,4,2,0,34,3,1,0,0,0,35,40,3,6,3,0,36,37,7,0,
		0,0,37,39,3,6,3,0,38,36,1,0,0,0,39,42,1,0,0,0,40,38,1,0,0,0,40,41,1,0,
		0,0,41,5,1,0,0,0,42,40,1,0,0,0,43,50,3,8,4,0,44,46,5,22,0,0,45,44,1,0,
		0,0,45,46,1,0,0,0,46,47,1,0,0,0,47,49,3,8,4,0,48,45,1,0,0,0,49,52,1,0,
		0,0,50,48,1,0,0,0,50,51,1,0,0,0,51,7,1,0,0,0,52,50,1,0,0,0,53,54,7,0,0,
		0,54,57,3,8,4,0,55,57,3,10,5,0,56,53,1,0,0,0,56,55,1,0,0,0,57,9,1,0,0,
		0,58,61,3,12,6,0,59,60,5,3,0,0,60,62,3,10,5,0,61,59,1,0,0,0,61,62,1,0,
		0,0,62,11,1,0,0,0,63,65,3,18,9,0,64,66,3,14,7,0,65,64,1,0,0,0,65,66,1,
		0,0,0,66,13,1,0,0,0,67,68,5,3,0,0,68,71,3,16,8,0,69,70,5,4,0,0,70,72,3,
		16,8,0,71,69,1,0,0,0,71,72,1,0,0,0,72,80,1,0,0,0,73,74,5,4,0,0,74,77,3,
		16,8,0,75,76,5,3,0,0,76,78,3,16,8,0,77,75,1,0,0,0,77,78,1,0,0,0,78,80,
		1,0,0,0,79,67,1,0,0,0,79,73,1,0,0,0,80,15,1,0,0,0,81,82,5,5,0,0,82,83,
		3,2,1,0,83,84,5,6,0,0,84,98,1,0,0,0,85,86,5,7,0,0,86,87,3,2,1,0,87,88,
		5,8,0,0,88,98,1,0,0,0,89,90,5,9,0,0,90,91,3,2,1,0,91,92,5,10,0,0,92,98,
		1,0,0,0,93,94,5,11,0,0,94,95,3,2,1,0,95,96,5,12,0,0,96,98,1,0,0,0,97,81,
		1,0,0,0,97,85,1,0,0,0,97,89,1,0,0,0,97,93,1,0,0,0,98,17,1,0,0,0,99,116,
		5,24,0,0,100,116,5,23,0,0,101,116,3,26,13,0,102,103,5,21,0,0,103,116,3,
		28,14,0,104,116,3,22,11,0,105,116,3,24,12,0,106,116,3,20,10,0,107,108,
		5,5,0,0,108,109,3,2,1,0,109,110,5,6,0,0,110,116,1,0,0,0,111,112,5,9,0,
		0,112,113,3,2,1,0,113,114,5,10,0,0,114,116,1,0,0,0,115,99,1,0,0,0,115,
		100,1,0,0,0,115,101,1,0,0,0,115,102,1,0,0,0,115,104,1,0,0,0,115,105,1,
		0,0,0,115,106,1,0,0,0,115,107,1,0,0,0,115,111,1,0,0,0,116,19,1,0,0,0,117,
		118,5,13,0,0,118,119,5,9,0,0,119,120,3,2,1,0,120,121,5,10,0,0,121,122,
		5,9,0,0,122,123,3,2,1,0,123,124,5,10,0,0,124,21,1,0,0,0,125,127,5,14,0,
		0,126,128,3,14,7,0,127,126,1,0,0,0,127,128,1,0,0,0,128,23,1,0,0,0,129,
		131,5,15,0,0,130,132,3,14,7,0,131,130,1,0,0,0,131,132,1,0,0,0,132,25,1,
		0,0,0,133,134,5,20,0,0,134,27,1,0,0,0,135,136,5,9,0,0,136,137,3,2,1,0,
		137,138,5,10,0,0,138,144,1,0,0,0,139,140,5,5,0,0,140,141,3,2,1,0,141,142,
		5,6,0,0,142,144,1,0,0,0,143,135,1,0,0,0,143,139,1,0,0,0,144,29,1,0,0,0,
		14,40,45,50,56,61,65,71,77,79,97,115,127,131,143
	]

	public
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}