class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.213.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5d0b59301bfb0b632dfea29069e32cb00759d81573d6eca9b8c26a401f7b1e8e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1f21bbae2c67417f75bf41115e8c65ac14c94a4b0352c7b7bdf4fac6a3cb7713"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d41d07ffb18087afbf9608ada0fc6a62a571addc5a1741da7cd53c0790b4aa48"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "05cf2582a303d448b5ad58f7dec5388777b94eddc1e92ebc9c14c8f8299f3985"
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
