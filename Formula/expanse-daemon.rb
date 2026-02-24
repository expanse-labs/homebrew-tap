# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.9.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "16ff1a71146d90091b3b1da7574f054208cffb286e8142ddce7e33e6014060ea"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.9.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "b0ff306d5617c2d008a948d55d8723820621d834e18ab065be48790a19f07aea"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.9.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "d2b9263725ad82c2bf70512c07f6a5c5525ac198f9f611c1533041279cbdb8b5"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.9.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "c4340b6becf2921823bbbd6cccb1f13874177d6445b15975a2df47fac592afb6"
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
