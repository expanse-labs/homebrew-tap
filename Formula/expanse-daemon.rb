# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.8.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.4/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "96e00f72604a85a81a0f3ac68b136c075de206e499734629f1d67fcd7aeefd70"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.4/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "da928f5ba15bb834e167daa939f23365a6b20f38c226274fd754e21022b532f8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.4/expanse-daemon_linux_arm64.tar.gz"
      sha256 "94b965c9af2473e79ac7a317d0726dfe1f1d95e18500ffffdab834a6f76e460d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.4/expanse-daemon_linux_amd64.tar.gz"
      sha256 "ab7c6e42dc26ab14af8030c87490d2ea94704d563cd29a280061a21921348310"
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
