# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.11/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "b3979ec8a7a2a776ae69ebb423235f28e41ad785c12a07dc0a98a6c22e429ede"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.11/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "d806cd9ed3b2d335a2e0d1d2d2316c03fe81bb1dbae3b987740a45fbb23411f0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.11/expanse-daemon_linux_arm64.tar.gz"
      sha256 "92eed7a9e3d50b97aab4f9771759c927102493f6deb995e63b13ab82c85e4794"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.11/expanse-daemon_linux_amd64.tar.gz"
      sha256 "c9ff97bab041cf8e2f484feef2e4e4ef8821f84525dc45344e047d0cb3ad113e"
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
