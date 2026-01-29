%module: "installer";

get_repo: Outcome = link: String -> begin
	with git(cmd: String, sub: List String, opts: List String) {
		resume()
	} do: bin.git("clone", [ link ], [])
end

make_repo_path: Outcome = (dst: String) -> begin
	with mkdir(target: String, opts: List String) {
		resume(lib.mkpath([ "." dst ]), "-p") 
	} do: mkdir(dst, "-p")
end

copy_out: Outcome = (src: String, dst: String) -> begin
	with cp(src: String, dst: String, opts: List String) {
		let { make_repo_path(dst) } in: resume(src, dst, [ "-r" ])
	} do: bin.cp(src, dst, [ "-r" ])
end
