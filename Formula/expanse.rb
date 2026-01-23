# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.1.0/expanse_darwin_arm64.tar.gz"
      sha256 "8d94a75cecd4508889958287b08c339b57010e704449e92724b9627e9cb54786"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.1.0/expanse_darwin_amd64.tar.gz"
      sha256 "632d60f9f1cfb1a1d3859429bbc638ea04cc238a4c13c7259103284cd64e1a86"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.1.0/expanse_linux_arm64.tar.gz"
      sha256 "95f5e6b3a0a715aa50a81cb9fa7c4dadee1a16035bca8f4c2da84cb24c16b16d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.1.0/expanse_linux_amd64.tar.gz"
      sha256 "d597a9e359d2ac9ba87c054497607443fcc10ded8c9a3b79003b55b52884309d"
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
    system "#{bin}/expanse", "--version"
  end
end
