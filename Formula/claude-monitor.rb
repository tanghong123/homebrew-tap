class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9c6328b2bf4e402beba08fead401a1403cb9d5c866c48c6062c03934ee6b2214"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9792ab371886b4ce2b0245992e91bb7026c86142a3e96c5f7c5d0146ca761390"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1947cae429aafcefa45b9ed01f437ac325b9ecc343ae03d68c285e118c492eff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b813b91d66adc5bd5960b98748869c91a6d4a46450d67e433b11f090e3a97f4"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
