class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.410.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2d92ac43852329c89a19b33b4b5ba3cdee4b12f93881c8ad362554846580af04"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a06d4eecf81321c97010d2ede6b1e5d9b8d5c8538926765aaddceba0208379b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe23b6965110d2fda62e15640877ff3f64dff2dd3881b7ecddf9cd28587d8b07"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8154200ce6a4d0207412f7d5e9f90311ea5e5567e73af7711ae704ff2d86d3cd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
