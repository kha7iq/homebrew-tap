# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pingme < Formula
  desc "PingMe is a CLI tool which provides the ability to send messages or alerts to multiple messaging platforms."
  homepage "https://kha7iq.github.io/docs-pingme"
  version "0.1.2"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.2/pingme_Darwin_x86_64.tar.gz"
    sha256 "f091d50cd9fa745b9c0c377bb2e5ebe51a3fe37594be29156302af10ee428c8e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.2/pingme_Darwin_arm64.tar.gz"
    sha256 "f206420351acc71a94af7a970efefe6a0b866690f59241fe0f04baa52aef12db"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.2/pingme_Linux_x86_64.tar.gz"
    sha256 "fb0810d976ada75891d87add1d42d3f9f5f3a2df0a1f00abec7fc2bebda84e47"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.2/pingme_Linux_armv6.tar.gz"
    sha256 "1f26f3fadd719ce859c00eb9fa26d9fac256263c59e03524ee88a44a60e88562"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.2/pingme_Linux_arm64.tar.gz"
    sha256 "b337daa84436f98c6467653b2ec15edafaff89ff1aa0323342a43a6a1d3f44f0"
  end

  def install
    bin.install "pingme"
  end

  test do
    system "#{bin}/pingme -v"
  end
end
