class Julia < Formula
    homepage "http://julialang.org"
    version "0.6.2"

    url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-linux-x86_64.tar.gz"
    sha256 "dc6ec0b13551ce78083a5849268b20684421d46a7ec46b17ec1fab88a5078580"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/juila")
    end
end
