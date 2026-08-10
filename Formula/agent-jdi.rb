class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.60.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "447e8c0db8a0ba5f663c784748743ee8634da6da87f2f0d44a170da8b226cd55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "166626f5affc575eec1f2d4408f4beafc292fbcea7113b9f4d9f557da8ba8086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca5d07b60cb65b40bb5a7bb15ebabfd90a44257a896877378a6b1963c8622ee0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.60.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0af38dbc5d32878f4d87262625ce36a9ee3d7c8a1a1152eb13bbe28f9f7e6b1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
