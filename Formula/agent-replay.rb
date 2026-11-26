class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.571.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "854cfdc901f3bf52a451e3d0c94a3e655a69d79056837311baaef1443258f39a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d9c0eefec0067923e8c26105f7e9714ea4e1dc3e41b333c3c1756cf16e753c4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "390e259cfca8bdd18e8d0f0d801b21f52b40d697161180f26f1bacacd3ccdd28"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28fc45ce11bafc01002412e569457131e05cb24367e34e20d2fbbb1bd2a625c7"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
