class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.45.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.45.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5cd055459643183d4ddc87a3127e2f84dfe30652890557d7473b2766a72e679f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.45.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "229038a418d7256262a326ea730677dcf503f91e6bcc998bd9208c0ef7f07098"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.45.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dcd57af26778a63aa4c79b89900f1acf26433cc4fad5557077df4edb27a77c48"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.45.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a992cad8e3c25336ed1c5087f7d4a5a8962b871df0bef104b24f75f6f5a3674"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
