# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.8.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.3/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "0882f4cd4a91d6596a8ffe27f246ae9ffd5bf351d8c7eaefebcae769b6cc5d1e"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.3/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "fb03f5664e6bae5384602d01fe065f3ba47dcb5da572322dbd4fb3737e37611d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.3/expanse-daemon_linux_arm64.tar.gz"
      sha256 "90dfbb8e83e9644fe54faefaaa603c74a81aa12258992c6170d398ecb8a8b299"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.3/expanse-daemon_linux_amd64.tar.gz"
      sha256 "ccb41a27253aaad1f624e1328ab03c8dfb2887432edfc3c45a9f7ce07d026567"
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
