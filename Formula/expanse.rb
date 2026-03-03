# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.12.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.12.2/expanse_darwin_arm64.tar.gz"
      sha256 "4af3aa41ecfbfa7a53acdbf95747d8d6923f538d364524c3578445614b612e4b"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.12.2/expanse_darwin_amd64.tar.gz"
      sha256 "28332a2f06b2325a7702c325cc86815db293edf801362c5c0dd22c5e4cf2f280"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.12.2/expanse_linux_arm64.tar.gz"
      sha256 "3c2833f7bca2dd2d7223512ef98cdb4f57f9660c4f65c5d5881badd11eb67b49"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.12.2/expanse_linux_amd64.tar.gz"
      sha256 "ff2057378dcfd75876f055c642c9ed0e6dbdeb84b26a64c505c6202b5fd616a5"
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
