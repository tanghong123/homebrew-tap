class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.510.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e8ead44aa0df1315763147c6d418a93501adf4ebbd20eaa7b1604bb9c61fe06f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "836bcb1167f20a3a5052a9b18dcc09c8f3424f34f374963dee687fe0bc72e748"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b9cb5b8d9c70d8ccb9803291a9716969e54037a7df430b80694e68b9d3c29989"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81b422854ca17ba76e46262d5a551e4614b6a628d11f1f814d7963db613ffaf3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
