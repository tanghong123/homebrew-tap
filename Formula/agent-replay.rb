class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.139.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4767bd98f89ea8e1c29eaaea43be37ad3be4b65e530de25fe62c6723d1f50a0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e46405cca7ffb1d775980b6518d679323f4b47a688d970491bb7d47c2af5e96b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb52e8e96abdcc34d23e1d04ff5052d8e1d41d584dc5879632dc21661d3a38ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.139.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33eb67ba6ca5b8559ef2913992ac368f598e546abc105c6e77730589bb72425c"
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
