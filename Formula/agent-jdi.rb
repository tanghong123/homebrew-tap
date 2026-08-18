class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.93.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a6290ea595acf8ee1334518e2a9f6985a47d7b2ee4e8af6d1f55fc7d66dc72a1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6f60323416a14aa531a951da66c54f98c6a3119818863e57e6b0292a6f64da3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06a3ad44e0091e589f5b95b133617c9b51defaab27078228c04fd217f2a79c6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.93.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c296d338fd0caf8f357a2b7b00b4d40f4eb19d2fa3bff9c4e082e50a4eff7d3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
