# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.7.0/expanse_darwin_arm64.tar.gz"
      sha256 "0771b18030d4aa809e54a840b1f1040e9f893ca005734bf63589426b4cf51045"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.7.0/expanse_darwin_amd64.tar.gz"
      sha256 "ed14baeacd1c7eb30b28568bfe3d0c6483beb709a2d6d6a8ac777a86a51f9297"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.7.0/expanse_linux_arm64.tar.gz"
      sha256 "0e6a1f3abf2d9ce80e1908eb9d3f7065b8227aafa56b63cb9528ee00849ea9a4"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.7.0/expanse_linux_amd64.tar.gz"
      sha256 "0804d8bccc3947535b8ea563f0203f83fb4ae5b3702cd8c627fc0c8d4a6ec04f"
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
