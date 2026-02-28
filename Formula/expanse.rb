# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.11.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.11.2/expanse_darwin_arm64.tar.gz"
      sha256 "3ea14ff8e46b2305658447802752694f23e71fe5476301c57a779deb7920a73d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.11.2/expanse_darwin_amd64.tar.gz"
      sha256 "5a741f25b438c6010f0769908d11d7dc2859600a953124e8189e37f96f094d76"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.11.2/expanse_linux_arm64.tar.gz"
      sha256 "411fae8b55dad3a5decee0c40356f422a50ef495d6b6e92df6c22d4ae366e03e"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.11.2/expanse_linux_amd64.tar.gz"
      sha256 "2749ae7405db53f9212b5f38cfcabcd4dac74dca5be387d21e9ff00cae950e09"
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
