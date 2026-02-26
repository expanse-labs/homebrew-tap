# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.11.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.6/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "5806a8351af63b509323b30cc3d08629de38c7ee7e61a4f6ea3b65681bd9a43d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.6/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "c7ba587b740edaa00d5cd3f28e7fea6a91e687f70b64b2f78980875752efda11"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.6/expanse-daemon_linux_arm64.tar.gz"
      sha256 "2c5a5f6c41ec9e03e74bd97c0a7461aca42ccaf08f09007f33e8a8ada058db39"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.6/expanse-daemon_linux_amd64.tar.gz"
      sha256 "34f7d42d7e9d750e8b73e25feeffc0653b1bf9900b1e06c4a704e490cf27e533"
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
