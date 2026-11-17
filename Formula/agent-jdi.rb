class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.529.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6f48e9ba977dd4130d4e9794c8fc1ca481adb7f66e6c8dbbb485a59a85957fb0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "18dab8247ea5d05400db627616ec25236ff1f52eb346ae8d78ebe96041e9b79f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c1e93c25f625e244628814986149176b989bc138f1ab5b2070c098bccea7b689"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.529.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccedd7a47570a972aca30cf7cf99468f88d36a47be8d04c027a94c1a1f00299a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
