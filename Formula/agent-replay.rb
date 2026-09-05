class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.207.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "af152c12b9205d029f0d654bf1b870767f8aae7f1f64875db4c32ed0b8fa3b5d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ac6295dbde1593e62bd44cd545aa3a80be6c4904bb2a90fb7257835ef22d0a04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "94bbf9e5fae4df38f1f264249d25579dcd040e0346814ea982f7edd4493d883f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.207.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "51637593c6c934c74840b18dc340d137f67eea9830157a0a2916d4ea9f28de9b"
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
