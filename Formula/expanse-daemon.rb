# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.14.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "3be3a72e70fbe4609b453ab74d0c1c8db98088f363153e221e45a8aad396c150"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.14.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "f44e55f8a4be399c904166b0ce7600d976a8702f0867a6255c7597cd597e6f98"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.14.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "453682d35ae8ccfa34c9bec0a96efe9b3050a1daa4f616f9f315f279922e6a14"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.14.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "a8147ab72ee145314eaf0e425dd0703199450cc18808c774bcf211488969721f"
    end
  end

  def install
    bin.install "expanse-daemon"
  end

  def caveats
    <<~EOS
      The Expanse daemon has been installed.

      To start the daemon, use the Expanse CLI:
        expanse daemon start
    EOS
  end

  test do
    system "#{bin}/expanse-daemon", "version"
  end
end
