# typed: false
# frozen_string_literal: true

class OneBuild < Formula
  desc "Frictionless way of managing project-specific commands"
  homepage "https://github.com/gopinath-langote/1build"
  version "1.10.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_x86_64.tar.gz"
      sha256 "2bcdd4dc81d3a9d55b69fc852c260cafa3fbca097b02dcb838287c75d90b2527"
    elsif Hardware::CPU.arm?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Darwin_arm64.tar.gz"
      sha256 "a6c290fe4e3d0fac7329af4f88bbf949e1677c2315fe3fb8517fd8a687f200d3"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_x86_64.tar.gz"
      sha256 "28ced94ee3f502d173e8930381650ed7da67e7d0d998f984432c36a3f6f3fa16"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gopinath-langote/1build/releases/download/v1.10.4/1build_Linux_arm64.tar.gz"
      sha256 "1a91ffcca29c80f52c9680d2d8ebdcfeb70142d7ababa6bc4b492b4a4a29681d"
    end
  end

  def install
    bin.install "1build"
  end

  test do
    system "#{bin}/1build", "--version"
  end
end
