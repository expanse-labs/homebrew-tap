# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "5cce3ca3e2b3c4aef117e99cdd50a2b493fcfd341ed222031c23afcc7cace081"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "67465548ba311fef5643b0dc2af9a296235e5fdefd01de811ca767bc77ef7fb0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "008ca8d70249fc21b6e9c98e8b4a73a5e358561b5db6141523726e3c4a7e586d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "400a63733c6580a070e4b8e6dac3fb6544d319b7952745ade4f47f33b6ea2835"
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
