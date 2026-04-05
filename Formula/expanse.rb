# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.0.0/expanse_darwin_arm64.tar.gz"
      sha256 "a38b72715a80028dbd8b5c706f5b5759d97086dbc7ddeb8ff92f1ae7efc12567"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.0.0/expanse_darwin_amd64.tar.gz"
      sha256 "650dbb62de31e315f7bf711a144587ce2a7a08b5cebd556903d4deccfabed728"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.0.0/expanse_linux_arm64.tar.gz"
      sha256 "6a13e238861c7712c4103dce0d6f30c5fdf7b5e443354537cce376077ad90a4d"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.0.0/expanse_linux_amd64.tar.gz"
      sha256 "897c8b0a795800ac28a96d0bb67df2df40a3d449a428f280541ff91a59849955"
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
