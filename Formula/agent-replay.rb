class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.318.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6ab30225fda7bc6eaf340964673834ba8fcfaa614e380b5eb0ad2abb8e5d9737"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a39462804ec8ccbe68e0b686ac405a314c7b2097f9d4d888e8a1fb5b2f972452"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ad225a2a6cefdb04d234d64e61bc87fcd0738bf053323b0969cc3accdf09001"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc6d45bb13fb34833cfeaa8ab0e1ece5fe5b6b76051d0431aba4a3711e4dc856"
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
