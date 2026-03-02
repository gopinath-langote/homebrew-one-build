# typed: false
# frozen_string_literal: true

class OneBuild < Formula
  desc "Frictionless way of managing project-specific commands"
  homepage "https://github.com/gopinath-langote/1build"
  version "1.10.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_x86_64.tar.gz"
      sha256 "1e7191cf1532ab190877d730b16609b080338ac6eaace8d0d834e53b039cc3cf"
    elsif Hardware::CPU.arm?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_arm64.tar.gz"
      sha256 "0eab5c5596ecfab0ee9892d50def0302fc352b5ce2da8c5ed5a26a4a773224f0"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_x86_64.tar.gz"
      sha256 "340402fd6990d21693f2488a4897893f21c1c0b32732c2547e466c94b1a2e4d6"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_arm64.tar.gz"
      sha256 "5f61d8ccef1ebed5fefb3e57ba5b471519384378e200049ae04f9d1bf3341a4b"
    end
  end

  def install
    bin.install "1build"
  end

  test do
    system "#{bin}/1build", "--version"
  end
end
