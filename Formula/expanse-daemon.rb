# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.0.1/expanse-daemon_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.0.1/expanse-daemon_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.0.1/expanse-daemon_linux_arm64.tar.gz"
      sha256 "71f143b4711978671b64087425cccdca0e69dafa40e1da487d884d33d27254eb"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.0.1/expanse-daemon_linux_amd64.tar.gz"
      sha256 "2ee32a26caef931ac0191447d9961c2ec3cf142ecc57a5bef1c3b17a0d558634"
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
