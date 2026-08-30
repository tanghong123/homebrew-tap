class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.116.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "74dfad7d335b8b165014b2bc6680f171290c1e972da2aff7caad93ac4b9a9ac8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8d057a01502a4828b87478418a4f41f9e243d57d78cc2cd868e4409354f4ba90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ae74d47f4d50675d7cce096bebf0d683deb68641c2e9c436d802b3a1d8f6e70b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "403aeefad3ea97c967b1454715d7272b119ed011de99f6b49cfaa223d61d3810"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
