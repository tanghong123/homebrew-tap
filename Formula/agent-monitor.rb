class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.133.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0997f96a8b972a77e592c41e056f25267fa8af583a513f2928c8d04ab7419080"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "a1e489834ac9d0e7b77b49d85fbca011f593f796a9f02e46b8f5e919732af26b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec32963874993e059684372a0ddb7de9d9f33c487121bc58570a5b92219c8584"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "524d9ba7ca9310775511042d94b81eb04411e17ee65ca07e713c5fec5ff32203"
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
