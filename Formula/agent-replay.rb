class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.253.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "17d3864d1bbec95ddd2119045cb6a4d82a636bd86dc0c66d6405c4b0ac93c9ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "81b0515c02d02fecffac0514f3d6e8a43f58389a97a38341f7fab95de0e37035"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e30be2987eb1d4f5ea036f5acbce880f34044fee4531b9a317ce34096c1b7ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.253.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a638797baceddf8a6d80dd28349ff681c7caae417dee872d0d5fc586cc9da27a"
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
