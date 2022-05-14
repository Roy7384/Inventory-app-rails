{ pkgs }: {
	deps = [
        pkgs.ruby_3_0
        pkgs.rubyPackages_3_0.solargraph
        pkgs.rufo
        pkgs.sqlite
        pkgs.rubyPackages_3_0.rexml
        pkgs.rubyPackages_3_0.rspec
	];
}