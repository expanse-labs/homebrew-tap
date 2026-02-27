# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.10.0/expanse_darwin_arm64.tar.gz"
      sha256 "4e52fa4166666e80dfb0ac8a1a7457033b1e536ffe8b94b713109e4f04ce8269"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.10.0/expanse_darwin_amd64.tar.gz"
      sha256 "c49bc55d042a378914c644e0b66648703722858a39f7652ff6a332ebac8cb011"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.10.0/expanse_linux_arm64.tar.gz"
      sha256 "0dc6aa602e7295acc688a1bc5bff80eaf4cfdabdb6ed3cfbc2a2f6dcdfb3e94c"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.10.0/expanse_linux_amd64.tar.gz"
      sha256 "355c1200e7c787ccc59826efb6c85c32e9146e35f1747160ada1f429771f2ef1"
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
