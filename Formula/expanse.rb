# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.1.1/expanse_darwin_arm64.tar.gz"
      sha256 "045b3705ea39bc6fce17de7da6b0e0ba73a390fe4b65c534eafd7d8ad5b15e55"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.1.1/expanse_darwin_amd64.tar.gz"
      sha256 "d8c52888439433fbc0036d66112f6176f80954e7fdb1885ed52b11b1a3a816e2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.1.1/expanse_linux_arm64.tar.gz"
      sha256 "89a4f0f72df005d9df5596b4557f5960f33ae3957f16569512454272e5dd0750"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.1.1/expanse_linux_amd64.tar.gz"
      sha256 "61f74e75de94a3a4206acc82b00d5ff179c12c4e4f65202f3f93b59fbf3ef3d8"
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
