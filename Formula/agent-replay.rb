class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.445.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "869a14fdb80d8b99a01e368c4044362b67e763337087cbd6e79ed987b45edd42"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "43eec4bcc5287b8eac23a4a49d2ac06be6120cf9153f92b456b8b77c8ea39000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2331b70544fd40eb01e83ff06289b697d06710e78060c97b59a0fc6560369bc5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "adca2fe39307130ed6ab5a7f41d3152875356b924c2959c9baa974a0a58c0934"
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
