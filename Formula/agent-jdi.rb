class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.18.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.18.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fa03b7f04f3d0b9e26ad976a42ccda9240aa22473a2709c808e4a1dd1098c250"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.18.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "40e8f889c11e91cbd72b08375de093218f65291fa386e3bc1961528820890836"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.18.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "73a124f1122508d67e109c1ddb0dace407ba991885a7306d91885750c0b9b9fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.18.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1194d5a20fe19cfa42a1b43f091f5d3fac612f8986b78956fe96e2e0a3686ee8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
