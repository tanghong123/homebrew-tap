class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.127.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "77efe560b40b1e70062c861a90ff404a83caec61e0c9a7104d6ca336d98cda05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e5db39751deb91f6591e2489d34aa5db2c915033d644b5905a02bb42e1633547"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e5b2964a09f989ab8f2dba83fb4872e7feb126dd9e1c1992503a5175d1c11345"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6d5774efba21eec1f227650210b3425288a52bff72f60c5599c003881fc32c43"
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
