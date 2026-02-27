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
      sha256 "d291f3cde264de5d5fe42b48bd6f6c1830e5057d35709b15aa63cda5dec96b78"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.11.0/expanse_darwin_amd64.tar.gz"
      sha256 "cc2348b6131662cd4ff0a54f442e3062ee6770347c6b08e59439996693f56623"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.11.0/expanse_linux_arm64.tar.gz"
      sha256 "2c9aa2afc41fe18b5957a73fd00848ed18a80f18a9f211c3708ef2ca4b3c4d93"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.11.0/expanse_linux_amd64.tar.gz"
      sha256 "3df6f816984bbd0907ab066f7ce536e35a2279a1aaace2c5afa5014e9fe8630e"
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
