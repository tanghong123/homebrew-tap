class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.153.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "70aece5bbd1224a82a1df3a4fd69380ee579f91486ccc73d8f425cd78ff1e765"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5ec0d18969bcceb5e549be4f902324fc0bd479e008e8d1c4c25f76c02c5a5a7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61bde6213f0985bb4e464fa3903c976d11457e9e08965374bd89bfeecba4486f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93d516edbb0a4c95284f4e4a5652b7e0619f6567f758b2899a860c26aa21aa32"
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
