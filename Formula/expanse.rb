# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.12.0/expanse_darwin_arm64.tar.gz"
      sha256 "b931a4b11419da47157253a1429414cabca407334f501845e092d7b104f5959b"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.12.0/expanse_darwin_amd64.tar.gz"
      sha256 "a942f0b004439359eb4e0540e03f5f388b0634d4619676ac8125fa8abad88812"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.12.0/expanse_linux_arm64.tar.gz"
      sha256 "01f6e810ffd9b543c1861a4149568f7580f2a89e747195e87c8ac882b9fbac04"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.12.0/expanse_linux_amd64.tar.gz"
      sha256 "49c6d193f55f9ca6bea8b863b316dd63c42c9311b416562dda579a037af28555"
    end
  end

  def install
    bin.install "expanse"
  end

  def caveats
    <<~EOS
      To install the Expanse daemon, run:
        expanse install daemon

      For Docker-based installation (sandboxed):
        expanse install daemon --docker
    EOS
  end

  test do
    system "#{bin}/expanse", "version"
  end
end
