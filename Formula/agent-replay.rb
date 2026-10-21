class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.400.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0f73b92d1f05e10a8d17b2aa397dee31b13b487522f70e5fa68b3bfc575ea6d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cc51bdc9af50784fc708449cc36988a8a011e8196865fee800a58c2afe69b45d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a5ddf7cc57387177ce24e5dcc70c82b60a77989a5120a3b337d7612389f24780"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.400.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "880cfbe6d5188a590c5af469ab9ddeacadfe78a9274f295f0ad26d3036396292"
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
