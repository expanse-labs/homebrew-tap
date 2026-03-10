# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.14.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.14.2/expanse_darwin_arm64.tar.gz"
      sha256 "f31f150e26edc8733d6ad961dfa376b03bf11796e9d533f57afe1c16262bfe2a"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.14.2/expanse_darwin_amd64.tar.gz"
      sha256 "2ece149d3a8efe261718628a56c73522da1c8a3f28d11e5ee438487d9036b729"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.14.2/expanse_linux_arm64.tar.gz"
      sha256 "aaec81fc13a722613ce77fddca4931ea1fcb655e0d11a931fdb569c0ea7a53fc"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.14.2/expanse_linux_amd64.tar.gz"
      sha256 "3982573349e357db970b7953afb2e6d326274d10f7e8be162c341e764575c10d"
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
