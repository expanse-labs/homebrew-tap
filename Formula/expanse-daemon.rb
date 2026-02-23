# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.2/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "6eac373f4f295f44f9041de4c0476bdf2f8a1b1a0fd339bcc5ea87c62b77d9a0"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.2/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "af7f1bc206491e82d05f775270a22c7321706743e7b99839210b0cd76cc0594d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.2/expanse-daemon_linux_arm64.tar.gz"
      sha256 "f28b1dcc888890524eb66f941e863ea1241541ae4e308df5bae72028be5bc7c2"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.2/expanse-daemon_linux_amd64.tar.gz"
      sha256 "111c65d69cea341016d8d41d0e30255c7fc0c4efbea6f10df2e245c69eccad75"
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
