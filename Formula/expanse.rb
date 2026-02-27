# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.9.0/expanse_darwin_arm64.tar.gz"
      sha256 "a96d38a25db2c326a7aa7d4fb5659af369ced787536f1c05fcc4ef48ea672a68"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.9.0/expanse_darwin_amd64.tar.gz"
      sha256 "fd0c2c2e128e0f663410a1c88a9460fa10b4e3695a2006fc345bde655e0294e7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.9.0/expanse_linux_arm64.tar.gz"
      sha256 "4ae1590c0589b43d4200b0257db8c7b265beec11506410d099b2d401ac01c487"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.9.0/expanse_linux_amd64.tar.gz"
      sha256 "1c0bde21feca851f1182a2c55fea62ca77dddf61973469395940b46eca3f99ef"
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
