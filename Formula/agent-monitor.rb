class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.197.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8c04fe5bf753c9b64c3c302b9f440c5b90c4579d930d492d54f96a5e9f50959b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "eeeae08c303a1ef976cc667e51ebd159da2c91caa8cde420bc2ca8911cd06cbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86fa29cd93c43e90fcc535842ec69f8db8bbaf6b52f0eff4cbb7f38bfcfc897b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.197.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e567e403d3c98d97f63151689dff8779b43e0f8f2d6487e00b339c6f7dcd34c6"
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
