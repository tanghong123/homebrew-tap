class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.309.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3c334c14f2b290a2d1e95293f28d307684a1d096c959c325f164c1167e347614"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e81803b389d6b571246536e3e8fa9081ccce3dc8f6eaf915e4836d19262d51c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6fbfe7942885e20ac5ba1d24c2d785be954a67c3aa1987f5898bfebda8c6f39"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "69ed740ddda9581d74cdb0c14dc4f11ca40b3cdbb7d6493b0184a7c8750ef6ca"
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
