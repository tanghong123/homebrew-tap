class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.278.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6ae7c5b80d8770a002719c65bf3a313dba4e457b9f5627e7c7ccf4b88a97305a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a9cd3703b9a4938f58541a66d512c793f77c2f31eb6841052b9e179af0bfcd9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d25f61bc5635a2775950754e96824f7218069419785a0a9126bb5ba24706a06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.278.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39ca5bcb978a0305ab1e26e93fec4459dec798382d301a1463a9c650e8f397aa"
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
