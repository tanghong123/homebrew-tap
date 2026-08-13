class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5f890cd002647c8e1eaa0b3274f5c0850c1cabbf6ea3b3a2e7ba1bc09858282f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8c3986ecffb3c25c311a1e3380dce121a8c887d34b3aa48b4c84002a1edb79fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b7478bcf34af1f44f8e6a8620f69dea39dc60c07fff0288b9ff4f5eec2fc9f14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba1271f83ab4632a2a8fc7578d6fd1ccf753e571fd669c009b2fb457e8f12060"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
