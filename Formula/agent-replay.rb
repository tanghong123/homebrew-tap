class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.421.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f632e07056ea36f1230e8b69436b6548a7b71bf9fac8be931ac5dbcfad357bd4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e884dbfdd13650357973e7735f7c07ca400593b11c8f4c2888eff8732194d41b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d63a7c2cd4ed24516527103a475a5ed235c32ad51addeafa8bb424554f73d37d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.421.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c37d3f9db45e2e0715df70e330d75bf21464ebe1e2af3f860a66cf87a0266e8"
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
