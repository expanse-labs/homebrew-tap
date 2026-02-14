# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.5.0/expanse_darwin_arm64.tar.gz"
      sha256 "e635f97de10436584697041bffe5a8479939d4bcf0263efc06b23d11db3f9ee5"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.5.0/expanse_darwin_amd64.tar.gz"
      sha256 "e8e900b5f02a8711372086677ff21a9adf0a892b75c3e74be9bacedfe4b78755"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.5.0/expanse_linux_arm64.tar.gz"
      sha256 "a25e15e50e6de1ab3d2688063a51ef341a22a9c8785b34913134931fcb71e1cc"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.5.0/expanse_linux_amd64.tar.gz"
      sha256 "7a841797f69e82ffbb1a3089c89a2eddb6d9aa9049e9b40123bc8f769e488860"
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
