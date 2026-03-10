# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.14.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.14.2/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "0689fa30794fbc549f324f69652594882b75c5a7f7d2cf715b16b2d769f80fcd"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.14.2/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "233ecd1a7cc5102da3fea3adf982aa5a27fd4633e899521fbd9a7e079cb6c37f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.14.2/expanse-daemon_linux_arm64.tar.gz"
      sha256 "043e7fc04e12abf993ad68a689719cfb615c3455acc2830555ed2948258d13a3"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.14.2/expanse-daemon_linux_amd64.tar.gz"
      sha256 "0eb244fa8b9f7f58285b6d9f5e4b6797b812dcfb1cc95ce67ea692962b8174f5"
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
