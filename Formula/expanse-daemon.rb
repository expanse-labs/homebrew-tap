# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.7/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "290fa69ac0c868b10d05fed87ff229df36115103453e747417ffe5d66c055629"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.7/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "f8b053e79a2a8b3542f98df41ba8ed10739860868dd9dd624f9789acc5549a77"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.7/expanse-daemon_linux_arm64.tar.gz"
      sha256 "3807979ebd8b444f73c52d8a0d7d11389d130cb3f33a7b7c5aa626a379892381"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.7/expanse-daemon_linux_amd64.tar.gz"
      sha256 "40fc36221698049145d02b15a52887939ed9d5b364f83f3fe1590ef90c9afa43"
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
