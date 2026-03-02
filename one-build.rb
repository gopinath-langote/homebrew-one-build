# typed: false
# frozen_string_literal: true

class OneBuild < Formula
  desc "Frictionless way of managing project-specific commands"
  homepage "https://github.com/gopinath-langote/1build"
  version "1.10.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_x86_64.tar.gz"
      sha256 "1efd68686330f975902a6631f7a673ef0069f1d981481b28207493eb6866d574"
    elsif Hardware::CPU.arm?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_arm64.tar.gz"
      sha256 "33084442a494f65738b557a272deb1b133e3d58890f07f731ee7131ca1fa7dac"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_x86_64.tar.gz"
      sha256 "a40b4b272e4b96fc03c9d4843583f55106dea74ffab9b8c47bcb10844bbf0f3c"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_arm64.tar.gz"
      sha256 "1f12cc1c81a4829339daecdf75023403ecd166311e25fedb210c8c3c73ffd8ee"
    end
  end

  def install
    bin.install "1build"
  end

  test do
    system "#{bin}/1build", "--version"
  end
end
