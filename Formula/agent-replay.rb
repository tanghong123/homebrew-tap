class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.190.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "069d0bbf3f8382f495210da5722f14aa631041d2eabb1eab12a856ac364613f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "118c2264b3c1122db746f1fe64348b4e311127b1d33c3e3acff4268c0dcea74a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "28c019d38c4a7fc26dca3f3871b952e1f0a796ce3baef3d9aa5c014061f6303f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a19ebcca8ac6d840cf02a617207a5b88f5ad8bb01596a4367b9efa1de9bbae6"
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
