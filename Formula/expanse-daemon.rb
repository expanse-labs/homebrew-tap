# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.10.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "4f74f710dddf691dd40e32f2946d5e1775c2d29519973c109d505e5c2015fc9c"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.10.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "51cbd1980d87e467debebe3781f295d523529975d0366da11edbf611f9dd485d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.10.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "1c6f4bd083c3551964ff06e90830567f30c5e9f812e974464f3acb2299528ba5"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.10.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "eac0e6a68addc6abd86f3656cf16f977293501110884344b9120a020acf9c527"
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
