class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.136.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0b01239cf5e7f89bf256150a6ffac437e0ef4bd9bda8ba2e1c6b1dc7d72b2070"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c5a4f324b9e07f1246bd7a5682f09ebe7a0b92e711f2deea3811a7c6791cbfb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d44bcb018fa4fe08c4dea4c3d74023e2eb283977ecd3265ee869a106341f55e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50fb8d600bddd297b18b4250313912bca827e89fdc6241837cf972150dd11675"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
