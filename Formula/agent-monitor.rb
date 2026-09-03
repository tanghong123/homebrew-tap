class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.149.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "85c60133969d514428fcb6afacc7093667bbb5ecfcdc814a90c017166e7c4f79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d31e276d9c6053b640c1d28cee8eeb31bc13290556006c1fc374737ae9aca34d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1f1b473707632464a77348ff9ca302ef54dc00d6ffd39086969056510e6185b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.149.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "426380db0bc39bd04c06860a8613953d889055fb97751d46da820f147eabbf52"
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
