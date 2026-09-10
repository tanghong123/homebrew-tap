class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.247.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "30a7cf0a05c8b488246e3fad2ddcd73bac64bd04dd2d0baaa26d506b85903e2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ba0f24d092c601d0cf32f352ac2c2a5963f32579ee78e7c31ef004a526afa67b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "87dcc8f225bc1514ab5e879cc6769e2e1b6117ffbf0db0530a67054847182952"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6922caf742ce12d4d7a1c21024e42e54e7bccc90010aad58b91c290f86a5ef2b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
