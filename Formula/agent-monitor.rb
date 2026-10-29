class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.447.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2d56162baac0fc1e63fb66402036cc237b50288914426c638ddfcf0cea02c3fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7fbae0b4c189652809e0ad3afed634d7756bc42d7370ed3e266e98500e639b6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cecc724a65c3be86f6ff4d7769500e2462c52ee83c693dcc32dba6f83f1a3146"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa92b77b5bed7da725fa0be4770ed41602367315d60ba80a5271b913a7dfc84b"
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
