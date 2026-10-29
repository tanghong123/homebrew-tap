class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.447.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "243cef46f57cedeeea168b4bf4ddf9d6223f812fd7be374332b8ffffe1edc801"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0305a3dc7060244f6ddb52dc8424e53d3c5f89d0241d682e4d212c65b4a84ddd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff7fea9ea77be592d4889775d16cb1f18437a92a785432d8600bfdeae5eb2f07"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bfa714fba1077eb7d28d68b5b34bf522cdc3fadc6f414b197664dc2f561b31d"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
