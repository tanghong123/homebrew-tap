class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.107.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "df5cddda6a19eb5f657f8d92d5d13579951d865395887c568dd64945a910057d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "986d7cf4fb0ed511f25baf7de37baeb9fc64f6acbc6ddda3fdc1537760295a46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77ccf929e082f3f38c5f64258fe77bf37838f12df9ec39c395dce92159e2acf1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "57793b084856abfa8c7c6f602af144b229f7b64ec79b5bb21906e152b806cede"
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
