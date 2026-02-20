# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.6.1/expanse_darwin_arm64.tar.gz"
      sha256 "06e74fb158cb39ac694c18bcdb1020ed79aca1e74830be76466995d99eab7d37"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.6.1/expanse_darwin_amd64.tar.gz"
      sha256 "be206d57eab46c9fcfa84c22f69afc934fe1fc2a7ba6343e48979e95f2a06d88"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.6.1/expanse_linux_arm64.tar.gz"
      sha256 "8f459e381b0f4f56eb78a88799148b579518e1fbc072ba7af2358e8163b5797f"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.6.1/expanse_linux_amd64.tar.gz"
      sha256 "904c9a595c50870673153c75651614dea05cd889fb91ed455e6b3ffee0b6ad87"
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
