use fmt;
use bufio;
use os;
use strings;
use io;

type ast = struct {
	token: str, // the parsed string
	token_type: tok, // whatever it represents, a value, an operator, ...
	children: []*ast,
};

type tok = enum {
	NAME, // like the name of an existing function (eg. cons)
	VALUE, // integers, strings, booleans, ...
	PAREN, // parenthesis
	CMD, // commands like "/h", "/q", ...
};

type syntax = (int, str);
type error = (io::error | syntax);

fn parse(expr: str) (ast | error) = {
	let lexer: strings::tokenizer = strings::tokenize(expr, " ");
	for(let token => strings::next_token(&lexer)) {
		// TODO: replace with a match to determine token type
		// tok = match (token) {
		// 	case
		// };
		fmt::printfln("-> token: {}", token)!;
	};
	let tree = ast {
		token = "root",
		token_type = tok::NAME,
		children = [],
	};
	return tree;
};

export fn main() void = {
	fmt::println("Mantis repl, enter /q to quit, and enter /h for help")!;
	let line = "";
	for(line != "/q") {
		fmt::printf(":> ")!;
		bufio::flush(os::stdout)!;
		const in = bufio::read_line(os::stdin)! as []u8;
		line = strings::fromutf8(in)!;
		if(line != "/q") {
			parse(line);
		};
	};
};
