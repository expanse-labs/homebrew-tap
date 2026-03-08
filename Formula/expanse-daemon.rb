# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.13.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "63d60303bfb7b4492a2d36c4b201eaa111d02feeb7c902d445e286779106d9a5"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.13.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "5af9cac40ce61a2144b97e3b3ac54e24878e4ddc516af625fe6195d7be503f24"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.13.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "e73c0a3a9399d3b41951740cb3eda00e15061701246914c55edf7eb9704f3db3"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.13.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "430df8825410dd5a46bd0148079fe0a5e9241820281c70052df4c11dd4c16e55"
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
