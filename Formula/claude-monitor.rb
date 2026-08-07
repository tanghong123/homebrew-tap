class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8d20e575093c93efc0458c871e2807eabc547ed091d748b232c5cb59e91ebe5e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "259cdc39108ecb928975410277c91fb4079cdd90ba092ac527d97816c9b76907"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bdd7d879e75011fc90120d770169889f71640aeaccd90dde01be0078111f0f96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1aad045ce11e70521abfd753a36258c0781edd0af0f6c2eeb6a99b95240eb4ad"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
