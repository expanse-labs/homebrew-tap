# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.8.0/expanse_darwin_arm64.tar.gz"
      sha256 "ba4570faedb7c069b6b653fa62d8d8d34883ab8c0c9b1fd1dbd56d6bb10408d9"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.8.0/expanse_darwin_amd64.tar.gz"
      sha256 "41b0d78c0e5a556bb297307dd4b382ccef4428e091019ebf2bd7ac0284f91f27"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.8.0/expanse_linux_arm64.tar.gz"
      sha256 "c297a301d6e0380b7a8391d9d601c824280cd796c2675365a5fe99e817e9df75"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.8.0/expanse_linux_amd64.tar.gz"
      sha256 "b28dd77edc481d33f033ff372e8935018b9b284507c4f4bd4cb5bc8790828d1b"
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
