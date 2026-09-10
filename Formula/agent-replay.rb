class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.245.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4ada53391a19ae06d4dbb57de8242e136092577711c540f6be2d29f9f710fed3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "12a9bb3b2f4af974a1d28d9c95728563c9029a4933b533e158e57d8a3da2f934"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b421c39c66b1aa5a547e064ce9060f4fb028fb7db5f379631581c07d5cbca877"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.245.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3bcd0c62a0cd64c43ef7ea8628d52bde473d66fcceb8d2b0578803459883757"
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
