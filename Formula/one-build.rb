# This file was generated by GoReleaser. DO NOT EDIT.
class OneBuild < Formula
  desc "Frictionless way of managing project-specific commands"
  homepage "https://github.com/gopinath-langote/1build"
  version "1.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/gopinath-langote/1build/releases/download/v1.5.0/1build_1.5.0_Darwin_x86_64.tar.gz"
    sha256 "78f692dab437fd11fe810d9a91a20a7fc64c12f3a8f1d557d638660e71051ed3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.5.0/1build_1.5.0_Linux_x86_64.tar.gz"
      sha256 "e221772809f03e74909bc0bce5ad2d9666ce606f616029f82accef738bb4a5e5"
    end
  end

  def install
    bin.install "1build"
  end

  test do
    system "#{bin}/1build --version"
  end
end
