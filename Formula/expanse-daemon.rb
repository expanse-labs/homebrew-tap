# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.8.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.5/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "5929db559883fb71357dac77432c621ece4ec54f215aea2ea29920612776edbe"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.5/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "44cf69419b3639e3cd9163e2c3113dc4f24b57c1d401f48a96dd4a524275225b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.5/expanse-daemon_linux_arm64.tar.gz"
      sha256 "33081e6fb80cf748017da354a9eac08578641798ada4b9cab2d3c3f61e3f3fbf"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.5/expanse-daemon_linux_amd64.tar.gz"
      sha256 "4daddac945a64a1eba66fca8b7f69d13343044f96da7e5d3039fe8091bb6d39f"
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
