class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.357.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d666b63da1cae1cb94b86e24070cba3a414d14daa9642edc4ac2d7c65495f0e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8817b0a168d40270a86cccf9fd8454cf314c1ea6e8ef0f762c538ed1fb33822c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9ae460157356bf30b5bd777f3e2d720874f53c70ce388d26c5c0a3561106b01b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.357.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d22693bec2effc33313357340783f84d686098f570b2618d96794ce966499db"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
