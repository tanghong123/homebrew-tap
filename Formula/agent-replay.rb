class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.166.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "34aa49a197314351a18d9b9a37a758ed8d486acf94942c6549a4da4bdda417ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "54ec5699547226698b0c703d8154386713c0a358ccafd8922c8346c00a9ee398"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bcfe544faa0ea6a137e5af1059aa0d2cf4ddf082faa20054e2473f7c76846d7c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.166.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55839edd727102c305d19504450936c692e345126dfd60719faea9ba4fe06326"
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
