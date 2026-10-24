class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.414.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "21b2c6ba365c3477bd815f059a2c1ad8a5b8f5b6a04c2e99035b92f64c0dbd6a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b363051eef040743825875559184644f75e42f466648fd633ffac218bd3bce3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "79c0b3fd63fee30f9970ed6113a0d980c46f8269cbc49dd88c426d313ecacca2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.414.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c133ef54eb57ac41bd2910683bc02d33f6ec4b0acac72f33f4c72da76c6e1c39"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
