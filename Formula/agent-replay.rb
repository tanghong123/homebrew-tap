class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.304.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f7b9b637ca7382cd39da3cc4bc19755799805bae74ddf87ced073ce3dccd563e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4a13851db42cc1838a054bab715c42af1430cf0bc99ebe337ea1b94194862b45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "63fd7d0aafbc71cfad0622098250e32488f6199a4b95274e2186f041ef7519d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "198ffd47fe14cba93ca692431cabe1a9f3078fc5c2f882373a778ad42085daa2"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
