class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.217.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1fce4726aa81e812351ce589b301102fb8e6baf3a2523c79e9074686596336a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8cb4ecd203077bbfcb5daea01a441040e37a28adcb7def16c7681b354e6c6b21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c86a4b81d6726c762009ecd8a0d30e80864ebadb09f0a68bab87af0fc2704ceb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.217.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "22cb19515c9ca73195dbaa2939e2112e4bd9bb21b893f3a40d3084f0ce75c5e8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
