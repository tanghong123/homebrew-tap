class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.123.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d6939b781a42207c9473262ff24dbc51c325cf00ffb6b70f2f370aac1e2c1594"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7b9ca31ad8a48394f7fc3be3eb653e3400ecc5aab30d5c7f1a1f9977a3f12c25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37a41a72f35dcc5b02263b817cdafada4bea995c41cca39d819ec417bca3bfe6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc60ca23ae93591855c43470af3e64502838fd71a1445d208c9f0908be43de25"
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
