class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.441.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "30ffd8770ffa6ac7534dceb2d98e4abcfab2dff86c35fd1429d4f1f790c99aca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "67dcbd04fcd2bd9e388d8e638d397454e58614900cee2e7eb4f850465ad8849a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d9ef9800c51c94b0fe1f676a196f816c9a6d9b8da3067e428bd5cd05abede4e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.441.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33a4e381d18cc44bbbef263d9bd328a74304830d06dfaa407d8fb153b842e74d"
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
