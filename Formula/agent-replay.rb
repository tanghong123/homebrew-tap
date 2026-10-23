class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.411.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8bfc78c44ed05733f6d7486ddf9970a0725e81c925466331b3b516fb2725dc26"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "89d42e47476c6433d836fa787ee9dbfee2e00199368f80ee3385e9a65bd19ee9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c70d12007293c3c80175a4d325a2904455f9dc40fc3327c1a9d168e1a106433"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.411.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "605fc03ca8cbd0be34144bb661eca59a2bf7121cd5364dfa8e51b572ffee7a7a"
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
