class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.357.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "450a0089716f39bb984adcf33c623a40796c273da0830e7390b3b3daacf2df1b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f001349c197b54081b3bca0ef67347da7567db0445b77b38b835ed0710b465b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03d9df6e5108fe1f8a54566e831e6474062b6aa4c1759f98c151058c8ba76597"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce1ae1e56d8b4202b69f17a2cbb41fbd81c35237ffb36c422955d3315f82ac5f"
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
