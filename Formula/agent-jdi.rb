class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "039854b59699557d75d5cf2093498b5dcb3f5c91b5ab946abce3dcf3f1cc7202"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a4e88b01917548c3e27274b164782080fdfd84e783cdb9657e40523636f2e712"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d65df74703270b3d057c75c8778784b23cd8b66583762aa873ef657a9928e8b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea8a5f50c41d8236c3b30c903803b0c87b4683ef276b40bd71136ed0125e7acd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
