class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.310.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "47900e61f019dd78298b14b5133c8a361886e00458aaa78480600d200d5ad157"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bccad57f3e6869cff10ee7309862acfef807298e22ffbe5d478ae79ed5420972"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8953869ab572679286237fcfabdba778127aefe0311d6156e551d566f6409cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7661ac58a51f9922f2646c266d794bace77b7f5edde8fc3caf6ca6fb2f80dac4"
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
