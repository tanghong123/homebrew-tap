class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.415.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1dc4bad4a486435a8ed16288ac54325160a9e358b80ef66c892c361405bfc9c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "338d8d6a686900a1928f9f9dc166aaf516219200ebc30be25273716f36836351"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5fb7af7e7608dd70cf1e4ff461c306a5e689bc2c97e6d6e3ba45e729c1a7f94d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "53ae62eba4c56b0a96a1a9b03c6f6e03183c7474e9084713e817df89265c2d45"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
