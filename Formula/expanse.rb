# typed: false
# frozen_string_literal: true

class Expanse < Formula
  desc "AI-native workflow orchestration for HPC"
  homepage "https://expanse.org.uk"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.8.1/expanse_darwin_arm64.tar.gz"
      sha256 "55da71cacfb4c4880ea6e4d407ff419736865c495876ed888241a3247614a152"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.8.1/expanse_darwin_amd64.tar.gz"
      sha256 "72f2060c7a0af55cefa8182fcb3e3e1683653aede9dcf97988c80012ded81703"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/cli/v0.8.1/expanse_linux_arm64.tar.gz"
      sha256 "6aa8ce63188173756c99af698a1e483f9a4990e840d83c264dc4929add130dd3"
    end
    on_intel do
      url "https://releases.expanse.org.uk/cli/v0.8.1/expanse_linux_amd64.tar.gz"
      sha256 "57fa5556b04ab2c25e95480f245b745700c5e664499347767666d9a05655e7fb"
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
