# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.0.1/expanse_darwin_arm64.tar.gz"
      sha256 "1f986617ac1eb4b0e5dc7a42c3d705f9b57ca9f260a068c53268175087018c58"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.0.1/expanse_darwin_amd64.tar.gz"
      sha256 "074e69dd01fd3780c9c4db6a6a28489317d7e1d0703a0db3753d6b939cb9975d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.0.1/expanse_linux_arm64.tar.gz"
      sha256 "5f2c191b23f979fd0d8bf815aba3f247cec0d799eaba505e4b21ca73f21afb53"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.0.1/expanse_linux_amd64.tar.gz"
      sha256 "6fe7ea14c3f36059d49e14b6aa5eeb493919dc4ce3ce04fbc23d8cf0e0593e07"
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
