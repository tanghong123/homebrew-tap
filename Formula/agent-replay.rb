class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.125.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f3caab2e1e40a34b89a658ced7fd1d18afd0f3924fd9175b56df212683723761"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e2b3783a6c833122e601f24d1a5371f1fba7ea18b659a633d36b4205a6b20a13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9e0d68ba364eba61478e5efc0c4dc2f080188ed2ebfc6eed366b2c4bb5b7e0e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf38f874f057c74aa1b5edc82e11285f33c1063b7affc180006558f9cf4e99df"
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
