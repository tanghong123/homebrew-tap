class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.224.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e549b8edd51aaa764ef98a2d6608c5cb5806a2c092a3d97d976c5feb6a48142a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1469716b31bdddf20fc6eddabd8969942ddf880acc3bbd6deff398f07d611ea0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "968b492ddf7fa0833877053699202c5a349b299f094df160ee470611f059b339"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "280153c18d4237071dbea4ddc9f36b8b771196c1327b327f1c5ad29463b4f9ea"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
