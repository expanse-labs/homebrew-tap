# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.9/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "5869b4a119bc014beabe2729718f564c2007287bf36c96bee0a70c89b949e7ba"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.9/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "7976272db8ce85036536b649aa17383b7f57666b983508172cbec6a7e0036a92"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.9/expanse-daemon_linux_arm64.tar.gz"
      sha256 "ab26c350f829be45d5de90b4455797ecc9dcc0302eb63399a58692712f53194b"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.9/expanse-daemon_linux_amd64.tar.gz"
      sha256 "3ebd51b0fb541bdcdd19f616702ad0069e915c683e67c8241eab689514c4efc9"
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
