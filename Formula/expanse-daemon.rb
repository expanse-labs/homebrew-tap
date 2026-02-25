# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.11.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.2/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "19e88b0ff85771b340fd31c8837b1fc2bf3b6eae8bcdd634a95400bd7c0b99ab"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.2/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "9ee88df069dd75871f29be9bd9ea35f08920f80264d96a6e024a86c9df37cd4b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.2/expanse-daemon_linux_arm64.tar.gz"
      sha256 "5b9e2c646a6ee6b2156061942a22d8e63f5a81403ce73d868691b2e69c301d74"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.2/expanse-daemon_linux_amd64.tar.gz"
      sha256 "5627439c80626d26fcb038fe426e60dc30cf54bf3d8ad676dfa1e08390067fd3"
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
