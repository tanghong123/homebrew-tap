class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.262.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9e23c6a5046cf1b3b40a39ff76528f631e1b9f9ee6fa6cb8e0cff40b01f40665"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "59a550c5001350941ca782fb2d05e3a4092068424d56d161d89821c1f5bb622c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a775c861583db39306b6c0d894ee862f2a2504a39c0043370697a6c2966912b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8efca6666453c297e91bf8f0d07620530cdd29880f9b105458dd116231b2e097"
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
