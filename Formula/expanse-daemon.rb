# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.1/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "132852d1e8e1c5fcc4cffe47663cc27f7a5f502bf073abad223515ee48554be8"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.1/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "b9a8d8a2978304b313445c73fa00b3b64caae698575ac9f8f3e703ab6b3c4e26"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.11.1/expanse-daemon_linux_arm64.tar.gz"
      sha256 "3435f4cf5a6ed82c0ec39d238d235003f0e74d06d5fc408fe861c2c3a653cd84"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.11.1/expanse-daemon_linux_amd64.tar.gz"
      sha256 "4c36b0114f374591a9458791fdcf91885514e15ea294e880d44ee8d04ccea53a"
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
