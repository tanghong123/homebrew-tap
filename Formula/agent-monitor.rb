class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.361.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "29c535ce56858d83b7781c5c0670ae97552548b499109a3d470e9ac8537003fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8ceb19ede40869946b85aca1292f3f83c726ce296c95641cb3f18245696629e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6073a56be0c2845678cd98b27cd12502282ac5743a41248d488b219358bc1718"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.361.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "69e7db0f461f90380ab0687fab669a7c0eb1a52f3bf6bccfa89bcc0da5186556"
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
