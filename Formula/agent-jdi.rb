class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.4/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c1182e0235073faf7d221e7b7acaf38ad7c26a9686758f5171dcad96dadc20da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.4/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2a1ccc0476ded53024245e481d06261e7236c47528ec116a14fb53099d065ff9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.4/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc08e8f69339ab88dba541b956fdbb0434d750a27bef69333366160f1b76c028"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.4/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6bceecee311d641c226442d9584a58cb45f2697e100fb16d5e95d5fb79a9157c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
