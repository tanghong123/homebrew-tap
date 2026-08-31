class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.122.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "14ba740e270a53d0bbe5385d669c4a343c957a122fb5f5b748f62049f4a31776"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0e598f36ecfaba12df00f78a93dcaf5eb7cfeda2afefc72794de3dac1ef479f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a0126cd4280afaaaa96d33fe1b5b3f61aab2bbecbe9c086d9ccc4c7d47742eb9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.122.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e4c8f9b5626031fa0a23a49940f64465a43ffdcc06c877be3adea3dab594003a"
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
