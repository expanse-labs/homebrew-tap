# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.12.1/expanse_darwin_arm64.tar.gz"
      sha256 "5af2441803fa5639eb5e8d7f837d78f8190ebb8461d84b6161ecc01901e85bb5"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.12.1/expanse_darwin_amd64.tar.gz"
      sha256 "8ff72524a8d6125ed13c33a641f6e03c88b1f3e25ca369d1f31ab40db527e10d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.12.1/expanse_linux_arm64.tar.gz"
      sha256 "7d68c510a521c95547382edcb9d4bd94e4c3f7e4a4161aaa36dba3c1bf900f11"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.12.1/expanse_linux_amd64.tar.gz"
      sha256 "f3d89a423d015d6f544818dad1719637299766424071d3746cff9ae8a53c6e65"
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
