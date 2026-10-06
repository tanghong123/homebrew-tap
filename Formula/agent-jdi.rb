class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.353.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "90fd0eb1011c7f95b7413b3035396ab82613d8b903d0a4bca1cab12b31cec152"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b8c09f1edbd945c8fe6eb185c0c71b81cc150d7ed9ad60dd204d2c97c75359f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a2cfed1f2055936b061f785daac861101c7d5d961614c7664ebd5dd45b670c4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.353.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "34708906c52e48f10d73bc04169fac5f4eb10500eec62a310412bfbb97a43323"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
