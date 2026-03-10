# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.14.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.14.4/expanse_darwin_arm64.tar.gz"
      sha256 "d3ba6317f9ab207419b2540a75429a4ac7aa6ee33017cbd12a642db226e6457c"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.14.4/expanse_darwin_amd64.tar.gz"
      sha256 "2e0663bf0eb3e191f516aab07326eaa5a1c1a39b103c12486de1b2f3a06941b0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.14.4/expanse_linux_arm64.tar.gz"
      sha256 "dcacbe63d41820f142ad88796af0ef533ce82dc83eb7ac9f1bfea8ee03fab02e"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.14.4/expanse_linux_amd64.tar.gz"
      sha256 "91eaf3bbf624e578d446f0720e5335f607f8941cf1fb8bb72c34135e0836c3b6"
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
