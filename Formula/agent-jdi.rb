class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.330.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cbcb62ea59d6a4ad0a6f3544ec8af770238abe9029716e78b7c728567eb7d944"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "52d9d0a656b6b51b94e587bfc08dfd1ca62ceac0b51be58307e0440519cb8e32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84c43017b2c466628f3bd77380db110cb7efddbeef5c6af277a232d193445651"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.330.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d97196a493ed6a96421851b389fa44ac88e0ae17faa5c5a05ecaa4ff3e11115"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
