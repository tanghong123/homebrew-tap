class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.559.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8563c3b914ef1dd2759753d70ae48709396a09901b8cfd867feb4ac6a96afa97"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e67ce1aeb7a509440dc2a439f739f267200a6477715c6b95bb227fe318fead63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b9e0e5ea6018a1736077c7699562be0591dad243ae2fa4ecc15689badfec6fa0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.559.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5636c0c8242d5e347d0ba5d9ac4f159ac4332579b2b78282b4bf448e4dbcf341"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
