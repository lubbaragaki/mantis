%main;
%imports: "installer.mt";

main = -> begin
	let { installer.get_repo("some/ni-uh-dw-about-it") }
	in : installer.copy_out(".", "/opt/something/or/other")
end
