# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.14.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.14.3/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "6efa49f85f29762ce18bf5e0a1f34dca7a20ab5996ef05ef492cd3a165880330"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.14.3/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "ff9b151367432b354d2e338bb8241af254ab5280ba406c4848ae9cbb421a0169"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.14.3/expanse-daemon_linux_arm64.tar.gz"
      sha256 "2e2b4bfc194d05be951e91ba96e366108064dc1e990ae5e33ee39a6e349cbb0a"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.14.3/expanse-daemon_linux_amd64.tar.gz"
      sha256 "1975020a4e39d2cf6f6f1971e59c89996014dda50ee0cd529133e8c450928933"
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
