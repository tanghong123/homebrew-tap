class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.400.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "91ed318b5321d804a452b1b5c1f655e2e69485843048bad803c5cdd64b11309f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f154522298418561dd434ae73ae66fc87e178fa83138e1d610b20f876e38c504"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf442245bc5171ffafb5284960cfaf2d47a23e919e45febad677fbc2d67992e6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be45f2066065491fd9a47fdd7c64eca6e55041888f29729b8a2d936b8fd1d966"
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
