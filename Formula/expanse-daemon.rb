# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "1.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.2.2/expanse-daemon_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.2.2/expanse-daemon_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.2.2/expanse-daemon_linux_arm64.tar.gz"
      sha256 "7fb65b23183a19c051d9ad192fba9d76e3748ef81c93dbe1799d6fc87ecbd80d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.2.2/expanse-daemon_linux_amd64.tar.gz"
      sha256 "da2d16a789cb0e683a7b636dfec142be83b22fc8a2b197b3b9fd422a77ed501e"
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
