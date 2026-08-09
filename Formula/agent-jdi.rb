class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0005d90b212bff93f3f4aecdf3d4e07c6787b8761f1cf547174d68c8fef8cea2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7569758f421a981fec84ed202e7422f4bc6fc9e603c8949546a77f48d44a0df9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4324dd12c0bfb66c3e3ac86c572a162e46f4e890c568f4fcbe19e9fc4de2b3df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43262e0f9b3d760b2d6e4ef2f13bf5447cf97355f0344be8b2adb2a5b03eb382"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
