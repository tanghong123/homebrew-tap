class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.342.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "997f88578014eac3c31397339f4835c60c7fb9943082537219a248a3af480fdc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cf6f1d497b1f0f10df7420418b9c5feec78a57a7f32710da94e1b3a9c1107c90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f89d37343c34c6dd9bedd60a9a59c9cec82b3ab1a87de9f9430361a1a9926c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "59912f704fa4ce20c84ab198ab6c82be342b9786fdd5e27a961cea5ec604e0ea"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
