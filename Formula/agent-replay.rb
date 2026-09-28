class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.322.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "39e65f09b968200aaaa30f061fa46c8ecd02ec704322f5ae27846c281e87a720"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2401457a67e91f29fbb066c8fc368d257bfec231a1752ac1dc9aea1e3948bdd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df033d796a0db0c79d84a48945de2f52606e7b43558c69a987f778fa9e39fb28"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90cf5ad79540ba544a0d62c37d2e5692de568b743da143e5d979dd06aa61ae33"
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
