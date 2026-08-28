class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.113.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a5ddc74d51833ad3220e2dc23efe292c1439c0781e5594afe0c7f169e3b053bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "858e53653069ad2652aae2f189be3fe3b1e9b2c2506f75fc403545dde23051ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d9a1dc913ff763e2ef62e9e5a441fa9583f1c111601b0295d982747db76b123"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f5fc6951ae13f69d8b4d0d9d372a7174b837c8b2d40ac7206f5193110f0e228"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
