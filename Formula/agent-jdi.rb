class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.37.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a75d86ed2c7b398fd84e0edc980891c75d3822b901ae7c55ddc04b127aa41beb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ec73389033473455ff615e55f19712142b0799dc1163fd9e885db1daf4f779ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e920b5b7f53f5ef6165bbe5b07691848dbe5f2e1513dd3e57b5edd06f298e841"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "525abe47d99a25067f75275de164d4a22d10cc98182859aba0e1a83119ebf659"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
