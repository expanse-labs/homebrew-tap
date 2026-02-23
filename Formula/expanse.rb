# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.7.2/expanse_darwin_arm64.tar.gz"
      sha256 "93724c9fa27b23711de286b8b23e436ec52d129a8611f0bae2205890d124de56"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.7.2/expanse_darwin_amd64.tar.gz"
      sha256 "795466963ba4b36d2bf4439059d5ed94897cf45a79762827cd5707156219b6bc"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.7.2/expanse_linux_arm64.tar.gz"
      sha256 "f8ee77d7d9a246fcad78a9f53ae52674f87aff0ee53e9b80f46e6ca44da666b7"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.7.2/expanse_linux_amd64.tar.gz"
      sha256 "598b59be45e4ccb47f1e358c273744403a9e7a2635e63e469f8365079923ac7f"
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
