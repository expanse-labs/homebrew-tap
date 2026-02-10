# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.4.0/expanse_darwin_arm64.tar.gz"
      sha256 "ef586b97da58a10832f147baa9787a989d2173b04ca5a56c90ace517a3f232f9"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.4.0/expanse_darwin_amd64.tar.gz"
      sha256 "de1cc2629be2fc9062294d5a61c432a628a442c52ec3e4048bce4d601e043570"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.4.0/expanse_linux_arm64.tar.gz"
      sha256 "101a7ea73f140d6042b3a9a81ede2f58b745ba34359bba6045469096bd1a7cbe"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.4.0/expanse_linux_amd64.tar.gz"
      sha256 "408270851b157a7cd3bef0b02afcc3d850a3f94d0dbf728c7012282e8125f8b2"
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
