# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.12.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.2/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "e82372be7341ddf4d9fabc6cf1737ac637ddd7f6f8dd5717696cc8c159a3a4c6"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.2/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "a89b11908970febb6768535cfabe33ec53c71f1f17b7e45098998c06fe9ed309"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.12.2/expanse-daemon_linux_arm64.tar.gz"
      sha256 "1a94129b9ff72e5827fef7bd3d50445a6848cec11b7bbc7a05abf4561448c368"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.12.2/expanse-daemon_linux_amd64.tar.gz"
      sha256 "63f2d869a5a1023252bc913e0bac92e1100c4a75132137b329f871916db69665"
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
