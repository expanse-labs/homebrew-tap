# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.10.1/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "67ecbc0234381ac656cfbdf26d759da13c485eb81e849b9553ae07c431302a30"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.10.1/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "4ba95325b4d0199811647472850f03977fea8e413db2ae522532130ca6224be5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.10.1/expanse-daemon_linux_arm64.tar.gz"
      sha256 "b52c967769b44aff34bb8ac8b16db72188d9532705a7f7714a438efe0c6ce169"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.10.1/expanse-daemon_linux_amd64.tar.gz"
      sha256 "e86730705a7740337958ada0eda2be69c0d7d256ff5a765805600ce512fb69bd"
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
