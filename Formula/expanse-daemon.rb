# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.1.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.1.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v1.1.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "575d7b1b5f4ee66ee73e57434653dbecb8fbff560a034933e47f4bf610676e9f"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v1.1.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "0c5060aeddedafc2527507daa0da45c6f63cba0428b2442c5126d9cba4ec03c4"
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
