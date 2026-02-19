# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "6e5a6baf03765ce6300f3eb245698ee0aa15002f5f9a018e0920e43b6f12697c"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "480e638d0e7a385bf349bf86a0c6fcac8f711bf624fccfa9c5ddf5e3dacdfa25"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.6.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "9afe2ce7fa0b78cda5e58a18115c0dd30bacc7737c378264afed59aea695fd68"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.6.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "4989e3815135ddbcaaa22e16d1e053b9ae17cb4919f70f263674e86445b60b50"
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
