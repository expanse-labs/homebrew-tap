# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.2.0/expanse_darwin_arm64.tar.gz"
      sha256 "210585e532674a57a25f235bb0e911d2fbbe28955e0c01f3d6c1633065687063"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.2.0/expanse_darwin_amd64.tar.gz"
      sha256 "3c0586983ec62400bee198e25087e7e1b14627fe6ef4ab0d9eb83d33e5aa5da7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v1.2.0/expanse_linux_arm64.tar.gz"
      sha256 "57e7573207403cb6a4c4f6f7362d854e33b6dd1d7b67046d7d48069d6deb9ec2"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v1.2.0/expanse_linux_amd64.tar.gz"
      sha256 "abc61aa906afc7042c940b374422493038cde507de6e1479eb03ad734e2f5c48"
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
