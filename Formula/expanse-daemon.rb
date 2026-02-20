# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.2/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "90e23f9d21bd884f9e307788fc15010a8dd571af9f7e8d052ab68b3f4a543c26"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.2/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "adeff58e6ddcc1f40ddc64ef0fff993e33ee8aba94819b8c85fba3cb428da210"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.2/expanse-daemon_linux_arm64.tar.gz"
      sha256 "ec3fd2d6a2204aba34c35c326c2370e7982d5da7b8eafcd5a396c762aacec522"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.2/expanse-daemon_linux_amd64.tar.gz"
      sha256 "1d59db93b29c9d073c98feaa802d220d1fca8914542a05958d8bdf9281ce95f9"
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
