# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.7.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "82ddcead335a8b3f02e30eea67dc5c9f6d6cad42d954f1892e978de2646abf75"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.7.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "a90f921fe95b97ac2d2b30d0dbfd9f2d59cc0389d24407821c89187a2ee08f05"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.7.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "146ef625f963a671bd63c0d3273d5c96b9bad94665d140af18dd2b468016951a"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.7.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "653a659c201a055cfd8f658e111699b2f80fa0b41dcf70e3e01983362faf04f4"
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
