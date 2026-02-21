# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.3/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "5b4c83076217a615bd0e816b891b9f4ef0393224d5325f20d8613bcacc32eb1f"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.3/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "776293b0f94d9f72af2fe0751e47953da5bcad7ac697c96ae575f876a1378d9c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.3/expanse-daemon_linux_arm64.tar.gz"
      sha256 "d5dfda447809c684fc2ad38a9542e50c8f8406559291d0bb2c80efd840582bab"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.3/expanse-daemon_linux_amd64.tar.gz"
      sha256 "8413b1dfcbc2fd1c9a228de081eb92017a54c90ebc5e2456fb6f76753d76c5f0"
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
