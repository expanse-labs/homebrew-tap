# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.6.0/expanse_darwin_arm64.tar.gz"
      sha256 "9f52b3885d2ccd210e048af4083b7d247abe8d61a75b6d30589b453ac062e748"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.6.0/expanse_darwin_amd64.tar.gz"
      sha256 "14bd5989bec86c0bfa2a26a6f5fcdfecf66dde712f0323c246a5faae3f798340"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.6.0/expanse_linux_arm64.tar.gz"
      sha256 "1c8e8ca584d4ddc45359007aaf5e812b00313b92fbe0d165ec25845d06247753"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.6.0/expanse_linux_amd64.tar.gz"
      sha256 "df8871cb738f98c66abf9fce115250a5e8d6d9fa2d64416f6786c5e274089c5d"
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
