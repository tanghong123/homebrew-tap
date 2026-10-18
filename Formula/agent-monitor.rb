class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.387.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "be0f933a85867c62e022d9d1a623eec2add56b0a41f4ae27f5d966d5bd52e2fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4a8556664e763cddd76dc8d92d39c4a59a5f8a5a1a506672a77fc5031ea28a53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2593e84a1c2f8955e4483f80b9d270fcf6e298f5c80f058f90588a7b2d22ad79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.387.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f1fc3295e3c38c29e62fdecbaae213ce6df73eb31bddbb4d7dbbcd988336c92"
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
