# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.8.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.6/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "05d2b543750e9b2ef90084936e606b1be458cd2d6cc37d91fafb80820ddd333d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.6/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "927fb80cc25350871a4877fd6af0335ee01b425c2e9e1fc909179703683f623c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.8.6/expanse-daemon_linux_arm64.tar.gz"
      sha256 "debf7ce606efa708737649edf8b68bd396fa0134154434f6fcd218ab0ec71043"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.8.6/expanse-daemon_linux_amd64.tar.gz"
      sha256 "9be7ee45471fcdc2704260858063585c3eff6693e7501bc22dc3eaf6055840fd"
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
