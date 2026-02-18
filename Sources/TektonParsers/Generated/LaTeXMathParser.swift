// Generated from /Volumes/GitHubDeveloper/Projects/TektonParsers/Grammar/LaTeXMath.g4 by ANTLR 4.13.2
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
                 CMD_RIGHT = 17, CMD_TIMES = 18, CMD_DOT = 19, CMD_FUNC = 20, 
                 CMD_GREEK = 21, MULOP = 22, ID = 23, NUMBER = 24, WS = 25, 
                 SPCMD = 26
	}

	public
	static let RULE_prog = 0, RULE_expr = 1, RULE_addExpr = 2, RULE_mulExpr = 3, 
            RULE_powExpr = 4, RULE_postfix = 5, RULE_scripts = 6, RULE_group = 7, 
            RULE_primary = 8, RULE_frac = 9, RULE_nabla = 10, RULE_partial = 11, 
            RULE_greek = 12, RULE_arg = 13

	public
	static let ruleNames: [String] = [
		"prog", "expr", "addExpr", "mulExpr", "powExpr", "postfix", "scripts", 
		"group", "primary", "frac", "nabla", "partial", "greek", "arg"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'+'", "'-'", "'^'", "'_'", "'('", "')'", "'['", "']'", "'{'", "'}'", 
		"'\\{'", "'\\}'", "'\\frac'", "'\\nabla'", "'\\partial'", "'\\left'", 
		"'\\right'", "'\\times'", "'\\cdot'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "CMD_FRAC", 
		"CMD_NABLA", "CMD_PARTIAL", "CMD_LEFT", "CMD_RIGHT", "CMD_TIMES", "CMD_DOT", 
		"CMD_FUNC", "CMD_GREEK", "MULOP", "ID", "NUMBER", "WS", "SPCMD"
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
		 	setState(28)
		 	try expr()
		 	setState(29)
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
		 	setState(31)
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
		 	setState(33)
		 	try mulExpr()
		 	setState(38)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == LaTeXMathParser.Tokens.T__0.rawValue || _la == LaTeXMathParser.Tokens.T__1.rawValue) {
		 		setState(34)
		 		_la = try _input.LA(1)
		 		if (!(_la == LaTeXMathParser.Tokens.T__0.rawValue || _la == LaTeXMathParser.Tokens.T__1.rawValue)) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(35)
		 		try mulExpr()


		 		setState(40)
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
			func powExpr() -> [PowExprContext] {
				return getRuleContexts(PowExprContext.self)
			}
			open
			func powExpr(_ i: Int) -> PowExprContext? {
				return getRuleContext(PowExprContext.self, i)
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
		 	try enterOuterAlt(_localctx, 1)
		 	setState(41)
		 	try powExpr()
		 	setState(48)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 32563744) != 0)) {
		 		setState(43)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (_la == LaTeXMathParser.Tokens.MULOP.rawValue) {
		 			setState(42)
		 			try match(LaTeXMathParser.Tokens.MULOP.rawValue)

		 		}

		 		setState(45)
		 		try powExpr()



		 		setState(50)
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
		try enterRule(_localctx, 8, LaTeXMathParser.RULE_powExpr)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(51)
		 	try `postfix`()
		 	setState(54)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == LaTeXMathParser.Tokens.T__2.rawValue) {
		 		setState(52)
		 		try match(LaTeXMathParser.Tokens.T__2.rawValue)
		 		setState(53)
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
		try enterRule(_localctx, 10, LaTeXMathParser.RULE_postfix)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(56)
		 	try primary()
		 	setState(58)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,4,_ctx)) {
		 	case 1:
		 		setState(57)
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
		try enterRule(_localctx, 12, LaTeXMathParser.RULE_scripts)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(72)
		 	try _errHandler.sync(self)
		 	switch (LaTeXMathParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__2:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(60)
		 		try match(LaTeXMathParser.Tokens.T__2.rawValue)
		 		setState(61)
		 		try group()
		 		setState(64)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,5,_ctx)) {
		 		case 1:
		 			setState(62)
		 			try match(LaTeXMathParser.Tokens.T__3.rawValue)
		 			setState(63)
		 			try group()

		 			break
		 		default: break
		 		}


		 		break

		 	case .T__3:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(66)
		 		try match(LaTeXMathParser.Tokens.T__3.rawValue)
		 		setState(67)
		 		try group()
		 		setState(70)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,6,_ctx)) {
		 		case 1:
		 			setState(68)
		 			try match(LaTeXMathParser.Tokens.T__2.rawValue)
		 			setState(69)
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
		try enterRule(_localctx, 14, LaTeXMathParser.RULE_group)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(90)
		 	try _errHandler.sync(self)
		 	switch (LaTeXMathParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__4:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(74)
		 		try match(LaTeXMathParser.Tokens.T__4.rawValue)
		 		setState(75)
		 		try expr()
		 		setState(76)
		 		try match(LaTeXMathParser.Tokens.T__5.rawValue)

		 		break

		 	case .T__6:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(78)
		 		try match(LaTeXMathParser.Tokens.T__6.rawValue)
		 		setState(79)
		 		try expr()
		 		setState(80)
		 		try match(LaTeXMathParser.Tokens.T__7.rawValue)

		 		break

		 	case .T__8:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(82)
		 		try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 		setState(83)
		 		try expr()
		 		setState(84)
		 		try match(LaTeXMathParser.Tokens.T__9.rawValue)

		 		break

		 	case .T__10:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(86)
		 		try match(LaTeXMathParser.Tokens.T__10.rawValue)
		 		setState(87)
		 		try expr()
		 		setState(88)
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
		try enterRule(_localctx, 16, LaTeXMathParser.RULE_primary)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(108)
		 	try _errHandler.sync(self)
		 	switch (LaTeXMathParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .NUMBER:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(92)
		 		try match(LaTeXMathParser.Tokens.NUMBER.rawValue)

		 		break

		 	case .ID:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(93)
		 		try match(LaTeXMathParser.Tokens.ID.rawValue)

		 		break

		 	case .CMD_GREEK:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(94)
		 		try greek()

		 		break

		 	case .CMD_FUNC:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(95)
		 		try match(LaTeXMathParser.Tokens.CMD_FUNC.rawValue)
		 		setState(96)
		 		try arg()

		 		break

		 	case .CMD_NABLA:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(97)
		 		try nabla()

		 		break

		 	case .CMD_PARTIAL:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(98)
		 		try partial()

		 		break

		 	case .CMD_FRAC:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(99)
		 		try frac()

		 		break

		 	case .T__4:
		 		try enterOuterAlt(_localctx, 8)
		 		setState(100)
		 		try match(LaTeXMathParser.Tokens.T__4.rawValue)
		 		setState(101)
		 		try expr()
		 		setState(102)
		 		try match(LaTeXMathParser.Tokens.T__5.rawValue)

		 		break

		 	case .T__8:
		 		try enterOuterAlt(_localctx, 9)
		 		setState(104)
		 		try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 		setState(105)
		 		try expr()
		 		setState(106)
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
		try enterRule(_localctx, 18, LaTeXMathParser.RULE_frac)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(110)
		 	try match(LaTeXMathParser.Tokens.CMD_FRAC.rawValue)
		 	setState(111)
		 	try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 	setState(112)
		 	try expr()
		 	setState(113)
		 	try match(LaTeXMathParser.Tokens.T__9.rawValue)
		 	setState(114)
		 	try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 	setState(115)
		 	try expr()
		 	setState(116)
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
		try enterRule(_localctx, 20, LaTeXMathParser.RULE_nabla)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(118)
		 	try match(LaTeXMathParser.Tokens.CMD_NABLA.rawValue)
		 	setState(120)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,10,_ctx)) {
		 	case 1:
		 		setState(119)
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
		try enterRule(_localctx, 22, LaTeXMathParser.RULE_partial)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(122)
		 	try match(LaTeXMathParser.Tokens.CMD_PARTIAL.rawValue)
		 	setState(124)
		 	try _errHandler.sync(self)
		 	switch (try getInterpreter().adaptivePredict(_input,11,_ctx)) {
		 	case 1:
		 		setState(123)
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
		try enterRule(_localctx, 24, LaTeXMathParser.RULE_greek)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(126)
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
		try enterRule(_localctx, 26, LaTeXMathParser.RULE_arg)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(136)
		 	try _errHandler.sync(self)
		 	switch (LaTeXMathParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__8:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(128)
		 		try match(LaTeXMathParser.Tokens.T__8.rawValue)
		 		setState(129)
		 		try expr()
		 		setState(130)
		 		try match(LaTeXMathParser.Tokens.T__9.rawValue)

		 		break

		 	case .T__4:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(132)
		 		try match(LaTeXMathParser.Tokens.T__4.rawValue)
		 		setState(133)
		 		try expr()
		 		setState(134)
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
		4,1,26,139,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,7,
		7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,1,0,1,0,1,
		0,1,1,1,1,1,2,1,2,1,2,5,2,37,8,2,10,2,12,2,40,9,2,1,3,1,3,3,3,44,8,3,1,
		3,5,3,47,8,3,10,3,12,3,50,9,3,1,4,1,4,1,4,3,4,55,8,4,1,5,1,5,3,5,59,8,
		5,1,6,1,6,1,6,1,6,3,6,65,8,6,1,6,1,6,1,6,1,6,3,6,71,8,6,3,6,73,8,6,1,7,
		1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,3,7,91,8,7,
		1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,3,8,109,
		8,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,10,1,10,3,10,121,8,10,1,11,1,11,
		3,11,125,8,11,1,12,1,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,3,13,137,
		8,13,1,13,0,0,14,0,2,4,6,8,10,12,14,16,18,20,22,24,26,0,1,1,0,1,2,146,
		0,28,1,0,0,0,2,31,1,0,0,0,4,33,1,0,0,0,6,41,1,0,0,0,8,51,1,0,0,0,10,56,
		1,0,0,0,12,72,1,0,0,0,14,90,1,0,0,0,16,108,1,0,0,0,18,110,1,0,0,0,20,118,
		1,0,0,0,22,122,1,0,0,0,24,126,1,0,0,0,26,136,1,0,0,0,28,29,3,2,1,0,29,
		30,5,0,0,1,30,1,1,0,0,0,31,32,3,4,2,0,32,3,1,0,0,0,33,38,3,6,3,0,34,35,
		7,0,0,0,35,37,3,6,3,0,36,34,1,0,0,0,37,40,1,0,0,0,38,36,1,0,0,0,38,39,
		1,0,0,0,39,5,1,0,0,0,40,38,1,0,0,0,41,48,3,8,4,0,42,44,5,22,0,0,43,42,
		1,0,0,0,43,44,1,0,0,0,44,45,1,0,0,0,45,47,3,8,4,0,46,43,1,0,0,0,47,50,
		1,0,0,0,48,46,1,0,0,0,48,49,1,0,0,0,49,7,1,0,0,0,50,48,1,0,0,0,51,54,3,
		10,5,0,52,53,5,3,0,0,53,55,3,8,4,0,54,52,1,0,0,0,54,55,1,0,0,0,55,9,1,
		0,0,0,56,58,3,16,8,0,57,59,3,12,6,0,58,57,1,0,0,0,58,59,1,0,0,0,59,11,
		1,0,0,0,60,61,5,3,0,0,61,64,3,14,7,0,62,63,5,4,0,0,63,65,3,14,7,0,64,62,
		1,0,0,0,64,65,1,0,0,0,65,73,1,0,0,0,66,67,5,4,0,0,67,70,3,14,7,0,68,69,
		5,3,0,0,69,71,3,14,7,0,70,68,1,0,0,0,70,71,1,0,0,0,71,73,1,0,0,0,72,60,
		1,0,0,0,72,66,1,0,0,0,73,13,1,0,0,0,74,75,5,5,0,0,75,76,3,2,1,0,76,77,
		5,6,0,0,77,91,1,0,0,0,78,79,5,7,0,0,79,80,3,2,1,0,80,81,5,8,0,0,81,91,
		1,0,0,0,82,83,5,9,0,0,83,84,3,2,1,0,84,85,5,10,0,0,85,91,1,0,0,0,86,87,
		5,11,0,0,87,88,3,2,1,0,88,89,5,12,0,0,89,91,1,0,0,0,90,74,1,0,0,0,90,78,
		1,0,0,0,90,82,1,0,0,0,90,86,1,0,0,0,91,15,1,0,0,0,92,109,5,24,0,0,93,109,
		5,23,0,0,94,109,3,24,12,0,95,96,5,20,0,0,96,109,3,26,13,0,97,109,3,20,
		10,0,98,109,3,22,11,0,99,109,3,18,9,0,100,101,5,5,0,0,101,102,3,2,1,0,
		102,103,5,6,0,0,103,109,1,0,0,0,104,105,5,9,0,0,105,106,3,2,1,0,106,107,
		5,10,0,0,107,109,1,0,0,0,108,92,1,0,0,0,108,93,1,0,0,0,108,94,1,0,0,0,
		108,95,1,0,0,0,108,97,1,0,0,0,108,98,1,0,0,0,108,99,1,0,0,0,108,100,1,
		0,0,0,108,104,1,0,0,0,109,17,1,0,0,0,110,111,5,13,0,0,111,112,5,9,0,0,
		112,113,3,2,1,0,113,114,5,10,0,0,114,115,5,9,0,0,115,116,3,2,1,0,116,117,
		5,10,0,0,117,19,1,0,0,0,118,120,5,14,0,0,119,121,3,12,6,0,120,119,1,0,
		0,0,120,121,1,0,0,0,121,21,1,0,0,0,122,124,5,15,0,0,123,125,3,12,6,0,124,
		123,1,0,0,0,124,125,1,0,0,0,125,23,1,0,0,0,126,127,5,21,0,0,127,25,1,0,
		0,0,128,129,5,9,0,0,129,130,3,2,1,0,130,131,5,10,0,0,131,137,1,0,0,0,132,
		133,5,5,0,0,133,134,3,2,1,0,134,135,5,6,0,0,135,137,1,0,0,0,136,128,1,
		0,0,0,136,132,1,0,0,0,137,27,1,0,0,0,13,38,43,48,54,58,64,70,72,90,108,
		120,124,136
	]

	public
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}