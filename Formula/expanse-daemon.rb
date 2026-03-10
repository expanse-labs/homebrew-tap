# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.14.1/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "157a2c28782de66a083a8e5a63e28c0f620fb9c703d0f5b2456461c3b173c061"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.14.1/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "3e7872fdf86820358cdb9a72ebbe7bb2d69dca82acf5a62525415e5936fb014b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.14.1/expanse-daemon_linux_arm64.tar.gz"
      sha256 "facc4340c5053dacaa53b35f7577be3427c9da09dc74176289056a36fb4f7a6c"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.14.1/expanse-daemon_linux_amd64.tar.gz"
      sha256 "9182b5d32b587678f1080a715d3b3b0746526a6b7104d24ba2999ec00e8c0d98"
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
