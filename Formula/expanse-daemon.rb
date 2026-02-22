# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "9e009eabcd35c302ddb74e6c6db7b6ec303ad8afc4b17fb9a79419ad8d2c5251"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "6c17be3d91baebb1a2b5bb1b558ae496da4034796e953879834023351145e5c5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "83e8b93b4bd2435e45a17e58b8a2a3aad561a247d6b51a7fed6dba144d83c719"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "b6fc7edf7443b8e1c7eca613e4041ec65c3280a3e977548754fdb381250294e4"
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
