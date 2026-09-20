class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.291.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "720f83d2efa41f48da1d0483c7c42e652cf6a1b3fea0c840d50639b019499426"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9ae9c07335357986592598750e43473a07b61b0111b574ca82b7677d813f3dda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19f7475896b8ce878dabc3322212c5043a5b66cfe7db1f580fb9867ee12e077a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9811a154ee5932bc960ee3c24956f0e8f39e85eafbb8210c351542f006657652"
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
