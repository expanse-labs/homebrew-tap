# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.10/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "e9f868a26cb2b517f4a01358906dc7d105c707d447649a463ea26b941dce645e"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.10/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "dcfbbc9bb71b8630dc9064716f9c1dfb2599af9c4f2e0653dbb75d74fab87f9e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.10/expanse-daemon_linux_arm64.tar.gz"
      sha256 "ac4db9f16f1ffbcfc75cd1b12d7ab8e76074d42189e884a67d268e6c229bb1e0"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.10/expanse-daemon_linux_amd64.tar.gz"
      sha256 "b4ee5940fcf7023b067c99dd137b7a5d9459330663240f9623f90afa7b65e3a0"
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
