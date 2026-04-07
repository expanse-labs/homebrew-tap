# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.2.1/expanse-daemon_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.2.1/expanse-daemon_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.2.1/expanse-daemon_linux_arm64.tar.gz"
      sha256 "07d22e33cc13ac257ec1c6ec55626c480becbd31e254be942e9540c7ab5171bc"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.2.1/expanse-daemon_linux_amd64.tar.gz"
      sha256 "c180d019157a6092ee680f2c7a5f53a9699e8213029b7556e4fee05d76bd24b6"
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
