class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.307.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fc7fad707ec5afc547931a418c0aa410b1a9b21263c718b8ae4df80fc37f77fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ae1165ce6323c39caef46c4715eeee4ec71e3265bc0f70dff768c957feec597d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f034e57b875473cb741d93a504db4c85a11130a54231217cae09e760158e8415"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.307.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6db8408871f88811bbd411d16197d24b428930842a3f72aa91ab86ad3b163545"
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
