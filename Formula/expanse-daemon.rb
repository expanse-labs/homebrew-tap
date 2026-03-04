# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.6/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "79f79ab2d331599155dfb4eb4bf7bb8b79e475c3ff5d550340013a92451dd207"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.6/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "3e608c2b6dde9d89100dd8e1819575973249b2f9004626898e47ecbfa3990436"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.6/expanse-daemon_linux_arm64.tar.gz"
      sha256 "d44ee306409c02a277b23541bf51b191dedbaf22a0d9161d7b83584de9406645"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.6/expanse-daemon_linux_amd64.tar.gz"
      sha256 "aba2e0d44e8e358c5d23dfbb5c42f2357798d5e8330a27d2875e2a0159f07b71"
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
