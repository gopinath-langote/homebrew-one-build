# typed: false
# frozen_string_literal: true

class OneBuild < Formula
  desc "Frictionless way of managing project-specific commands"
  homepage "https://github.com/gopinath-langote/1build"
  version "1.10.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_x86_64.tar.gz"
      sha256 "333b68c3bf229f8f8ee293c5fd79976c8c302b39d2a6fe97a236fe231aa18750"
    elsif Hardware::CPU.arm?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_arm64.tar.gz"
      sha256 "8b5cee9d4a70bd3192fa658fbccd7bece78b056527fca3c756e2cebcfef3e1f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_x86_64.tar.gz"
      sha256 "7182db313924205c445b515082d6e5af16320cee6e2dab072a4412bb58ff008e"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_arm64.tar.gz"
      sha256 "328606d42a8f874df1bcf4b3ab24817fd1be0de9b96d1bf8135a626c79712ff4"
    end
  end

  def install
    bin.install "1build"
  end

  test do
    system "#{bin}/1build", "--version"
  end
end
