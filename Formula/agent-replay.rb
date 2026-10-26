class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.428.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0ab6ac7173130dcff87411ebc6e0c83071f2dcbdaf941f575e3ed1075eb346ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c1b6c8959fe39b46176a28513f998a55cd2a9859436d6fa95ff332aa20115fef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "78af23ef7565d62423eb1d60c9252c4f18e5407876dbce4238a0f9eeb9cadd1b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c0c7dc1094026dab5cc9de54706e8869acab13017a18ca7f4813149f09606c82"
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
