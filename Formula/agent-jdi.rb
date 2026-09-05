class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.186.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ace991fbb73a1a2203309facf1eb672293e037de9e173799c63ccadcbe358651"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4c16a2c24370dd664233d9283482967db9204e1286eb137105f3e0a3f78ef6f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a1ebacc2ac00d995a1c3fdc81131ca890dae4a738770685e66128da76ebf813"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.186.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dfea75df12e2f8113c01797e8ea9963c710206781e13b9ff7a203183877cc80c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
