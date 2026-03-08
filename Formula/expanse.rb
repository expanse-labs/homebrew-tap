# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.13.0/expanse_darwin_arm64.tar.gz"
      sha256 "1a18a5f632aa6bdfd749d38e50d9aad7776b19493bb18a64704f68af436f32cd"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.13.0/expanse_darwin_amd64.tar.gz"
      sha256 "8a5b0ba3ace8ca7a76db39dde1422fc702522b3273e8baaf39eca74c21301ba9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.13.0/expanse_linux_arm64.tar.gz"
      sha256 "4da4e5b9c9ba5a0dec6840bdd7bd5fa616ad2b1c11a8d242b59eb61bc23c8feb"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.13.0/expanse_linux_amd64.tar.gz"
      sha256 "4c98300794429bbb3d0f3047caec661846d3bf3e1089a632b578dcec1b0a7a7a"
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
