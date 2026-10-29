class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.446.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9b33142ca19561236ecd315e7b2fdff2843827701acb356d90f36d3fb82aa9b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6792fc2542f1373597c0e1b3cea5eb91fd45dcf24dd18671291f1c07a195a5f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "756540a6be1448422b1960519319b7b6541456f215509288458a5e9ecd4385f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.446.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ec7ba517a05f41e077c58299b6e42d4262648562dd724bb3f3a2518cc4105d4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
