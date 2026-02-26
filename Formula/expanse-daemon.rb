# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.11.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.4/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "e959ff86d5b2f255fff6dedea277664406f8d52192dcdd0c0e150aa71e58d553"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.4/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "a543e95094c7c9aa3a1e8b294fd9dbf9675fc14ea859024f71774490f954cb3b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.4/expanse-daemon_linux_arm64.tar.gz"
      sha256 "9c27d4182bf69bbb921e2fa7a79f5f4e8c9e1eb1fe6dff6902fe8672c1fd7fdf"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.4/expanse-daemon_linux_amd64.tar.gz"
      sha256 "7294a6d02c5fd7c3c0b2c69816f8e3149716941d6330a4259bb736160a590432"
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
