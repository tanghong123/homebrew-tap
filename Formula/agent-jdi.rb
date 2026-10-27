class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.433.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "773dfac87875bef6a0815ae7bbf247a1b2c2d3e47b01ded3e132a2729a26fd73"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "84d25febee62499dd2b873e3d5db351b3e3150080fc45389b4694d701635ee6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "645c1327b4b6e02458e942f7fdd79db869d743877891d367f7450088bc88b8ba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.433.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5c8bd2991812d2f1ecd4658055db637ca12521872a366d0126c0f220e1159d78"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
