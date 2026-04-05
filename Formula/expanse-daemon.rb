# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.0.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.0.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.0.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "c55f26fc76340a730bd05b17430bc2bd039f9cf06854eb55929867668426cc66"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.0.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "ac9cf09969f7b179d22baceb6a0574195caf960136ba1f8309bb851c83c55478"
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
