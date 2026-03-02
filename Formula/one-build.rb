# typed: false
# frozen_string_literal: true

class OneBuild < Formula
  desc "Frictionless way of managing project-specific commands"
  homepage "https://github.com/gopinath-langote/1build"
  version "1.10.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_x86_64.tar.gz"
      sha256 "9e375c9eafbde547f23980a3c5eb5b86ed19f153d18b79459989148604b579c0"
    elsif Hardware::CPU.arm?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_arm64.tar.gz"
      sha256 "2345a94307489c70469ff6fb64b8c5436ec6fa78aef8b960ccf47cf20897ce98"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_x86_64.tar.gz"
      sha256 "8d83f9c073d2b59e70060fbc0d4e870e56f1d071f51a3801504447413055bb45"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_arm64.tar.gz"
      sha256 "228b9a5c557509927ef4acf920b5f6540c50f37a759b7e1613ce974f1d8b5015"
    end
  end

  def install
    bin.install "1build"
  end

  test do
    system "#{bin}/1build", "--version"
  end
end
