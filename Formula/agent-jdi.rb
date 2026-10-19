class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.391.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "4f2e67e12343ccf53c068be7701a07d02faa9c7445b91316a373791fa6849158"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "04aa6ca71419c13d375943588ab514fc3560d2bfb4c01d78e62d2bc4d03f6e2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a4ec1270ba52e57ad0020333bf4eed7405393ebda082f46889cefafa5457b3b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4cd0df49a614b3f64c328c2958c17e508085e4deea9e5847f6410631f08ab922"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
