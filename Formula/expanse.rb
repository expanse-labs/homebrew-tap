# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.15.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.15.1/expanse_darwin_arm64.tar.gz"
      sha256 "6348ee22348d32e855210fd2b0a81743d6d5375f919c711c6429cdbfdca01b3e"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.15.1/expanse_darwin_amd64.tar.gz"
      sha256 "90d6a498bbf459afafb7599cd483b7d94d6f8e376059f70dc4bb4288708319f1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.15.1/expanse_linux_arm64.tar.gz"
      sha256 "0071ad1f44597db56081100028b8aae207be365ae76f187197f52e1600f78a64"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.15.1/expanse_linux_amd64.tar.gz"
      sha256 "50bb2ad0f7c2b85190dbe272a360d319d27c1aa2096c5248dbd7663aecb1b0b0"
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
