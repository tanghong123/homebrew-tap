class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.181.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "58c40ca29cb155469223df83acb2938c5f8e696034b1813e67859521a0523575"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8a4cc052164af9b005f69f69a54df7e4e3950f9d054625ce62cb948688a58793"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93c1bb0fd566132040f1db256865de86b6db54e2d1a4bf10cd690bf81b7955ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.181.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "471b600f66c10f5112df86a2e19d84ae3bb2ef16d9e409cc8303bca1a25b3aa9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
