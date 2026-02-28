# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.11.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.11.1/expanse_darwin_arm64.tar.gz"
      sha256 "6afb7cc4f31e182f0582f1a206efc424592327c7f30b2c2d9c475f0cc0f603e2"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.11.1/expanse_darwin_amd64.tar.gz"
      sha256 "18175dd9aa8ad1d14aff5a8e9fce74ec8038313eb441b60a782046bb98923802"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.11.1/expanse_linux_arm64.tar.gz"
      sha256 "7f5ec10b325e08a836fad3458c7b0e31ece383bde970dc6f8aa7f3cbf1c17e69"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.11.1/expanse_linux_amd64.tar.gz"
      sha256 "4b7df78ab3d43a6146a0a3141f2d30576eaf538b0de44c1e9ab2339905ac81c3"
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
