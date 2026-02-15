# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.5.2/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "b5d26d0a6edefb3a395a87c95886f674d7213b05d3793037d5a95ff977413dc2"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.5.2/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "dddc70b3890a1d7da8f334562c1f6a554e979b3f066768dd0caf09878aef4777"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.5.2/expanse-daemon_linux_arm64.tar.gz"
      sha256 "200d4afcfe26eda26d34e7c02692188ea691900843974b95de3fa2273d3b17fe"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.5.2/expanse-daemon_linux_amd64.tar.gz"
      sha256 "627411e0e0253afec28157d4e2ae7ad9f4779e5b9b76da12ad1acb2b8d5195b2"
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
