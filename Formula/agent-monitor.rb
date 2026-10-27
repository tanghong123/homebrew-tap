class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.434.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a40d8f898cb94651e306318646772051387b41fd8a51454f196e87cb4a6da603"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "727733de66de58911c81be5c0c821cdfaf5db4b9c6006217e4dae219c82c5431"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8c3afbf323736ac6aa02cf2d1e704f7617702028f3d62df4923049e6b3473b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8872b3f75c5af9a4953c8cca289d6678edfab298c48d9396d169511214540398"
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
