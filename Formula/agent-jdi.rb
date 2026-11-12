class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.512.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "313a732cb390fb28cf77c8af01118a970651c9cee76cbd5be9c6b6bfb4aafa81"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5b6c18bf1e95665d5f2daccb9361769fcac7a4bcb80143361a572ae1296f8888"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd1cce8d1dacbc10812507b34af89e8ba1534480caa049d786d93a1875e82846"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c08b3d732aa6ee6fc8af7edec2cf950ce63e422c082dcef591452e7615ad1546"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
