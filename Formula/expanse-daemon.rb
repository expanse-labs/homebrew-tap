# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.11.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.5/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "d61881351f93c49b6dd9bf2c7a2ac9398ba1c5d8ec4159a9cf3870d502069036"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.5/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "fd8b4795aad08c7aa01c544fbe8c32255e17eb1549309f303ed54a6dda6a1b5e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.5/expanse-daemon_linux_arm64.tar.gz"
      sha256 "308149e02bf91772be5c4a664b1171e901c042d489b29b61154326ab0ada5c35"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.5/expanse-daemon_linux_amd64.tar.gz"
      sha256 "b9a687f829e282a1cc261655f92ef24b7b43b703077be8b8c45b686bd0ac597c"
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
