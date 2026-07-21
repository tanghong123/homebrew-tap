class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.5.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.3/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ecc037b9b1f7aed770fb91e4543df3972ef9f1ab2cb09b0fb960e98d8604055d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.3/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b82aaa8ba8f161210d89eb551800b9d701566957cdc296d89a868679fedac3a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.3/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4fb6b27133ad4b83ec756e74d3d81b83aa45570eba37a19ac1ab90c448154db5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.3/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d54e1c5c5931b1fd72060368f204ed10c9dc7b9d707ad24e2866d3ed2fa0d649"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
