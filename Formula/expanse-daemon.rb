# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.10.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.10.2/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "4f1f48eebb91495a9806654cda86d2b1f0428ddaf9f57a9ce3fa9471ab0504c4"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.10.2/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "b39b54c4cf577934e20e6e2fb506464d80fb75f07130f0d56b1867f615041932"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.10.2/expanse-daemon_linux_arm64.tar.gz"
      sha256 "b20a8602c73cfd81468c1e4e3c58339d577afa7c791a27a1995789a7c78a651a"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.10.2/expanse-daemon_linux_amd64.tar.gz"
      sha256 "0e1d7268300010ef6b61dcd3d78b3a8a6a5f153a23f4e205ae4112025df9bdd5"
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
