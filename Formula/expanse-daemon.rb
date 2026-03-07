# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.12/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "ccdd548f898670643b1a42e90bae29392eb7447629ede68225e64b77e7c6de33"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.12/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "04d0019187f880819b15c0c89bf6c1c20f322679c6391f6e3d734fa746dc6d75"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.12/expanse-daemon_linux_arm64.tar.gz"
      sha256 "c412955a4eea41b00abb7854bcb2c8e178a81b3a5c97aa580a7a15a8a085ed17"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.12/expanse-daemon_linux_amd64.tar.gz"
      sha256 "4f55e4cec20085beb68b99da7d39de8e0aa1ad55a2253f47446188c868bd599a"
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
