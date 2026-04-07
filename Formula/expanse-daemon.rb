# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.2.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.2.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.2.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "4caccc65db7b871d027d691ef782635561886a3353589aea1d1674c8dc3091e7"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.2.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "3993f8f8933c0fc911e5c15e340a9ddf2fee1a6552cc48bbc88272eb8cc61f4f"
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
