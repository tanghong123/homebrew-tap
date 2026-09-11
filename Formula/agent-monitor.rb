class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.253.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bb43743af9d42b4c93930466c2b0177c05870f8968759be25699a02e1bb671b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f278c4dd4827f425fb97c487647f9746e927f3904b667b5f0992b46f87cde229"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cf44b16543087fb2924542f3ab7ffb5cfbcc284a3f4ee409a89260de44deaff8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "933f79b0995e9276609c0279e94ce21331d81a0a20ecec8ffe11d1bef55c4536"
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
