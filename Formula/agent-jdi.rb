class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "10037384239477bfe8c371058b292c150038011712b0717efeb607e753c989af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "75dfe0d0955b5e8ad13cdd432c3d4ae3e3e4261ddceb0a408d8baf2c21f329d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "36ac63238c18580668e6e6d8de3c9e0ffd57d3dd7673641f47f3415939a801ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.3/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc3ab416c03c521d9b41531b715c03700f518d67775bab73bc0f391b510fa0b4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
