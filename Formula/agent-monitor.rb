class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.269.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3201f7256ca227aaec68bcfd1e85d2560faacba964e2646026d9874f5b4da12a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6362dc6cf8d07412bf10933b2f1c812617d0e20699692506825a1ef2cc098d47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20c296781887d452cf3a541cd615b8d1e147d4d15966c585033ea701857fe409"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca8d470bbce674b666e6acc1c7472c4a8bafa15135c4817f3f6782a809663c93"
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
