# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.5.1/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "7a1c949d724522f1441a62ab6b4fae3712a64a6a5538267902e58beb83b4b469"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.5.1/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "47e52bd9e7186ae665ee45a878bbb2faf939278ac85f7de5b3c3342f53617bcf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.5.1/expanse-daemon_linux_arm64.tar.gz"
      sha256 "040ba525b2a60c2e51ca4d8968c6d179781135c21ab564920011c2e1455f2d83"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.5.1/expanse-daemon_linux_amd64.tar.gz"
      sha256 "b6d614736844a0fe8ffc552c97ef5646207e57107816ea9c52acb3424ccd1c60"
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
