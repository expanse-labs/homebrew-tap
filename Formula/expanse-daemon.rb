# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "d25fc8e9f3802499895cf8acaa9a42be2b66551c8e9d728ed739d116a93a6cfe"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "cd0fda60932a25f62fc5e648483c28d2d3733e8b79e7f46dfc7530591453d574"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "eaf4927adc2fde5d337e9e81925a8282bc15eb4b5a7dd04c5d569b4090d2c050"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "10413ef04cd92cf2c2eb05c5a749a7017182cd05fdcd4b824e1e869c7b624936"
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
