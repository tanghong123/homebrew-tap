class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.29.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.29.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f33689636f7c1ff6e1e9a677fb30d0beeecd867738570cf5690319a693ec464b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.29.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "eab7ea9448f3549b781f2d42f53cc3ba9e6fa0562afddd0d95022b8e09907a31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.29.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c08dd5dd87088cd07d8ef59eeef62efdcf567468db225d6e4b685eb0900b73d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.29.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1d95106f6008089fac23a0df2e5197e1199c33c5e47664b0d2f76d5adefb435"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
