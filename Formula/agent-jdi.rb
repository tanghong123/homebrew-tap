class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b17c71497eb8b10bf3a024b41227f1a939ca36bd4632a4045331dae43b14329f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5f6d4cf8f57d0dbf146c9c2de6dc8db659dc5d3d88c4e4255915d9f8f2f031b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a59b660b98f0cea992cd26931fcf007fdd629654805e3f09a50171382c8b521b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fba833af5bd221f1b6629c6d824a06106a654722c475a4f7c5c5a98bfe823fee"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
