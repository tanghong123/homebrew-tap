class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9d1dc00081c4972dcf80c5098f7df92309625ab0a9f76a9b1d4b7eaa7b3710ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9b4bd188fdb21321c8a615cfa16594b74e9363fc0c8b8d23098cbd120328b0c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84f71918c5391b7a56e7f796e35819e58f7f7552a388501d505c87a3cb2191b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6e6745e300595f2652cf41f7bacebe2338d4396c83021bbfc4653e8282ba555"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
