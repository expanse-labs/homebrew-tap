# typed: false
# frozen_string_literal: true

class ExpanseDaemon < Formula
  desc "Daemon component for Expanse AI-native workflow orchestration"
  homepage "https://expanse.org.uk"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.5.0/expanse-daemon_darwin_arm64.tar.gz"
      sha256 "95b70aab012ce4dc28a101d45bd0bc2bc12782af37f50cb87f87dff4c5739607"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.5.0/expanse-daemon_darwin_amd64.tar.gz"
      sha256 "c3b3d2bd7e52c38a9a02c2cc944f4a971db882b556a4330e5dc96001334e8ceb"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.expanse.org.uk/daemon/v0.5.0/expanse-daemon_linux_arm64.tar.gz"
      sha256 "0d9c54eaf0a9490aa7403225b535a548c93957d24e800cb7d0beba568fcc92c7"
    end
    on_intel do
      url "https://releases.expanse.org.uk/daemon/v0.5.0/expanse-daemon_linux_amd64.tar.gz"
      sha256 "47b1244cff15b1605fca2782ad27fba9ffe10f090316951a8dd7f2cfddeffca7"
    end
  end

  def install
    bin.install "expanse-daemon"
  end

  def caveats
    <<~EOS
      The Expanse daemon has been installed.

      To start the daemon, use the Expanse CLI:
        expanse daemon start
    EOS
  end

  test do
    system "#{bin}/expanse-daemon", "version"
  end
end
