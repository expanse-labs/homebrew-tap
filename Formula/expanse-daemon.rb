# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.4/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "570f4ddac5034b3f98ef67bea0799c66860fba03a661ba52282a1746324d7b56"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.4/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "badda36edd4fdbd54b7c128216cfe3e901a03210c612df2a47aead91715e3a29"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.4/expanse-daemon_linux_arm64.tar.gz"
      sha256 "48ca19cec570b0ef3be542c3ffac676802337107f804c75aa4a236e5c7734e70"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.4/expanse-daemon_linux_amd64.tar.gz"
      sha256 "abf90f6d5694506e35545d0dc0523cecf6ba303c11bfb20dc813718b0cb030a3"
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
