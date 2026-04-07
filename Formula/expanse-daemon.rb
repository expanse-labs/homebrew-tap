# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.1.1/expanse-daemon_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.1.1/expanse-daemon_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.1.1/expanse-daemon_linux_arm64.tar.gz"
      sha256 "3338141a3e519d728b29f7be693e8125e342f45322fee9a5296b7cd1511a855f"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.1.1/expanse-daemon_linux_amd64.tar.gz"
      sha256 "3daf6ebd2efefb6b6f6a175663d1ab7dc4c27391a2a43a0fccb217ac03cea3b1"
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
