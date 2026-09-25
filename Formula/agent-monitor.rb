class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.303.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "56b1eeb6790583a9a813fe31072dfbb12d311391218041802dd12cc9fe3b704b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "86716192abeb282755e02ad9427dbe86331326bdff5dfff5c4b536e235578379"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "87b1c0702b6f8a32b6f8ef6f972a11d899c85fdef9e4d5a35037199de6a38808"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "329cbcec752892432b2da39f934734f5689e5acd3464522f2d9180bf86f5ec4d"
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
