# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.3/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "fb19e73a27eba728f174f9b3f1cc6c3007c3d90a4fdbc5ddb4b8bc35974da5d1"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.3/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "8668bf8925f37b96272de00d1418436f7d0dfde13bb8d721a559c30c5d09b28c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.3/expanse-daemon_linux_arm64.tar.gz"
      sha256 "6037b7cefa461cd4e204ffeaadcd88538ffb9108fed1a7382dab29f0e386723d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.3/expanse-daemon_linux_amd64.tar.gz"
      sha256 "e80fbb4a45e4bb9f2b9ce8dd3be62553605c452eec2292af665e2c71cce5c76b"
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
