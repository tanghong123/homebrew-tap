class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.558.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "255dda1ea62eaea498a47e0e10fdb2e7688900264f7767b4a9371799a0c7a468"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b12f285a9e9ca434d71f4c77110e054c997df99b88bb18ca72633d8770a1e37a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "36b8d9d999940a4d8f8cb30ec6720d0c856f1e94b556e2acc469b2123f1193d7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d68b189b8dabed69b1f73befda2e83bd14bf6429845f762759baf24f3f984c91"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
