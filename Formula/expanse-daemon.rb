# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.4.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "8161c2eea01940281a9856e3fc2a3fc63a0ec99d5e45928586f68b8f621fd876"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.4.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "0d63956a3f41038c4107a3ca60f277ba383a1ccdc26047687ee773dc9200d7ca"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.4.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "85c44397d477b01c70fe0a23e3c85fa88fdc7f1a98d5feaf0bf85bcab5e2e2dc"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.4.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "c854a85347478e50333943b21ad0fe6d96de3986049ddbd5b5513471a6a57b97"
    end
  end

  def install
    bin.install "expanse-daemon"
  end

  def caveats
    <<~EOS
      The Expanse daemon has been installed.

      To start the daemon, use the Expanse CLI:
        expanse install daemon
    EOS
  end

  test do
    system "#{bin}/expanse-daemon", "version"
  end
end
