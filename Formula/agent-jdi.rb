class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.380.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "560602bd7af2719883f8d6dffc6d130a796833bb5737abf31147d442a2c9e6e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8dfd3b50bd6778925af037488a255efb2a19985ce911c425a9e6e76eb36b4fa2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8beb019498dba513fa5c8aba82f018399c92a8d952985f9d6d0477cd17d882d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.380.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcf49c78769a835e1077882171481dd5d1b4206389f0c3818aabd5c736812509"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
