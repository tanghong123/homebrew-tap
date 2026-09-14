class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.269.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "98a6ab57da8be5c13b20eb88f6d62709206c3b41b425956ec637e8205e927d8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c67b3d01bb3bd2ea2290d3acc7620e68986a7dc88351e21574cf8009981862e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "99218be5c40614ac999fe8912abfe2f12078aa8822d487dee7846b03bbcc43b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.269.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2ec12d4f06cb2385657f94afcf5bad4c678b94b825f7cef809dccc9106d63663"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
