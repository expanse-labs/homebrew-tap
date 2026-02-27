# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.11.0/expanse_darwin_arm64.tar.gz"
      sha256 "f554eaa2121fbcaf50447a219e7970b4294b309efa34b7c8dfe62966a77edd6b"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.11.0/expanse_darwin_amd64.tar.gz"
      sha256 "21146a0f09b05f2f2f4b771b7d67e2d028c6f1532fba13b25b234b5c0b3bec14"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.11.0/expanse_linux_arm64.tar.gz"
      sha256 "5acb7fb2bfe906df69276da35723dc4830dd01461d700f19494919d0c576becb"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.11.0/expanse_linux_amd64.tar.gz"
      sha256 "1e79dbb90b5fb192a2ca08b3c252ffde02816726fa35053aef779f3bb45205b6"
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
