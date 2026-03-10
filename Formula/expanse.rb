# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.14.0/expanse_darwin_arm64.tar.gz"
      sha256 "6061da28d134f949d6edfb79fe63174454f4809acd53dc0a8771da9217c9e855"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.14.0/expanse_darwin_amd64.tar.gz"
      sha256 "4bcd73ba7663908eed27e5bdf62fc32a4bbd8113eaab22c663f474be0cad31f9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.14.0/expanse_linux_arm64.tar.gz"
      sha256 "e288baa5f29cc8d9437d86c50a3e9fa4e9914d9624b3ba49de8621fc008c9833"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.14.0/expanse_linux_amd64.tar.gz"
      sha256 "f26a97724c72c250f30b5ee506bdaf3ac8d404ef164114e03073d73cef24d998"
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
