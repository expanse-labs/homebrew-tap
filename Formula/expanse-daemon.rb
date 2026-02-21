# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.6.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.4/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "e5f53216e931382dccc1c8953ddce8d1b72f492e184bbc7d5ca7fd784017c88c"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.4/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "01a055a98230ec762217076ec82ee155a6518132e490f2874c5d36ebc7548b79"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.4/expanse-daemon_linux_arm64.tar.gz"
      sha256 "5262e8124c19b9a2da404c210978b3b84e87f8405a38baf9cd96650d98dec62e"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.4/expanse-daemon_linux_amd64.tar.gz"
      sha256 "a130ae037a37a709f7b71f2e5e9607b563288bb64850f1c3d8a5789326a787c0"
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
