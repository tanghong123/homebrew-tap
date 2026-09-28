class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.325.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e5b6156275d524557c19b5158821f9bd16786ac67868c6a2d46daa03d74fac4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a4c3082bf07f993d9cd1e8233b7d785d3c308da9bd1b049d04fa3d09096ab532"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b44fef24ff82c4983a96aa2ae693a1ff6e8cf0a03d1e02476f9367e0c7060669"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f06ab9792adf25f6131e6a9b664878b748f66ac7442f8f1aca10f671108daf2"
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
