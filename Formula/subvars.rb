# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Subvars < Formula
  desc "Substitute environment variables from command line in config files defined as go template format."
  homepage "subvars.lmno.pk"
  version "0.1.4"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kha7iq/subvars/releases/download/v0.1.4/subvars_Darwin_x86_64.tar.gz"
      sha256 "ef4d0b805a9c62fc4c86572e9fcdd163442f4f4ff75fa56e89177bf07edf2a29"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kha7iq/subvars/releases/download/v0.1.4/subvars_Darwin_arm64.tar.gz"
      sha256 "f91f067e188174214531bdafeb2bec476953eef2560cefa5319cc5f4b8b20dd2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kha7iq/subvars/releases/download/v0.1.4/subvars_Linux_x86_64.tar.gz"
      sha256 "e35ec85c9e11f241c1fce1c7bb4db4c22751d86e4ebb0d400a5f2d4b849405de"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/kha7iq/subvars/releases/download/v0.1.4/subvars_Linux_armv6.tar.gz"
      sha256 "a89122b5b7a9725802315614578cd8e70cc0178eb0a46a10c55ac13a7be086de"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kha7iq/subvars/releases/download/v0.1.4/subvars_Linux_arm64.tar.gz"
      sha256 "d625f31c53101c9e831dc1796f4302086bf7eb04e0fd2213c0da31b2cb7a94da"
    end
  end

  def install
    bin.install "subvars"
  end

  test do
    system "#{bin}/subvars -v"
  end
end
