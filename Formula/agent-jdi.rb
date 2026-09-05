class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.193.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9bbefa70d7478e361016941daeac34fd5d11561b499dc7989560218d84659d16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a279d9d494073d33c99449d67ab2d32547d2f6eca47fd84288c00f969478dc56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b59df115e36cd390dd228e6ba8f4f6c77cf55825a9b09b0ecd19cced70f5cb4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.193.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6be8a8d29457cdac162644af1ec79c66fd23207bae3475982f638c65af04171b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
