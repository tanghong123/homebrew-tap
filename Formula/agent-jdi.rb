class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.66.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3e99fa8122b7d56239e1c40436d1109b200de5d7b380478c0cd1a60fb853d38b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f055fbda794bd1e0be34996fd0abb4501ff95bc58fa75c742fc4b19cf4f4fb0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5e0c938363f3bd85376a8464cc14b0b37984776dd61c582f215a5dc73ef659e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "922a1c5c4822dc284cc5aba7cba27ab5cc4aad7d357f6ec8845938f0ed7451f2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
