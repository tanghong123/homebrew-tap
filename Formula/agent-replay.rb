class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.112.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6acea49c023de99e27a17951ac8383a121117f249876f170b8e1a32bfb4a9c69"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "45b3098736c6bfee6f4ed5f8c0384934b568a5e649e7e809bff09364cd31708f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "669c33ea91383fd7c93af7240045e88090583d109c058eddc305de5e0f16b486"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18377f9a7806ac37ecf06eb649d44c00d649fc2433e12728dfd663e262610831"
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
