# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.5.2/expanse_darwin_arm64.tar.gz"
      sha256 "439c8aeb5dd191140458f29e74c2195f044ac9eb3f5b42ca022aed01adfd5478"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.5.2/expanse_darwin_amd64.tar.gz"
      sha256 "6d7fefdc5a145227b35e7c6693c209302d4ae9c06b17c7aaa07d139de7070022"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.5.2/expanse_linux_arm64.tar.gz"
      sha256 "fac7be5bf850d9333947211781cf623f7ee3e8d296dd34f48059b43224d42d56"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.5.2/expanse_linux_amd64.tar.gz"
      sha256 "9ec8ba77837da792917f84324d9fe432cec875a67102179d8e7953871d408499"
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
