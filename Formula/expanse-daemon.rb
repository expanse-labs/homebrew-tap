# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "1.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.1.2/expanse-daemon_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.1.2/expanse-daemon_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.1.2/expanse-daemon_linux_arm64.tar.gz"
      sha256 "6d10ecfd52f19b695556ae73359ddb24a6f779ab635c6a0babc4e5a3d811d623"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.1.2/expanse-daemon_linux_amd64.tar.gz"
      sha256 "3a29bad9f43c82bafe8a2fa04526d365103263d865f35ff732ebd04afeea4718"
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
