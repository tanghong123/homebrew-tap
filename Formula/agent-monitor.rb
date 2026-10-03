class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.344.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e26e8143b0e437817c775ce11e71743f0b010462293fa6f028b2af81ddcc6001"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ddc77b9f8b3bbe226b50781415b547e13e9cd3f7de260c4863f0002ea60bfc6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7af1f8ccbf9caa8248cc1664210a53ae2049e2ce1a5a48e50189a15b32d712f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.344.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df9d6edc3a532a4537874a1ad505c805bce3f9d149237991c6fa07f49c68e44c"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
