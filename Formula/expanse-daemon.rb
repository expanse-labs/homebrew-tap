# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.5/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "2e747b90e48a399747bd360ad1dbfbf9aca5f2fd763ae4d73b684b633a491ef5"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.5/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "94381f5c08c297362e4c0834ee78d0295fe7137f0a31a1645983b2c059ff83b0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.5/expanse-daemon_linux_arm64.tar.gz"
      sha256 "91341e26f81b73f63d739f57f1f3df61acf03cb63b6a3185d3e8cc9cae894b28"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.5/expanse-daemon_linux_amd64.tar.gz"
      sha256 "faefe04e8acd26e588452b8f898fa9cef7e5c9eb913de76ce9b946929d749b31"
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
