class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "dfae7a921dc85bae4dbee17f82dd949f370979081eea9c885f0611e447b761ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dd97cb2db002266150062a5b358dfddd4efc1c2878bb797aa379e899696320e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "938e53398a979f6dc53faab1969739011601a6e53726a5353b759b97c350d180"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5db5afec8f3b5279e6649535469aace36b5828b006ef04d6679fb204712b501"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
