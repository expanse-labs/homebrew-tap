# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.1/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "73a049d31ce197a2415ea0418f8f79c689baa5cf5a6ef1c6f3cef53fb6e494cf"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.1/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "c951a16b156bf3e8122128b466c684a7ff3b8dbc5065413e6484bd4ef922f9c7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.1/expanse-daemon_linux_arm64.tar.gz"
      sha256 "4691811932037884c9f8a82b358f1b0549cc2d1399bdc9c300a3d3a7a7137c53"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.1/expanse-daemon_linux_amd64.tar.gz"
      sha256 "427c3576495a9420c3e6bd475985a2414a7d6aac227857da71928f2649a617a6"
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
