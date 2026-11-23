class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.557.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "335779dcc50d683867fad5e789373a760231abb3aee487d74f7ec6eb1ef2b30c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "17878d215e6bde4983580bef3c55c0469d4a9e30b8bbcaf56759a5542f0b134e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7932458b1643ea0b735e938faab0a4569d534bf1eee48de11aee8f7a0456775"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5d04d1f094f89652e6490eef2de717c4ffd757ccfc7d82f9839c452f217b9f06"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
