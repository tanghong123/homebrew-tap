class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.451.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "68f59013ce0aad316226505c306fea8ccfeb8e0018be1831336eb1b061672b4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c5475548b92e974a948a37dd94799a2e297c43a9fe0eaac458c2fe8622e27914"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3fb11c219bd95c3e181c006a4373578900233adbd8661a9b6b0e10d1688547ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64fefba56498045d03c326b5866fb60b6dc4001860999f49bd2f301d1c3a32fe"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
