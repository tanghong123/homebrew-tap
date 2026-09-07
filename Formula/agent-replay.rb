class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.222.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "db25fd6a9b09549921ec7d10fa7f37e7444feacd8eaafc030a421bd89d339f11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "db890b833415ccef4f651ede1406a23fad092c2cc23f61429c4e64a1ce10fbd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aba1bdf26df2e829ac16149e97f0ed6a28c72c79fd93129b37b3ee4fc0c365fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e505e965447b6c5e887249865b3b62bae06b0e00a8618722bad9c4971064c010"
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
