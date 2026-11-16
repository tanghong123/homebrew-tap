class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.527.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f31b203b9286e15e5a8820130edc64bfc2a1382d89477dc0d1e3909a06ae2eaa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "83fffb0220f19f927589e7a2940fe837fc55c099ef0e9c9b78a1c24fb4d65ff0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6ec1844a028098766c982ce60b80095db6561a81230718350adffe401e78f446"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7042d7bb7d47f1508e8e8888dc77acdbee42f7f391c2364e4c3bb1fa0faaac7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
