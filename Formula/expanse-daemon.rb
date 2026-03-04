# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.8/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "55be20c91fd01b33a003b7b2042ede8f7c68be1d8cd0ec5270859e34311ac945"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.8/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "1bcb95b30f900464e8e571f7926db7deecb7500ef6fb0b86bf9fdaf84c06cdf9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.8/expanse-daemon_linux_arm64.tar.gz"
      sha256 "d92ac34a7625d30b5c0851a52db8c0db92a2e5eab67da501884a501379989889"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.8/expanse-daemon_linux_amd64.tar.gz"
      sha256 "6c82871e9d5701ac270ea3083cc6d96770a44196dad33286899dc517da2b5825"
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
