class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "80e6bb338c0dfc332b18103d3b409a855d46c009c86de04e47bcff54298fc5f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5850b5654ecdc665add904d02e311c929c584a51032dddad0e1198976e691996"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09a30af0fabdb9ab0c6c19f3c97b9ba10b0e8841b357842af79622848b2753ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1ac030692f9ee21a89d956a6ff11370d4c6f046f131f1b18522150482fc913b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
