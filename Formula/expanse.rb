# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.15.0/expanse_darwin_arm64.tar.gz"
      sha256 "7bc72590f45771724e1a13a7021df620ff595a3497375c71e441b5822fa07863"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.15.0/expanse_darwin_amd64.tar.gz"
      sha256 "1cc998d7185b82c1cf60e3a8b717f042b4bde9678a4fda1a446c11474f5a288e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.15.0/expanse_linux_arm64.tar.gz"
      sha256 "66cf73d9aa2550769eb02464c3fbdf6408778387f516a1ba58737a0558b04b7d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.15.0/expanse_linux_amd64.tar.gz"
      sha256 "28bf40f1ed3905ee675c1caca6dd429c4a74f97e322ee7cbdaf74e962da79057"
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
