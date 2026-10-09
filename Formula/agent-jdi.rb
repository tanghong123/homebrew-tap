class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.366.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b6363a8e374873f59f4f6ddc7afc15d21b8740d053eb54edd133cbc3cc76ad9b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c858b1ec24c97b5c4bd6d813b448be3bf71f14a6a42038591d44d1a259a49369"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26a35c300cbca63d42f1d2aaae468a3454b7d40919d464a6986cb486567a6d51"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.366.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "51447e9fc7d263a3ca03d7c3d73b74e8798ae84b3cafc3faf756e31b8615343e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
