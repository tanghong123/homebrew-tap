class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.171.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a23fe570e965571f6666f04350365e8fd16e4fa23aede44c94c73dc5fd0e371d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9a4b5d606548117098e03291ee3fc2d228c99b7c9490ac41d9273af8a4c5e3e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d34bb2259a46259030b25a5112344765ea871149a4028007c47b4a3069e50884"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc45d2945264c7bf9290989e367f36323e88e62a48d87b1c8698995cbab47823"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
