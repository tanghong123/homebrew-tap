class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.259.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e12eeca367f9e66f8c8f4694430674af4f2bba6459779ac418dd8ba595d60b40"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ecf000ebc2023ea942124525f06633f0a28aac06171c677fabcb8088eac1a00c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c5cdc142dd93419a08dfdc0ff023e3dfd6cb0bb6497902d6ff74cf45cd6d7412"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7fbe70924733a36577bc4aedfa1a6c4e01b9092f41a8389b258bca92f749ea68"
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
