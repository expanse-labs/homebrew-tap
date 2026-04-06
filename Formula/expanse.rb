# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.1.0/expanse_darwin_arm64.tar.gz"
      sha256 "b8a559ed97d7978f294e1b4a38f7337743a23f1a8b91bcf16b33e91331d7886c"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.1.0/expanse_darwin_amd64.tar.gz"
      sha256 "e2ec27064968af4ea99a1a87fa4b58edb15d7bab4987790c2451e41b567e0519"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.1.0/expanse_linux_arm64.tar.gz"
      sha256 "e141cafcc8f62637ca605cbb90bc02812616399814ee6de58892337513695762"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.1.0/expanse_linux_amd64.tar.gz"
      sha256 "e9e6b258d4f082f9a03709213a0404db08c366a73a935032473f13dee9ffa49a"
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
