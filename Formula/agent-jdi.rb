class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.407.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e0b54dc0e5daf4cbadc60c857baa9bf4d3d224fb578e11e46a82ee32ad46db46"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "16f022c7fb0af2065965ba6bc4e0ce25c10288d8d52ad1d4f07c5742232cf53c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e014f32693e1baaba1821eeb8c9c4c7aa5a5b5b3eadca73e003401e78982babc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9c1b43ee091fb352235826b3b177b616177940e2325e9cf99fda223739d27b5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
