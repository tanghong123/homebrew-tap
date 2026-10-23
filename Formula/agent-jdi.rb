class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.411.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6202ec735f5a84902d5db263a487fa797724e4018a9590a0c62f2715e3473799"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a308a395b431bd603a303dabcfadf2a034067bf4eec6a1458d7a934a720ac455"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "01e078f4f2fe5f402e4cff0b9481fff94237641181e8135d0c03e71372d4692b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "51625001b964f0ec6488bbe378bda47a8f251ef64840be9d2d40147e1adeaaf9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
