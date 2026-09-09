class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.242.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2ed99ff563609b4686382ef8b3d961eda1c552f0d717f057d2ad0a37f4e49e0f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "11538554b01972f3b0935096e0e08443dc3394fa5a4501d6c6fa73dfc399cd7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46ef51fa08ab0978a0569dadc2b0276849736b65a90cd920b59bf5035eec3d26"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.242.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2349c0a17b817e8de3218365a1a56d95ed818c17dcdfdc4748e161e754149512"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
