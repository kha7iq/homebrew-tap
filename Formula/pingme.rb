# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pingme < Formula
  desc "PingMe is a CLI tool which provides the ability to send messages or alerts to multiple messaging platforms."
  homepage "pingme.lmno.pk"
  version "0.1.6"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.6/pingme_Darwin_x86_64.tar.gz"
    sha256 "9edc2aab7c922d1549431c60d93e69a0c9fffded5827ca46e75c252d4023d8b1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.6/pingme_Darwin_arm64.tar.gz"
    sha256 "e93d31a21a4f49583f7609ab22adb97495ed7295e43d9012b0d5955b38556e6f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.6/pingme_Linux_x86_64.tar.gz"
    sha256 "fbfbddd4149c0f83aa29cf70accf04ea1d3c7696f21b2d3bb6c8d876a3b47cd6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.6/pingme_Linux_armv6.tar.gz"
    sha256 "bbaa8a7426f703db94d8a01c741da3f4639cf7df1cdecc717ccaea102ca8aa35"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kha7iq/pingme/releases/download/v0.1.6/pingme_Linux_arm64.tar.gz"
    sha256 "ab59f11ea46453b227799a72c00080ba7504d6e1c8a981b10561a278930f7b2d"
  end

  def install
    bin.install "pingme"
  end

  test do
    system "#{bin}/pingme -v"
  end
end
