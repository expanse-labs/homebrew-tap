# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.1/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "84ccb3e9fe134d2243985fa4b4e4dcc68916a26c1551136ac795086c3ee55280"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.1/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "eea48f2cd06fb2e8b0e0fdfaf9f7840af65c3e1b5bc87ef44622a0465a305930"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.1/expanse-daemon_linux_arm64.tar.gz"
      sha256 "f49ba3de2c91e411337a90b61ee6d44cff7871cc3e4f80127d35c57214776b34"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.1/expanse-daemon_linux_amd64.tar.gz"
      sha256 "27f0c9011ba7d39699972ae06b8c570ecc7fd28d12e0a1ac562cd6ca80f4154f"
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
