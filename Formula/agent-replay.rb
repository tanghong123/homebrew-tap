class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.392.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f45ee300806a6cf0b4ec3d15f3978867808e6d493894366aebae38e00206aecb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b4414a2808fce9d3473730cbca899e2bd9abebe9dc513ab9095ac591d274c13e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "04d829d61726beac753c64ae56ef7fb3a9b9d0c9d59611c97da3efc894637c29"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94b3211703447f2762db757d10fc2539b002442ef7376764f34354858bf865f9"
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
