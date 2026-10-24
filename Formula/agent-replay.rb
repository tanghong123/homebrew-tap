class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.412.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "027591e2d9d76b02a7ab6ef72043dec3644aba5be313758e798c49efd18b9647"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c1d8df235d080298990bc0ea4a338a7c67728b5ef5a4c54f7a6d68273db2202e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee940f88fa73731feb6a955246de2dee70f06bcaef8b449a196cefba367aa329"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.412.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b17d0e380ed601b181778170c4749023a60d135102fe9e273cefac79f00f59d"
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
