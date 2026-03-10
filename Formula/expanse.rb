# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.14.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.14.3/expanse_darwin_arm64.tar.gz"
      sha256 "6cf40874894b087e8e9c0261187c288570ea9685e1d3539e8a6f034442055ed2"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.14.3/expanse_darwin_amd64.tar.gz"
      sha256 "083ede77dd7fc108846b1022b29645fab1d25262ac3bd00dccbeae9fdb8b1c50"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.14.3/expanse_linux_arm64.tar.gz"
      sha256 "b91488f5e307803f2928ea9929d0de4febc177d5fc6a7e8cd205842193718c5e"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.14.3/expanse_linux_amd64.tar.gz"
      sha256 "3b6107b0fe6f221e1fc028eaca0583868d967ed62878a041b43a1ed183637a1f"
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
